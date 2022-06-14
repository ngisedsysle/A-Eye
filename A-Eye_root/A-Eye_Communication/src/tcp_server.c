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

#include "tcp_server.h"

#define IMG_LENGTH 921656 /*!<Lenght of a 640*480 bmp image*/
#define PORT 64000 /*! <Chosen port for the application*/
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
    socket_thr_s *soc = arg;
    main_s->ack = malloc(100 * sizeof(char));
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
    socket_thr_s *soc = arg;
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
            printf("Length : %08x\n", (unsigned int) imgTM[1] | (unsigned int) imgTM[2] << 8 | (unsigned int) imgTM[3] << 16 | (unsigned int) imgTM[4] << 24);
            if (send(soc->sock, imgTM, main_s->img_s->length + 5, 0) < 0)
            {
                printf("Send failed\n");
                return NULL;
            }
            main_s->img_s->capture_f = false;
            free(imgTM);
        }
    }
    close(main_s->fifo);
}

void *thread_pred(void *arg)
{
    int pred; 
    
    while(1)
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
            system("bash ../demo.sh");
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

int main()
{
    if ((main_s = calloc(1,sizeof(mainStruct))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->img_s = calloc(1,sizeof(img))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->cmd_struct = calloc(1,sizeof(cmd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->chg_mode_struct = calloc(1,sizeof(chg_mode))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->weight_struct = calloc(1,sizeof(weight_upd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->buf_f_struct = calloc(1,sizeof(circular_buf_t) + sizeof(bool))) == NULL)
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
    if ((soc = malloc(sizeof(socket_thr_s))) == NULL)
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

    //pipe creation
    soc->sock = sock;
    soc->socket_desc = socket_desc;
    pthread_create(&thr_rcv_id, NULL, &thread_rcv, soc);
    pthread_create(&thr_send_id, NULL, &thread_send, soc);
    pthread_create(&thr_pred, NULL, &thread_pred, NULL);
    pthread_join(thr_rcv_id, NULL);
    pthread_join(thr_send_id, NULL);
    pthread_join(thr_pred, NULL);
    printf("end of main\n");
    return 0;
}
