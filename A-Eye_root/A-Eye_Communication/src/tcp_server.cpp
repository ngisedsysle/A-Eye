/**
 * @file tcp_server.c
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief This file implements a tcp server on port 64000 with a thread for sending and a thread for receiving
 * @version 0.1
 * @date 2022-05-25
 *
 * @copyright Copyright (c) 2022
 *
 */
#include <iostream>
#include <cstdlib>
#include <string>
#include <thread> // For sleep
#include <atomic>
#include <chrono>
#include <cstring>
#include "mqtt/async_client.h"
#include "Server/tcp_server.h"

#define COM_MODE 0 // 0 for mqtt, 1 for fifo pipe

extern "C"
{
#define IMG_LENGTH 921656      /*!<Lenght of a 640*480 bmp image*/
#define PORT 64000             /*! <Chosen port for the application*/
    struct mainStruct *main_s; /*! <reference to struct_allocation.h*/

    short SocketCreate(void)
    {
        short hSocket;
        printf("Create the socket\n");
        hSocket = socket(AF_INET, SOCK_STREAM, 0);
        return hSocket;
    }

    void *thread_rcv(void *arg)
    {
        socket_thr_s *soc = (socket_thr_s *)arg;
        main_s->ack = (char *)malloc(100 * sizeof(char));
        char client_message[200] = {0};
        while (1)
        {
            memset(client_message, 0, sizeof(client_message));
            // Receive a reply from the client
            if (recv(soc->sock, client_message, 200, 0) < 0)
            {
                printf("recv failed\n");
            }
            else
            {
                printf("Client reply : %s\n", client_message);

                // if we receieve stop message, we free all buffer and close the connection
                if (strstr(client_message, "STOP") != 0)
                {
                    // freeing memory space
                    circular_buf_free(main_s->buf_f_struct->cbuf);
                    free(main_s->cmd_struct);
                    free(main_s->buf_f_struct);
                    free(main_s->weight_struct);
                    free(main_s->chg_mode_struct);
                    free(main_s);
                    // send end of connection and close socket
                    send(soc->sock, client_message, strlen(client_message), 0);
                    close(soc->socket_desc);
                    return NULL;
                }
                else
                {
                    // if no code op, no need to call interpreteur
                    if (decodeTC(main_s, client_message) == 0)
                        printf("Not a TC\n");
                    if (main_s->start_f == false)
                    {
                        main_s->ack = interpreteur(main_s);
                    }
                }
            }
        }
    }

    void *thread_send(void *arg)
    {
        printf("Pipe opened\n");
        socket_thr_s *soc = (socket_thr_s *)arg;
        while (1)
        {
            // if new data : send new data
            if (main_s->buf_f_struct->new_data_f == true)
            {
                // Send some data
                printf("Will be send : \n");
                printf("Code op : %d  ||  ", main_s->ack[0]);
                printf("Length : %d  ||  ", main_s->ack[4]);
                printf("Message : ");
                for (int i = 5; i < main_s->ack[4] + 5; i++)
                    printf("%c", main_s->ack[i]);
                printf("\n\n");
                main_s->buf_f_struct->new_data_f = false;
                if (send(soc->sock, main_s->ack, main_s->ack[4] + 5, 0) < 0)
                {
                    printf("Send failed\n");
                    return NULL;
                }
            }
            // if new IMG to send : send the TM
            if (main_s->img_s->img_f == true)
            {
                main_s->img_s->length = IMG_LENGTH;
                char *imgTM = imgEncodedTM(main_s->img_s->length);
                // Send some data
                printf("Sending image from process IA ... \n");
                if (send(soc->sock, imgTM, main_s->img_s->length + 5, 0) < 0)
                {
                    printf("Send failed\n");
                    return NULL;
                }
                main_s->img_s->img_f = false;
                free(imgTM);
            }
            if (main_s->img_s->capture_f == true)
            {
                char *imgTM = captureManuelle(main_s->img_s->length);
                // Send some data
                printf("Sending image from manual capture ...\n");
                printf("Code op : %d  ||  ", imgTM[0]);
                printf("Length : %08x\n", (unsigned int)imgTM[1] | (unsigned int)imgTM[2] << 8 | (unsigned int)imgTM[3] << 16 | (unsigned int)imgTM[4] << 24);
                if (send(soc->sock, imgTM, main_s->img_s->length + 5, 0) < 0)
                {
                    printf("Send failed\n");
                    return NULL;
                }
                main_s->img_s->capture_f = false;
                free(imgTM);
            }
            usleep(1000);
        }
        close(main_s->fifo);
    }

    void *thread_pred(void *arg)
    {
        int pred;

        while (1)
        {
            if ((main_s->fifo = open("../IAtoINT", O_RDONLY)) == -1)
            {
                printf("erreur d'ouverture du pipe\n");
                return NULL;
            }
            if (read(main_s->fifo, &pred, sizeof(pred)) == -1)
            {
                printf("erreur de lecture du pipe\n");
                return NULL;
            }
            if (pred == 0)
            {
                main_s->img_s->img_f = true;
            }
            else
            {
                main_s->img_s->img_f = false;
            }
            if (main_s->chg_mode_struct->mode == 0)
            {
                system("bash ../../demo.sh");
            }
            close(main_s->fifo);
        }
    }

    /**
     * @brief Bind an existing socket to a port and accepting any incoming addr
     *
     * @param hSocket ref to the socket
     * @return int
     */
    int BindCreatedSocket(int hSocket)
    {
        int iRetval = -1;
        int ClientPort = PORT;
        struct sockaddr_in remote = {0};
        /* Internet address family */
        remote.sin_family = AF_INET;
        /* Any incoming interface */
        remote.sin_addr.s_addr = htonl(INADDR_ANY);
        remote.sin_port = htons(ClientPort); /* Local port */
        iRetval = bind(hSocket, (struct sockaddr *)&remote, sizeof(remote));
        return iRetval;
    }
}

extern "C++"
{
    using namespace std;

    const string DFLT_SERVER_ADDRESS{"tcp://localhost:1883"};

    const string TOPIC{"prediction"};
    const int QOS = 1;
    const int N_RETRY_ATTEMPTS = 5;

    int prediction = 1;
    string rcv_msg;
    string topic;
    const auto TIMEOUT = std::chrono::seconds(10);

    class action_listener : public virtual mqtt::iaction_listener
    {
        std::string name_;

        void on_failure(const mqtt::token &tok) override
        {
            std::cout << name_ << " failure";
            if (tok.get_message_id() != 0)
                std::cout << " for token: [" << tok.get_message_id() << "]" << std::endl;
            std::cout << std::endl;
        }

        void on_success(const mqtt::token &tok) override
        {
            cout << "Subscribed to topic : " << TOPIC << endl;
        }

    public:
        action_listener(const std::string &name) : name_(name) {}
    };

    class callback : public virtual mqtt::callback,
                     public virtual mqtt::iaction_listener
    {
        // Counter for the number of connection retries
        int nretry_;
        // The MQTT client
        mqtt::async_client &cli_;
        // Options to use if we need to reconnect
        mqtt::connect_options &connOpts_;
        // An action listener to display the result of actions.
        action_listener subListener_;

        // This deomonstrates manually reconnecting to the broker by calling
        // connect() again. This is a possibility for an application that keeps
        // a copy of it's original connect_options, or if the app wants to
        // reconnect with different options.
        // Another way this can be done manually, if using the same options, is
        // to just call the async_client::reconnect() method.
        void reconnect()
        {
            std::this_thread::sleep_for(std::chrono::milliseconds(2500));
            try
            {
                cli_.connect(connOpts_, nullptr, *this);
            }
            catch (const mqtt::exception &exc)
            {
                std::cerr << "Error: " << exc.what() << std::endl;
                exit(1);
            }
        }

        // Re-connection failure
        void on_failure(const mqtt::token &tok) override
        {
            std::cout << "Connection attempt failed" << std::endl;
            if (++nretry_ > N_RETRY_ATTEMPTS)
                exit(1);
            reconnect();
        }

        // (Re)connection success
        // Either this or connected() can be used for callbacks.
        void on_success(const mqtt::token &tok) override {}

        // (Re)connection success
        void connected(const std::string &cause) override
        {
            cli_.subscribe(TOPIC, QOS, nullptr, subListener_);
        }

        // Callback for when the connection is lost.
        // This will initiate the attempt to manually reconnect.
        void connection_lost(const std::string &cause) override
        {
            std::cout << "\nConnection lost" << std::endl;
            if (!cause.empty())
                std::cout << "\tcause: " << cause << std::endl;

            std::cout << "Reconnecting..." << std::endl;
            nretry_ = 0;
            reconnect();
        }

        // Callback for when a message arrives.
        void message_arrived(mqtt::const_message_ptr msg) override
        {
            topic = msg->get_topic();
            rcv_msg = msg->to_string();
            if (topic.compare("prediction") == 0)
            {
                cout << msg->to_string() << endl;
                prediction = stoi(msg->to_string());
                cout << prediction << endl;
                if (prediction == 0)
                {
                    main_s->img_s->img_f = true;
                }
                else
                {
                    main_s->img_s->img_f = false;
                }
                if (main_s->chg_mode_struct->mode == 0)
                {
                    system("bash ../../demo.sh");
                }
            }
        }

        void delivery_complete(mqtt::delivery_token_ptr token) override {}

    public:
        callback(mqtt::async_client &cli, mqtt::connect_options &connOpts)
            : nretry_(0), cli_(cli), connOpts_(connOpts), subListener_("Subscription") {}
    };

    void subscribe(string address)
    {
        mqtt::connect_options connOpts;
        connOpts.set_clean_session(true);
        mqtt::async_client cli(address, "");
        // Install the callback(s) before connecting.
        callback cb(cli, connOpts);
        cli.set_callback(cb);

        // Start the connection.
        // When completed, the callback will subscribe to topic.

        try
        {
            cli.connect(connOpts, nullptr, cb);
        }
        catch (const mqtt::exception &exc)
        {
            std::cerr << "\nERROR: Unable to connect to MQTT server: '"
                      << DFLT_SERVER_ADDRESS << "'" << exc << std::endl;
        }

        while (1)
        {
        }
        // Disconnect
        try
        {
            cli.disconnect()->wait();
        }
        catch (const mqtt::exception &exc)
        {
            std::cerr << exc << std::endl;
        }
    }
}

int main()
{
    if ((main_s = (mainStruct *)calloc(1, sizeof(mainStruct))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->img_s = (img *)calloc(1, sizeof(img))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->cmd_struct = (cmd *)calloc(1, sizeof(cmd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->chg_mode_struct = (chg_mode *)calloc(1, sizeof(chg_mode))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->weight_struct = (weight_upd *)calloc(1, sizeof(weight_upd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->buf_f_struct = (buf_f *)calloc(1, sizeof(circular_buf_t) + sizeof(bool))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }

    int socket_desc, sock, clientLen, read_size;
    struct sockaddr_in server, client;
    pthread_t thr_rcv_id, thr_send_id;
    pthread_t thr_pred;

    // Create socket
    socket_thr_s *soc;
    if ((soc = (socket_thr_s *)malloc(sizeof(socket_thr_s))) == NULL)
    {
        printf("erreur allocation memoire\n");
        return -1;
    }
    socket_desc = SocketCreate();
    if (socket_desc == -1)
    {
        printf("Could not create socket\n");
        return -1;
    }
    printf("Socket created\n");
    // Bind
    if (BindCreatedSocket(socket_desc) < 0)
    {
        // print the error message
        perror("bind failed");
        return -1;
    }
    printf("bind done\n");
    // Listen
    listen(socket_desc, 3);
    printf("Waiting for incoming connections...\n");
    clientLen = sizeof(struct sockaddr_in);
    // accept connection from an incoming client
    sock = accept(socket_desc, (struct sockaddr *)&client, (socklen_t *)&clientLen);
    if (sock < 0)
    {
        perror("accept failed");
        return -1;
    }
    printf("Connection accepted\n");

    mqtt::connect_options connOpts;
    connOpts.set_clean_session(true);
    mqtt::async_client cli(DFLT_SERVER_ADDRESS, "");
    // Install the callback(s) before connecting.
    callback cb(cli, connOpts);
    cli.set_callback(cb);
    // Start the connection.
    // When completed, the callback will subscribe to topic.
    try
    {
        cli.connect(connOpts, nullptr, cb);
        cout << "Connected" << endl;
    }
    catch (const mqtt::exception &exc)
    {
        std::cerr << "\nERROR: Unable to connect to MQTT server: '"
                  << DFLT_SERVER_ADDRESS << "'" << exc << std::endl;
    }
    // pipe creation
    soc->sock = sock;
    soc->socket_desc = socket_desc;
    pthread_create(&thr_rcv_id, NULL, &thread_rcv, soc);
    pthread_create(&thr_send_id, NULL, &thread_send, soc);
    if (COM_MODE == 0)
    {
    }
    else
    {
        pthread_create(&thr_pred, NULL, &thread_pred, NULL);
    }
    pthread_join(thr_rcv_id, NULL);
    pthread_join(thr_send_id, NULL);
    if (COM_MODE == 0)
    {
    }
    else
    {
        pthread_join(thr_pred, NULL);
    }
    // Disconnect
    try
    {
        cli.disconnect()->wait();
    }
    catch (const mqtt::exception &exc)
    {
        std::cerr << exc << std::endl;
    }
    printf("end of main\n");
    return 0;
}
