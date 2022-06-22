/**
 * @file AI.c
 * @author Guilhem ROLLAND (guilhem.rolland@elsys-design.com)
 * @brief This code implements a CNN from scratch in C
 * @version 0.1
 * @date 2022-05-31
 *
 * @copyright Copyright (c) 2022
 *
 */

#include <stdio.h>
#include <signal.h>
#include <sys/stat.h>
#include <dirent.h>
#include <math.h>
#include <time.h>
#include <pthread.h>
#include <fcntl.h>
#include <sys/wait.h>
#include <sys/time.h>
#include "json/json.hpp"
#include "preprocess/preprocess.hpp"
#include <iostream>
#include <cstdlib>
#include <string>
#include <cstring>
#include <cctype>
#include <thread>
#include <chrono>
#include <unistd.h>
#include <mqtt/async_client.h>

extern "C"
{
#define NBROFTHREAD 4         /*! Tell the compilator how many thread can be used*/
#define USEDEBUGPARAM 1       /*!<1 default value of params, 0 ask user the value*/
#define IMPORTARCHFROMJSON 1  /*!<1 if you want to import your arch from a json file, 0 if you want to use preloaded architectures*/
#define IMPORTPARAMFROMJSON 1 /*!<1 if you want to import your weights from a json file, 0 if xavier initialisation*/
#define LOADDATASET 1         /*!<0 to disable loading of the dataset (time consuming)*/
#define TESTONONE 1           /*!<1 to use params ideal for one image, else 0*/
#define FORWARDONLY 1         /*!<1 to disable backprop, else 0*/
#define WAITFORSIGNAL 1       /*!<1 to wait for SIGUSR1, 2 to wait on mqtt, else 0*/
#define INFERENCE 1           /*!<1 if you want to work in inference mode, 0 if you want training*/
#define SAVEVALUES 0          /*!<1 to save every value of the process (used for debug with python), else 0*/
#define DISPLAYTIME 0         /*!<1 to display time in each AI functions (homemade profiling), else 0*/
#define COM_MODE 0            /*!<0 for mqtt communication, 1 for fifo pipe*/
#define WIDTH 240             /*!<width of the image (==length)*/
#define COLORS 3              /*!<number of color rgb*/
#define MAXLAYER 20           /*!<max number of layer*/
    char weights_file[] = "../weights_airbus_240_90.json";

    typedef struct THREADPARAM_S
    {
        int begin;
        int end;
        int idxLayer;
        int dc;
        char *layerWeights;
        char *layerBias;
    } THREADPARAM_S;

    int rows = 0;
    // LOADING DATA
    int loadTrain(int ct, double validRatio, int sh, float imgScale, float imgBias);
    int loadTest(int ct, int sh, int rc, float imgScale, float imgBias);
    // INIT-NET
    void initNet(int t, mqtt::topic top);
    void initArch(char *str, int x);
    // NEURAL-NET
    int isDigits(int init);
    void randomizeTrainSet();
    void randomizeValidSet();
    void dataAugment(int img, int r, float sc, float dx, float dy, int p, int hiRes, int loRes, int t);
    void *runBackProp(void *arg);
    void *runConvEngine(void *arg);
    void *runFullyLoad(void *arg);
    int backProp(int x, float *ent, int ep);
    int forwardProp(int x, int dp, int train, int lay);
    float ReLU(float x);
    float TanH(float x);
    void fully_connected_process(int idxLayer, int dp);
    void convolution_process(int idxLayer, int dp);
    void pooling_process(int layer, int dp);
}
extern "C++"
{
    using namespace std;
    const string DFLT_SERVER_ADDRESS{"tcp://localhost:1883"};
    const string TOPIC{"prediction"};
    const int QOS = 1;
    void runForwardProp(mqtt::topic top);
    mqtt::topic topic_create(string address)
    {
        mqtt::async_client cli(address, "");
        try
        {
            cli.connect()->wait();
            mqtt::topic top(cli, TOPIC, QOS);
            mqtt::token_ptr tok;
            cout << "Topic created" << endl;
            return top;
        }
        catch (const mqtt::exception &exc)
        {
            cerr << exc << endl;
            exit(-1);
        }
    }
    void publish(string message, string address, mqtt::topic top)
    {
        try
        {
            mqtt::async_client cli(address, "");

            cli.connect()->wait();
            mqtt::topic top_(cli, TOPIC, QOS);
            cout << "Topic created" << endl;
            mqtt::token_ptr tok;
            char *msg_char = &*message.begin();
            tok = top_.publish(msg_char);
            tok->wait(); // Just wait for the last one to complete.
            // Disconnect
        }
        catch (const mqtt::exception &exc)
        {
            cerr << exc << endl;
        }
    }
}

extern "C"
{ // TRAINING AND VALIDATION DATA
    float (*trainImages)[WIDTH * WIDTH * COLORS] = 0;
    float (*trainImages2)[WIDTH * WIDTH * COLORS / 2 / 2] = 0;
    int *trainDigits = 0;
    int trainSizeI = 0, extraTrainSizeI = 1000;
    int trainColumns = 0, trainSizeE = 0;
    int *trainSet = 0;
    int trainSetSize = 0;
    int *validSet = 0;
    int validSetSize = 0;
    float *ents = 0, *ents2 = 0;
    float *accs = 0, *accs2 = 0;
    // TEST DATA
    float (*testImages)[WIDTH * WIDTH * COLORS] = 0;
    float (*testImages2)[WIDTH * WIDTH * COLORS / 2 / 2] = 0;
    int *testDigits;
    int testSizeI = 0;
    int testColumns = 0;

    // NETWORK VARIABLES
    int inited = -1;
    int activation = 1; // 0=Identity, 1=ReLU, 2=TanH
    const int randomizeDescent = 1;
    float learn = .0001;
    int DOconv = 1, DOdense = 1, DOpool = 1;
    float dropOutRatio = 0.0, decay1 = 0.95;
    float augmentRatio = 0.2, weightScale = 1.0;
    float augmentScale = .13, imgBias = 0.0;
    int augmentAngle = 13;
    float augmentDx = 2.8, augmentDy = 2.8;
    // NETWORK ACTIVATIONS AND ERRORS
    float prob = 0.0, prob0 = 0.0;
    float prob1 = 0.0, prob2 = 0.0;
    float *layers[MAXLAYER] = {0};
    int *dropOut[MAXLAYER] = {0};
    float *weights[MAXLAYER] = {0};
    char *weightsStr;
    float *errors[MAXLAYER] = {0};
    // NETWORK ARCHITECTURE
    int numLayers = 0;
    char layerNames[MAXLAYER][20] = {0};
    int layerType[MAXLAYER] = {0}; // 0FC, 1C, 2P
    int layerSizes[MAXLAYER] = {0};
    int layerConv[MAXLAYER] = {0};
    int layerPad[MAXLAYER] = {0};
    int layerWidth[MAXLAYER] = {0};
    int layerChan[MAXLAYER] = {0};
    int layerStride[MAXLAYER] = {0};
    int layerConvStep[MAXLAYER] = {0};
    int layerConvStep2[MAXLAYER] = {0};
    // THREAD VARIABLES
    pthread_t workerThread;
    pthread_attr_t stackSizeAttribute;
    int pass[5] = {0};
    int working = 0;
    int requiredStackSize = MAXLAYER - 2 * 1024 * 1024;
    // CONFUSION MATRIX DATA
    int maxCD = 54;
    int cDigits[MAXLAYER][MAXLAYER][54];
    int showAcc = 1;
    int showEnt = 1;
    int showCon = 0;
    float scaleMin = 0.9, scaleMax = 1.0;
    // DOT DATA
    const int maxDots = 250;
    float trainDots[250][2];
    int trainColors[250];
    int trainSizeD = 0;
    // DOT 3D DISPLAY
    int use3D = -1;
    float heights3D[121][81] = {{0}};
    float pa3D[121][81] = {{0}};
    float pb3D[121][81] = {{0}};
    float pc3D[121][81] = {{0}};
    double *red4 = 0, *green4 = 0, *blue4 = 0;
    int requestInit = 0;
    // NET ARCHITECTURE
    char nets[9][MAXLAYER][20] =
        {{"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", ""},
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "50176", "10", "2"},
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "50176", "C3:32:1", "P2", "2"},
         {"", "", "", "", "", "", "", "", "", "50176", "C3:32:1", "P2", "C3:32:1", "P2", "C3:32:1", "P2", "C3:32:1", "P2", "32", "2"},
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "150528", "10", "10", "2"},
         {"", "", "", "", "", "", "", "", "", "", "", "150528", "C3:32", "P2", "C3:32", "P2", "C3:32", "P2", "512", "2"},
         // debug nets below
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "150528", "C5:6", "P2", "50", "2"},
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "37632", "100", "2"},
         {"", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "16", "C3:2", "P2", "2", "2"}};

    pthread_barrier_t barrier;
    pthread_barrierattr_t attr;
    unsigned count;
    int ret;
}

extern "C"
{
    int intImg[WIDTH * WIDTH * COLORS] = {0};
    int *getImg(int index)
    {
        double divideBy = 255, subtractBy = 0;
        for (int idx = 0; idx < trainColumns; idx++)
        {
            intImg[idx] = (int)((trainImages[index][idx] + subtractBy) * divideBy);
        }
        return intImg;
    }

    int getValidInt(int minValue, int maxValue)
    {
        int temp_val;
        do
        {
            scanf("%d", &temp_val);
            if (temp_val < minValue || temp_val > maxValue)
            {
                printf("Invalid value, must be between %d and %d. \nPlease retry !\n", minValue, maxValue);
            }
        } while (temp_val < minValue || temp_val > maxValue);
        return temp_val;
    }

    float getValidFloat(float minValue, float maxValue)
    {
        float temp_val;
        do
        {
            scanf("%f", &temp_val);
            if (temp_val < minValue || temp_val > maxValue)
            {
                printf("Invalid value, must be between %f and %f. \nPlease retry !\n", minValue, maxValue);
            }
        } while (temp_val < minValue || temp_val > maxValue);
        return temp_val;
    }

    /**
     * @brief Check for a linux user signal (SIGUSR1)
     *
     * @return int linux user signal
     */
    int waitOnSIGUSR1Signal(void)
    {
        sigset_t set;
        int sig;
        int *sigptr = &sig;
        int ret_val;
        sigemptyset(&set);
        sigaddset(&set, SIGUSR1);
        sigprocmask(SIG_BLOCK, &set, NULL);

        printf("Waiting for a SIGUSR1 signal\n");

        ret_val = sigwait(&set, sigptr);
        if (ret_val == -1)
            perror("sigwait failed\n");
        else
        {
            if (*sigptr == SIGUSR1)
                printf("SIGUSR1 was received\n");
            else
                printf("sigwait returned with sig: %d\n", *sigptr);
        }
        return *sigptr;
    }
}

extern "C++"
{
    const int N_RETRY_ATTEMPTS = 5;
    bool start_f = false;

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

        void on_success(const mqtt::token &tok) override {}

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

        string topic;

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
            cli_.subscribe(topic, QOS, nullptr, subListener_);
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
            if (topic.compare("toIA") == 0)
            {
                if (msg->to_string().compare("start") == 0)
                {
                    start_f = true;
                    cout << "Start message received ..." << endl;

                }
            }
        }

        void
        delivery_complete(mqtt::delivery_token_ptr token) override
        {
        }

    public:
        callback(mqtt::async_client &cli, mqtt::connect_options &connOpts, string topic)
            : nretry_(0), cli_(cli), connOpts_(connOpts), subListener_("Subscription"), topic(topic) {}
    };
}

extern "C"
{
    /**********************************************************************/
    /*      MAIN ROUTINE                                                  */
    /**********************************************************************/

    int IA(int argc, char *argv[])
    {
        if (argc > 1)
            printf("Ignoring unknown argument(s)\n");
        srand(time(0));

        /**********************************************************************/
        /*      LOADING TRAINING&TEST DATASET                                 */
        /**********************************************************************/
        int removeHeader = 0, removeCol1 = 0;
        double validRatio = .2, divideBy = 127.5, subtractBy = 1;
        if (TESTONONE)
        {
            validRatio = 1.;
        }

        /**********************************************************************/
        /*      INIT NET                                                      */
        /**********************************************************************/
        weightScale = 1.414;
        int net = 2;
        printf("Initialized NN=%d with Xavier init scaled=%.3f\n", net, weightScale);
        clock_t start, stop;
        start = clock();
        mqtt::topic top = topic_create(DFLT_SERVER_ADDRESS);
        initNet(net, top);
        stop = clock();
        int len = printf("Architecture (%s", layerNames[0]);
        for (int i = 1; i < MAXLAYER; i++)
            len += printf("-%s", layerNames[i]);
        printf(") in %.3f\n", ((float)(stop - start)) / (float)CLOCKS_PER_SEC);

        /**********************************************************************/
        /*      ACTIVATION                                                    */
        /**********************************************************************/
        if (!USEDEBUGPARAM)
        {
            printf("Please choose your activation type where 0=Identity, 1=ReLU, 2=TanH :\n");
            activation = getValidInt(0, 2);
        }
        printf("Activation=%d where 0=Identity, 1=ReLU, 2=TanH\n", activation);

        /**********************************************************************/
        /*      DATA AUGMENTATION                                             */
        /**********************************************************************/
        // AUGMENT RATIO
        if (!USEDEBUGPARAM)
        {
            printf("please choose a ratio for data augment (value between 0,1)\n");
            augmentRatio = getValidFloat(0.0, 1.0);
        }

        // SCALE
        if (!USEDEBUGPARAM)
        {
            printf("please choose a scale for data augment (value between 0,1)\n");
            augmentScale = getValidFloat(0.0, 1.0);
        }

        // ANGLE
        if (!USEDEBUGPARAM)
        {
            printf("please choose a angle for data augment (value between 0-360)\n");
            augmentAngle = getValidInt(0, 360);
        }

        // DX
        if (!USEDEBUGPARAM)
        {
            printf("please choose a DX for data augment (value between 0,10)\n");
            augmentDx = getValidFloat(0.0, 10.0);
        }

        // DY
        if (!USEDEBUGPARAM)
        {
            printf("please choose a DY for data augment (value between 0,10)\n");
            augmentDy = getValidFloat(0.0, 10.0);
        }

        printf("AugmentRatio = %f, Angle = %d, Scale = %.2f, Dx = %.1f, Dy = %.1f\n",
               augmentRatio, augmentAngle, augmentScale, augmentDx, augmentDy);

        /**********************************************************************/
        /*      TRAIN NET                                                     */
        /**********************************************************************/
        int res;
        // learn
        if (!USEDEBUGPARAM)
        {
            printf("please choose an initial learning rate\n");
            learn = getValidFloat(0.0000000001, 1000.0);
        }
        printf("Learning rate set to %f\n", learn);

        // min scale
        if (!USEDEBUGPARAM)
        {
            printf("please enter a min scale, ex 0.95\n");
            scaleMin = getValidFloat(0.01, 1);
        }
        printf("Min scale set to %f\n", scaleMin);

        // max scale
        if (!USEDEBUGPARAM)
        {
            printf("please enter a max scale, ex 1.0\n");
            scaleMax = getValidFloat(0.01, 1);
        }
        printf("Max scale set to %f\n", scaleMax);

        // decay
        if (!USEDEBUGPARAM)
        {
            printf("please enter a decay, ex 0.95\n");
            decay1 = getValidFloat(0.01, 1);
        }
        printf("Decay set to %f\n", decay1);

        // epoch
        int epoch = 20;
        if (!USEDEBUGPARAM)
        {
            printf("please enter an epoch number\n");
            epoch = getValidInt(1, 1000);
        }
        printf("Number of epoch set to %d\n", epoch);

        // display rate
        int displayRate = 1;
        if (!USEDEBUGPARAM)
        {
            printf("please enter a display rate\n");
            displayRate = getValidInt(0, 1000);
        }
        printf("Display rate set to %d\n", displayRate);

        printf("Running \n");
        if (FORWARDONLY)
        {
            while (1)
            {
                if (COM_MODE == 1 & WAITFORSIGNAL == 1)
                {
                    while (waitOnSIGUSR1Signal() != SIGUSR1)
                        ;
                }
                else if (COM_MODE == 0)
                {
                    while (start_f == false)
                        ;
                }
                if (LOADDATASET)
                {
                    if (INFERENCE)
                    {
                        preprocess("../../temp.bmp");
                        printf("Load test Set \n");
                        int test = loadTest(rows, removeHeader, removeCol1, divideBy, subtractBy);
                        printf("Loaded %d rows test, %d features\n", test, testColumns);
                    }
                    else
                    {
                        printf("Load train Set with validRatio = %f\n", validRatio);
                        int nbRows = loadTrain(rows, validRatio, removeHeader, divideBy, subtractBy);
                        printf("Loaded %d rows training, %d features, vSetSize=%d\n", nbRows, trainColumns, validSetSize);
                    }
                }
                printf("start processing \n");
                runForwardProp(top);
                start_f = false;
            }
        }
        else
        {
            // training
            pass[0] = epoch;
            pass[1] = displayRate;
            pass[2] = 0;
            working = 1;
            runBackProp(NULL);
        }

        // pthread_create(&workerThread, &stackSizeAttribute, runBackProp, NULL);
        // ret = pthread_join(workerThread, NULL);
        // pthread_cancel(workerThread);

        /**********************************************************************/
        /*      PREDICT                                                       */
        /**********************************************************************/

        printf("END OF MAIN\n");
    }
}

int main(int argc, char **argv)
{
    mqtt::connect_options connOpts;
    connOpts.set_clean_session(true);
    mqtt::async_client ia_client(DFLT_SERVER_ADDRESS, "");
    callback cb(ia_client, connOpts, "toIA");
    ia_client.set_callback(cb);
    try
    {
        ia_client.connect(connOpts, nullptr, cb);
    }
    catch (const mqtt::exception &e)
    {
        std::cerr << "\nERROR : Unable to connect to MQTT server: '"
                  << DFLT_SERVER_ADDRESS << "'" << e << endl;
    }
    IA(argc, argv);
}
extern "C"
{ /**********************************************************************/
    /*      LOAD DATA                                                     */
    /**********************************************************************/
    int loadTrain(int ct, double validRatio, int sh, float imgScale, float imgBias)
    {
        char *data;
        // LOAD TRAINING DATA FROM FILE
        if (ct <= 0)
            ct = 1e6;
        int i, len = 0, lines = 1, lines2 = 1;
        float rnd;
        // READ IN TRAIN.CSV
        char buffer[1000000];
        char name[80] = "shipsnet_train.csv";
        if (TESTONONE)
        {
            strcpy(name, "shipsnet_one_240.csv");
        }
        printf("Loading %s\n", name);
        if (access(name, F_OK) == 0)
        {
            data = (char *)malloc((unsigned long)fsize(name) + 1);
            FILE *fp;
            fp = fopen(name, "r");
            while (fgets(buffer, 1000000, fp))
            {
                len += sprintf(data + len, "%s", buffer);
                // lines++;
            }
            fclose(fp);
        }
        else
        {
            printf("ERROR: File %s not found.\n", name);
            return 0;
        }
        // COUNT LINES
        for (i = 0; i < len; i++)
        {
            if (data[i] == '\n')
                lines++;
            if (data[i] == '\r')
                lines2++;
        }
        if (lines2 > lines)
            lines = lines2;
        // ALLOCATE MEMORY
        if (trainImages != NULL)
        {
            free(trainImages);
            free(trainImages2);
            free(trainDigits);
            free(trainSet);
            free(validSet);
            trainImages = NULL;
        }
        trainImages = (float(*)[172800])malloc(WIDTH * WIDTH * COLORS * (lines + extraTrainSizeI) * sizeof(float));
        trainImages2 = (float(*)[43200])malloc(WIDTH * WIDTH * COLORS / 2 / 2 * (lines + extraTrainSizeI) * sizeof(float));
        trainDigits = (int *)malloc(lines * sizeof(int));
        trainSet = (int *)malloc(lines * sizeof(int));
        validSet = (int *)malloc(lines * sizeof(int));
        // DECODE COMMA SEPARATED ROWS
        int j = 0, k = 0, c = 0, mark = -1;
        int d = 0, j1, j2;
        while (data[j] != '\n' && data[j] != '\r')
        {
            if (data[j] == ',')
                c++;
            j++;
        }
        if (data[j] != '\n' || data[j] != '\r')
            j++;
        trainColumns = c;
        c = 0;
        i = 0;
        if (sh == 1)
            i = j + 1;
        while (i < len && k < ct)
        {
            j = i;
            while (data[j] != ',' && data[j] != '\r' && data[j] != '\n')
                j++;
            if (data[j] == '\n' || data[j] == '\r')
                mark = 1;
            data[j] = 0;
            d = atof(data + i);
            if (mark == -1)
            {
                trainDigits[k] = (int)d;
                mark = 0;
            }
            else if (mark == 0)
            {
                trainImages[k][c] = d * (((float)1.) / imgScale) - imgBias;
                c++;
            }
            if (mark >= 1)
            {
                trainImages[k][c] = d * (((float)1.) / imgScale) - imgBias;
                if (c >= trainColumns - 1)
                    k++;
                c = 0;
                if (j + 1 < len && (data[j + 1] == '\n' || data[j + 1] == '\r'))
                    mark++;
                i = j + mark;
                mark = -1;
            }
            else
                i = j + 1;
        }
        validSetSize = 0;
        trainSetSize = 0;
        // CREATE A SUBSAMPLED VERSION OF IMAGES
        if (trainColumns == WIDTH * WIDTH * COLORS)
        {
            for (i = 0; i < k; i++)
            {
                for (j1 = 0; j1 < WIDTH / 2; j1++)
                {
                    for (j2 = 0; j2 < WIDTH / 2; j2++)
                    {
                        for (int color = 0; color < COLORS; color++)
                        {
                            trainImages2[i][WIDTH / 2 * j1 + j2 * 3 + color] = (trainImages[i][WIDTH * j1 * 2 + j2 * 2 * 3 + color] + trainImages[i][WIDTH * j1 * 2 + (j2 * 2 + 1) * 3 + color] + trainImages[i][WIDTH * (j1 * 2 + 1) + j2 * 2 * 3 + color] + trainImages[i][WIDTH * (j1 * 2 + 1) + (j2 * 2 + 1) * 3 + color]) / 4.0;
                        }
                    }
                }
            }
        }
        // CREATE TRAIN AND VALIDATION SETS
        for (i = 0; i < k; i++)
        {
            rnd = (float)rand() / (float)RAND_MAX;
            if (rnd <= validRatio)
                validSet[validSetSize++] = i;
            else
                trainSet[trainSetSize++] = i;
        }
        trainSizeI = k;
        trainSizeE = k;
        free(data);
        return k;
    }

    /**********************************************************************/
    /*      LOAD DATA                                                     */
    /**********************************************************************/

    /**
     * @brief Load images from temp.csv file and rescale.
     *
     * @param ct Max number of images. If >0, user value, else max set to 1e6
     * @param sh 1 if you want to remove the first line (ex : header), else 0
     * @param removeCol1 1 if you want to remove the first column (ex : labels), else 0
     * @param imgScale Scale for rescaling
     * @param imgBias Biase for rescaling
     * @return int number of images processed
     */
    int loadTest(int ct, int sh, int removeCol1, float imgScale, float imgBias)
    {
        char *data;
        // LOAD TEST DATA FROM FILE
        if (ct <= 0)
            ct = 1e6;
        int i, len = 0, lines = 0, lines2 = 0;
        ;
        float rnd;
        // READ IN TEST.CSV
        char buffer[1000000];
        char name[80] = "../temp.csv";
        if (access(name, F_OK) == 0)
        {
            data = (char *)malloc((int)fsize(name) + 1);
            FILE *fp;
            fp = fopen(name, "r");
            while (fgets(buffer, 1000000, fp))
            {
                len += sprintf(data + len, "%s", buffer);
                // lines++;
            }
            fclose(fp);
        }
        else
        {
            sprintf(buffer, "ERROR: File %s not found.", name);
            return 0;
        }
        // COUNT LINES
        for (i = 0; i < len; i++)
        {
            if (data[i] == '\n')
                lines++;
            if (data[i] == '\r')
                lines2++;
        }
        if (lines2 > lines)
            lines = lines2;

        // ALLOCATE MEMORY
        if (testImages != NULL)
        {
            free(testImages);
            free(testImages2);
            free(testDigits);
            testImages = NULL;
        }
        testImages = (float(*)[172800])malloc(WIDTH * WIDTH * COLORS * lines * sizeof(float));
        testImages2 = (float(*)[43200])malloc(WIDTH * WIDTH * COLORS / 2 / 2 * lines * sizeof(float));
        testDigits = (int *)malloc(lines * sizeof(int));
        // DECODE COMMA SEPARATED ROWS
        int j = 0, k = 0, c = 0, mark = 0;
        int d = 0, j1, j2;
        while (data[j] != '\n' && data[j] != '\r')
        {
            if (data[j] == ',')
                c++;
            j++;
        }
        if (data[j] != '\n' || data[j] != '\r')
            j++;
        testColumns = c + 1;
        if (removeCol1 == 1)
        {
            testColumns--;
            mark = -1;
        }
        // printf("len=%d lines=%d columns=%d\n",len,lines,testColumns);
        c = 0;
        i = 0;
        if (sh == 1)
            i = j + 1;
        while (i < len && k < ct)
        {
            j = i;
            while (data[j] != ',' && data[j] != '\r' && data[j] != '\n')
                j++;
            if (data[j] == '\n' || data[j] == '\r')
                mark = 1;
            data[j] = 0;
            d = atof(data + i);
            if (mark == -1)
            {
                mark = 0;
            }
            else if (mark == 0)
            {
                testImages[k][c] = d * (((float)1.) / imgScale) - imgBias;
                c++;
            }
            if (mark >= 1)
            {
                testImages[k][c] = d * (((float)1.) / imgScale) - imgBias;
                if (c >= testColumns - 1)
                    k++;
                c = 0;
                if (j + 1 < len && (data[j + 1] == '\n' || data[j + 1] == '\r'))
                    mark++;
                i = j + mark;
                mark = 0;
                if (removeCol1 == 1)
                    mark = -1;
            }
            else
                i = j + 1;
        }
        // CREATE A SUBSAMPLED VERSION OF IMAGES
        if (testColumns == WIDTH * WIDTH * COLORS)
        {
            for (i = 0; i < k; i++)
            {
                for (j1 = 0; j1 < WIDTH / 2; j1++)
                {
                    for (j2 = 0; j2 < WIDTH / 2; j2++)
                    {
                        for (int color = 0; color < COLORS; color++)
                        {
                            testImages2[i][WIDTH / 2 * j1 + j2 * 3 + color] = (testImages[i][WIDTH * j1 * 2 + j2 * 2 * 3 + color] + testImages[i][WIDTH * j1 * 2 + (j2 * 2 + 1) * 3 + color] + testImages[i][WIDTH * (j1 * 2 + 1) + j2 * 2 * 3 + color] + testImages[i][WIDTH * (j1 * 2 + 1) + (j2 * 2 + 1) * 3 + color]) / 4.0;
                        }
                    }
                }
            }
        }
        testSizeI = k;
        free(data);
        return k;
    }
    /**********************************************************************/
    /*      INIT NET                                                      */
    /**********************************************************************/

    /**
     * @brief Parse the layer from the input str
     *
     * @param str input string containing the layer type and parameters in a corresponding format
     * @param x layer number
     */
    void initArch(char *str, int x)
    {
        // PARSES USER INPUT TO CREATE DESIRED NETWORK ARCHITECTURE
        // TODO: remove all spaces, check for invalid characters
        int i;
        char *idx = str, *idx2;
        while (idx[0] == ' ' && idx[0] != 0)
            idx++;
        for (i = 0; i < strlen(idx); i++)
            str[i] = idx[i];
        if (str[0] == 0)
        {
            str[0] = '0';
            str[1] = 0;
        }
        if (str[0] >= '0' && str[0] <= '9') // FULLY CONNECTED
        {
            layerSizes[x] = atoi(str);
            layerConv[x] = 0;
            if (x == 0 || layerSizes[x - 1] == 0)
            {
                layerChan[x] = COLORS;
            }
            else
            {
                layerChan[x] = 1;
            }
            layerPad[x] = 0;
            layerWidth[x] = (int)sqrt(layerSizes[x]);
            if (layerWidth[x] * layerWidth[x] != layerSizes[x])
                layerWidth[x] = 1;
            layerStride[x] = 1;
            layerConvStep[x] = 0;
            layerConvStep2[x] = 0;
            layerType[x] = 0;
        }
        else if (str[0] == 'c' || str[0] == 'C') // CONVOLUTIONNAL LAYER
        {
            int more = 1;
            str[0] = 'C';
            idx = str + 1;
            while (*idx != ':' && *idx != '-' && *idx != 0)
                idx++;
            if (*idx == 0)
                more = 0;
            *idx = 0;
            layerConv[x] = atoi(str + 1);
            layerChan[x] = 1;
            layerPad[x] = 0;
            // layerWidth[x] = layerWidth[x-1];
            layerWidth[x] = layerWidth[x - 1] - layerConv[x] + 1;
            if (more == 1)
            {
                *idx = ':';
                idx++;
                idx2 = idx;
                while (*idx != ':' && *idx != '-' && *idx != 0)
                    idx++;
                if (*idx == 0)
                    more = 0;
                *idx = 0;
                layerChan[x] = atoi(idx2);
                if (more == 1)
                {
                    *idx = ':';
                    idx++;
                    idx2 = idx;
                    while (*idx != ':' && *idx != '-' && *idx != 0)
                        idx++;
                    if (*idx == 0)
                        more = 0;
                    *idx = 0;
                    layerPad[x] = atoi(idx2);
                    if (layerPad[x] == 1)
                        layerWidth[x] = layerWidth[x - 1];
                    // layerWidth[x] = layerWidth[x-1]-layerConv[x]+1;
                }
            }
            layerSizes[x] = layerWidth[x] * layerWidth[x];
            layerConvStep2[x] = layerConv[x] * layerConv[x];
            layerConvStep[x] = layerConvStep2[x] * layerChan[x - 1];
            layerStride[x] = 1;
            layerType[x] = 1;
        }
        else if (str[0] == 'p' || str[0] == 'P') // POOLING LAYER
        {
            int more = 1;
            if (activation != 0)
                str[0] = 'P'; // allow avg pool if identity act
            idx = str + 1;
            while (*idx != ':' && *idx != '-' && *idx != 0)
                idx++;
            if (*idx == 0)
                more = 0;
            *idx = 0;
            layerConv[x] = atoi(str + 1);
            layerStride[x] = layerConv[x];
            if (more == 1)
            {
                *idx = ':';
                idx++;
                idx2 = idx;
                while (*idx != ':' && *idx != '-' && *idx != 0)
                    idx++;
                if (*idx == 0)
                    more = 0;
                *idx = 0;
                layerStride[x] = atoi(idx2);
            }
            int newWidth = layerWidth[x - 1] / layerStride[x];
            if (layerStride[x] != layerConv[x])
                newWidth = (layerWidth[x - 1] - layerConv[x] + layerStride[x]) / layerStride[x];
            layerSizes[x] = newWidth * newWidth;
            layerChan[x] = layerChan[x - 1];
            layerPad[x] = 0;
            layerWidth[x] = newWidth;
            layerConvStep2[x] = layerConv[x] * layerConv[x];
            layerConvStep[x] = layerConvStep2[x];
            layerType[x] = 2; // MAX POOLING
            if (str[0] == 'p')
                layerType[x] = 3; // AVG POOLING
        }
        strcpy(layerNames[x], str);
    }

    /**********************************************************************/
    /*      INIT NET                                                      */
    /**********************************************************************/

    /**
     * @brief Initialize the NN with memory allocation and network weights.
     * From a defined constant you can choose from weights in a json file or Xavier initialization
     *
     * @param t Differents types of architectures
     */
    void initNet(int t, mqtt::topic top)
    {
        // ALLOCATION MEMORY AND INITIALIZE NETWORK WEIGHTS
        int i, idxLayer, same = 1, LL, dd = 9;
        char buf[MAXLAYER], buf2[20];

        // FREE OLD NET
        if ((t != inited && layers[0] != NULL) || (t == 0 && same == 0))
        {
            free(layers[0]);
            free(errors[0]);
            for (i = 1; i < MAXLAYER; i++)
            {
                free(layers[i]);
                free(dropOut[i]);
                free(errors[i]);
                free(weights[i]);
            }
            layers[0] = NULL;
        }
        // SET NEW NET ARCHITECTURE

        numLayers = 0;

        if (IMPORTARCHFROMJSON)
        {
            char *buff2 = (char *)malloc((unsigned long)fsize(weights_file) + 1);
            ret = read_from_file(weights_file, buff2);

            int size = get_int_in_json(buff2, "size");

            char *tab = get_tab_in_json(buff2, "arch");

            char archCNN[MAXLAYER][20] = {{0}};
            for (int i = MAXLAYER - size; i < MAXLAYER; i++)
            {
                char *str_in_tab = get_str_in_tab(tab, i - (MAXLAYER - size));
                strcpy(archCNN[i], str_in_tab);
                free(str_in_tab);
            }
            for (int i = MAXLAYER - size; i < MAXLAYER; i++)
            {
                initArch(archCNN[i], i);
                sprintf(buf, "L%d", i);
                if (numLayers == 0 && layerSizes[i] != 0)
                    numLayers = MAXLAYER - i;
            }
        }
        else
        {
            for (i = 0; i < MAXLAYER; i++)
            {
                initArch(nets[t][i], i);
                sprintf(buf, "L%d", i);
                if (numLayers == 0 && layerSizes[i] != 0)
                    numLayers = MAXLAYER - i;
            }
        }
        // sprintf(buf, "L%d", i);
        // if (numLayers == 0 && layerSizes[i] != 0)
        //     numLayers = MAXLAYER - i;
        // printf("\n");

        // ALOCATE MEMORY
        if (layers[0] == NULL)
        {
            layers[0] = (float *)malloc((layerSizes[0] + 1) * sizeof(float));
            errors[0] = (float *)malloc(layerSizes[0] * sizeof(float));
            for (i = 1; i < MAXLAYER; i++)
            {
                layers[i] = (float *)malloc((layerSizes[i] * layerChan[i] + 1) * sizeof(float));
                dropOut[i] = (int *)malloc((layerSizes[i] * layerChan[i] + 1) * sizeof(int));
                // printf("setting dropOut i=%d to %d\n",i,(layerSizes[i] * layerChan[i] + 1));
                errors[i] = (float *)malloc((layerSizes[i] * layerChan[i] + 1) * sizeof(float));
                if (layerType[i] == 0) // FULLY CONNECTED
                {
                    int nbrParam = layerSizes[i] * (layerSizes[i - 1] * layerChan[i - 1] + 1);
                    weights[i] = (float *)malloc(nbrParam * sizeof(float));
                }
                else if (layerType[i] == 1) // CONVOLUTION
                {
                    int nbrParam = (layerConvStep[i] + 1) * layerChan[i];
                    weights[i] = (float *)malloc(nbrParam * sizeof(float));
                }
                else if (layerType[i] >= 2) // POOLING (2=max, 3=avg)
                    weights[i] = (float *)malloc(sizeof(float));
            }
        }
        // WEIGHTS AND BIAS
        float scale;
        for (i = 0; i < MAXLAYER; i++)
            layers[i][layerSizes[i] * layerChan[i]] = 1.0;
        if (IMPORTPARAMFROMJSON)
        {
            char *bufFile = (char *)malloc((unsigned long)fsize(weights_file) + 1);
            int ret = read_from_file(weights_file, bufFile);
            printf("Size of parameters' file : %d\n", ret);
            weightsStr = get_object_in_json(bufFile, "weights");
            free(bufFile);
            if (weightsStr == NULL)
            {
                printf("[ERROR] No weights load from file\n");
                return;
            }
        }

        int idxLayerInFile = 0;
        for (idxLayer = 1; idxLayer < MAXLAYER; idxLayer++)
        {
            if (IMPORTPARAMFROMJSON && ((layerType[idxLayer] == 0) || (layerType[idxLayer] == 1)))
            {
                if (idxLayer >= MAXLAYER - numLayers + 1)
                {
                    char label[30] = {0};
                    sprintf(label, "layer%i", idxLayerInFile);
                    char *layerWeights = get_tab_in_json(weightsStr, label);
                    idxLayerInFile++;
                    sprintf(label, "layer%i", idxLayerInFile);
                    char *layerBias = get_tab_in_json(weightsStr, label);
                    idxLayerInFile++;
                    if (layerType[idxLayer] == 0)
                    { // FULLY CONNECTED

                        // MULTITHREADING
                        int maxIdx = layerSizes[idxLayer - 1] * layerChan[idxLayer - 1];
                        pthread_t id_thr[NBROFTHREAD];
                        struct THREADPARAM_S *params = (THREADPARAM_S *)calloc(NBROFTHREAD, sizeof(*params));
                        for (int idx_thr = 0; idx_thr < NBROFTHREAD; idx_thr++)
                        {
                            params[idx_thr].begin = idx_thr * maxIdx / NBROFTHREAD;
                            params[idx_thr].end = (idx_thr + 1) * maxIdx / NBROFTHREAD;
                            params[idx_thr].idxLayer = idxLayer;
                            params[idx_thr].layerWeights = layerWeights;
                            params[idx_thr].layerBias = layerBias;

                            pthread_create(&id_thr[idx_thr], NULL, runFullyLoad, &params[idx_thr]);
                        }

                        for (int idx_thr = 0; idx_thr < NBROFTHREAD; idx_thr++)
                        {
                            pthread_join(id_thr[idx_thr], NULL);
                        }
                        free(params);
                    }
                    else if (layerType[idxLayer] == 1)
                    {                                                                    // CONVOLUTION                                                               // CONVOLUTION
                        for (int iParam = 0; iParam < layerConvStep[idxLayer]; iParam++) // +1 ??
                        {
                            int profondeur = iParam % (layerChan[idxLayer - 1]);
                            int largeur = (iParam / layerChan[idxLayer - 1]) % layerConv[idxLayer];
                            int hauteur = (iParam / layerChan[idxLayer - 1]) / layerConv[idxLayer];
                            char *paramHauteur = get_tab_in_tab(layerWeights, hauteur);
                            char *paramLargeur = get_tab_in_tab(paramHauteur, largeur);
                            char *paramProf = get_tab_in_tab(paramLargeur, profondeur);
                            free(paramHauteur);
                            free(paramLargeur);
                            for (int iFilter = 0; iFilter < layerChan[idxLayer]; iFilter++)
                            {
                                float param = get_float_in_string(paramProf, iFilter);
                                weights[idxLayer][iParam * layerChan[idxLayer] + iFilter] = param;
                            }
                            free(paramProf);
                        }
                        for (i = 0; i < layerChan[idxLayer]; i++) // set conv biases
                            weights[idxLayer][layerConvStep[idxLayer] * layerChan[idxLayer] + i] = get_float_in_string(layerBias, i);
                    }
                    if (SAVEVALUES)
                    {
                        char nameFile[30];
                        sprintf(nameFile, "save/weights%d_c.json", idxLayer);
                        int nbrParam = 0;
                        if (layerType[idxLayer] == 0) // FULLY CONNECTED
                        {
                            nbrParam = layerSizes[idxLayer] * (layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + 1);
                        }
                        else if (layerType[idxLayer] == 1) // CONVOLUTION
                        {
                            nbrParam = (layerConvStep[idxLayer] + 1) * layerChan[idxLayer];
                        }
                        write_float_in_file(nameFile, weights[idxLayer], nbrParam);
                    }
                    free(layerWeights);
                    free(layerBias);
                }
            }
            else
            {
                scale = 1.0;
                if (layerSizes[idxLayer - 1] != 0)
                {
                    // XAVIER INITIALIZATION (= SQRT( 6/(N_in + N_out) ) ) What is N_out to MaxPool ??
                    if (layerType[idxLayer] == 0)
                    { // FC LAYER
                        if (layerType[idxLayer + 1] == 0)
                            scale = 2.0 * sqrt(6.0 / (layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + layerSizes[idxLayer]));
                        else if (layerType[idxLayer + 1] == 1) // impossible
                            scale = 2.0 * sqrt(6.0 / (layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + layerConvStep[idxLayer + 1]));
                        else if (layerType[idxLayer + 1] >= 2) // impossible
                            scale = 2.0 * sqrt(6.0 / (layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + layerSizes[idxLayer - 1] * layerChan[idxLayer - 1]));
                    }
                    else if (layerType[idxLayer] == 1)
                    { // CONV LAYER
                        if (layerType[idxLayer + 1] == 0)
                            scale = 2.0 * sqrt(6.0 / (layerConvStep[idxLayer] + layerSizes[idxLayer] * layerChan[idxLayer]));
                        else if (layerType[idxLayer + 1] == 1)
                            scale = 2.0 * sqrt(6.0 / (layerConvStep[idxLayer] + layerConvStep[idxLayer + 1]));
                        else if (layerType[idxLayer + 1] >= 2)
                            scale = 2.0 * sqrt(6.0 / (layerConvStep[idxLayer] + layerConvStep[idxLayer]));
                    }
                    // if (activation==1 && j!=9) scale *= sqrt(2.0); // DO I WANT THIS? INPUT ISN'T MEAN=0
                    // printf("Init layer %d: LS=%d LC=%d LCS=%d Scale=%f\n",j,layerSizes[j],layerChan[j],layerConvStep[j],scale);
                    if (idxLayer != MAXLAYER - 1)
                        scale *= weightScale;
                }
                if (layerType[idxLayer] == 0)
                { // FULLY CONNECTED
                    for (i = 0; i < layerSizes[idxLayer] * (layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + 1); i++)
                        weights[idxLayer][i] = scale * ((float)rand() / (float)RAND_MAX - 0.5);
                    // weights[j][i] = 0.1;
                    for (i = 0; i < layerSizes[idxLayer]; i++) // set biases to zero
                        weights[idxLayer][(layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + 1) * (i + 1) - 1] = 0.0;
                }
                else if (layerType[idxLayer] == 1)
                { // CONVOLUTION
                    for (i = 0; i < (layerConvStep[idxLayer] + 1) * layerChan[idxLayer]; i++)
                        weights[idxLayer][i] = scale * ((float)rand() / (float)RAND_MAX - 0.5);
                    for (i = 0; i < layerChan[idxLayer]; i++) // set conv biases to zero
                        weights[idxLayer][(layerConvStep[idxLayer] + 1) * (i + 1) - 1] = 0.0;
                }
            }
        }

        inited = t;
        if (isDigits(inited) != 1)
        {
            showCon = 0;
        }
    }

    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/
    int isDigits(int init)
    {
        // DETERMINES WHETHER TO TRAIN DOTS OR LOADED DATA
        int in = MAXLAYER - numLayers;
        if (layerSizes[in] == WIDTH * WIDTH || layerSizes[in] == 784 || layerSizes[in] == trainColumns)
            return 1;
        else
            return 0;
    }

    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/
    void randomizeTrainSet()
    {
        // RANDOMIZES INDICES IN TRAINING SET
        int i, temp, x;
        for (i = 0; i < trainSetSize; i++)
        {
            x = (int)(trainSetSize * ((float)rand() / (float)RAND_MAX) - 1);
            temp = trainSet[i];
            trainSet[i] = trainSet[x];
            trainSet[x] = temp;
        }
    }
    void randomizeValidSet()
    {
        // RANDOMIZES INDICES IN TRAINING SET
        int i, temp, x;
        for (i = 0; i < validSetSize; i++)
        {
            x = (int)(validSetSize * ((float)rand() / (float)RAND_MAX) - 1);
            temp = validSet[i];
            validSet[i] = validSet[x];
            validSet[x] = temp;
        }
    }

    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/
    void dataAugment(int img, int r, float sc, float dx, float dy, int p, int hiRes, int loRes, int t)
    {
        // AUGMENT AN IMAGE AND STORE RESULT IN TRAIN IMAGES ARRAY
        int i, j, x2, y2;
        float x, y;
        float pi = 3.1415926;
        float c = cos(pi * r / 180.0);
        float s = sin(pi * r / 180.0);
        float(*trainImagesB)[WIDTH * WIDTH * COLORS] = trainImages;
        float(*trainImages2B)[WIDTH * WIDTH * COLORS / 2 / 2] = trainImages2;
        if (t == 0)
        {
            trainImagesB = testImages;
            trainImages2B = testImages2;
        }
        if (loRes == 1)
        {
            for (i = 0; i < WIDTH / 2; i++)
                for (j = 0; j < WIDTH / 2; j++)
                {
                    x = (j - 6.5) / sc - dx / 2.0;
                    y = (i - 6.5) / sc + dy / 2.0;
                    x2 = (int)round((c * x - s * y) + 6.5);
                    y2 = (int)round((s * x + c * y) + 6.5);
                    if (y2 >= 0 && y2 < WIDTH / 2 && x2 >= 0 && x2 < WIDTH / 2)
                        trainImages2[trainSizeE][i * WIDTH / 2 + j] = trainImages2B[img][y2 * WIDTH / 2 + x2];
                    else
                        trainImages2[trainSizeE][i * WIDTH / 2 + j] = -imgBias;
                }
        }
        if (hiRes == 1)
        {
            for (i = 0; i < WIDTH; i++)
                for (j = 0; j < WIDTH; j++)
                {
                    x = (j - 13.5) / sc - dx;
                    y = (i - 13.5) / sc + dy;
                    x2 = (int)round((c * x - s * y) + 13.5);
                    y2 = (int)round((s * x + c * y) + 13.5);
                    if (y2 >= 0 && y2 < WIDTH && x2 >= 0 && x2 < WIDTH)
                        trainImages[trainSizeE][i * WIDTH + j] = trainImagesB[img][y2 * WIDTH + x2];
                    else
                        trainImages[trainSizeE][i * WIDTH + j] = -imgBias;
                }
        }
        trainDigits[trainSizeE] = trainDigits[img];
        if (t == 0)
            trainDigits[trainSizeE] = -1;
    }

    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/
    void *runBackProp(void *arg)
    {
        // TRAINS NEURAL NETWORK WITH TRAINING DATA
        time_t start, stop;
        showEnt = 1;
        showAcc = 1;
        char buffer[80];
        int idxImage, nbrEpochs = pass[0], y = pass[1], z = pass[2];
        int p, confusion[MAXLAYER][MAXLAYER] = {{0}};
        if (layers[0] == NULL)
        {
            // initNet(1);
            if (z == 1)
            {
                printf("Assuming NN=1 with Xavier init scaled=%.3f", weightScale);
            }
            int len = printf("Architecture (%d", layerSizes[0]);
            for (idxImage = 1; idxImage < MAXLAYER; idxImage++)
                len += printf("-%d", layerSizes[idxImage]);
            printf(")\n");
        }
        // LEARN DIGITS
        int trainSize = trainSetSize;
        int testSize = validSetSize;
        if (isDigits(inited) == 1)
        {
            showCon = 1;
        }
        else
        { // LEARN DOTS
            trainSize = trainSizeD;
            testSize = 0;
        }
        if (trainSize == 0)
        {
            if (isDigits(inited) == 1)
                printf("Load images first. Click load.");
            else
                printf("Create training dots first. Click dots inside pane to the right.");
            working = 0;
            return NULL;
        }
        // ALLOCATE MEMORY FOR ENTORPY AND ACCURACY HISTORY
        if (ents != NULL)
        {
            free(ents);
            free(ents2);
            free(accs);
            free(accs2);
            ents = NULL;
        }
        ents = (float *)malloc((int)(nbrEpochs / y + 1) * sizeof(float));
        ents2 = (float *)malloc((int)(nbrEpochs / y + 1) * sizeof(float));
        accs = (float *)malloc((int)(nbrEpochs / y + 1) * sizeof(float));
        accs2 = (float *)malloc((int)(nbrEpochs / y + 1) * sizeof(float));
        int entSize = 0, accSize = 0, ent2Size = 0, acc2Size = 0;
        int epoch, j2, k, sumBp, s2, bpResult;
        float entropy, entropy2, ent;
        if (isDigits(inited) == 1 && randomizeDescent == 1)
            randomizeTrainSet();
        time(&start);
        // PERFORM X TRAINING EPOCHS
        for (epoch = 0; epoch < nbrEpochs; epoch++)
        {
            sumBp = 0;
            entropy = 0.0;
            if (isDigits(inited) != 1)
                trainSize = trainSizeD;
            for (idxImage = 0; idxImage < trainSize; idxImage++)
            {
                // if (i%100==0) printf("x=%d, i=%d\n",j,i);
                if (isDigits(inited) == 1)
                    bpResult = backProp(trainSet[idxImage], &ent, epoch); // LEARN DIGITS
                else
                    bpResult = backProp(idxImage, &ent, 0); // LEARN DOTS
                if (bpResult == -1)
                {
                    if (z == 1)
                        printf("Exploded. Lower learning rate.\n");
                    else
                        printf("Exploded. Lower learning rate.\n");
                    working = 0;
                    return NULL;
                }
                sumBp += bpResult;
                entropy += ent;
                if (working == 0)
                {
                    printf("learning stopped early\n");
                    pthread_exit(NULL);
                }
                printf("Ratio : %.2f\r", (float)sumBp / ((float)idxImage + 1.));
                fflush(stdout);
            }
            printf("\n");
            entropy = entropy / trainSize;
            s2 = 0;
            entropy2 = 0.0;
            for (idxImage = 0; idxImage < MAXLAYER; idxImage++)
                for (k = 0; k < MAXLAYER; k++)
                    confusion[idxImage][k] = 0;
            for (idxImage = 0; idxImage < MAXLAYER; idxImage++)
                for (j2 = 0; j2 < MAXLAYER; j2++)
                    for (k = 0; k < maxCD; k++)
                        cDigits[idxImage][j2][k] = -1;
            for (idxImage = 0; idxImage < testSize; idxImage++)
            {
                p = forwardProp(validSet[idxImage], 0, 1, 0);
                if (p == -1)
                {
                    if (z == 1)
                        printf("Test exploded.\n");
                    else
                        printf("Test exploded.\n");
                    working = 0;
                    return NULL;
                }
                if (p == trainDigits[validSet[idxImage]])
                    s2++;
                cDigits[trainDigits[validSet[idxImage]]][p][confusion[trainDigits[validSet[idxImage]]][p] % maxCD] = validSet[idxImage];
                confusion[trainDigits[validSet[idxImage]]][p]++;
                if (layers[MAXLAYER - 1][p] == 0)
                {
                    if (z == 1)
                        printf("Test vanished.\n");
                    else
                        printf("Test vanished.\n");
                    working = 0;
                    return NULL;
                }
                entropy2 -= log(layers[MAXLAYER - 1][p]);
                if (working == 0)
                {
                    printf("learning stopped early\n");
                    pthread_exit(NULL);
                }
            }
            entropy2 = entropy2 / testSize;
            if (epoch == 0 || (epoch + 1) % y == 0)
            {
                ents[entSize++] = entropy;
                accs[accSize++] = (float)sumBp / trainSize;
                if (isDigits(inited) == 1)
                {
                    accs2[acc2Size++] = (float)s2 / testSize;
                    ents2[ent2Size++] = entropy2;
                }
                time(&stop);
                printf("i=%d acc=%d/%d, ent=%.4f, lr=%.1e\n", epoch + 1, sumBp, trainSize, entropy, learn * pow(decay1, epoch));
                if (isDigits(inited) == 1 && testSize > 0)
                    printf("i=%d train=%.2f ent=%.4f,valid=%.2f ent=%.4f (%.0fsec) lr=%.1e\n",
                           epoch + 1, 100.0 * sumBp / trainSize, entropy, 100.0 * s2 / testSize, entropy2, difftime(stop, start), learn * pow(decay1, epoch));
                else if (isDigits(inited) == 1 && testSize == 0)
                    printf("i=%d train=%.2f ent=%.4f (%.0fsec) lr=%.1e\n",
                           epoch + 1, 100.0 * sumBp / trainSize, entropy, difftime(stop, start), learn * pow(decay1, epoch));
                time(&start);
                // if (z==1 && isDigits(inited)!=1) {
                //     if (use3D==1) displayClassify3D();
                //     else displayClassify(0);
                // }
                // if (z==1 && showEnt==1) displayEntropy(ents,entSize,ents2,y);
                // if (z==1 && showAcc==1) displayAccuracy(accs,accSize,accs2,y);
                // if (z==1 && isDigits(inited)==1 && showCon==1)  displayConfusion(confusion);
            }
            if (requestInit == 1)
            {
                requestInit = 0;
            }
            if (working == 0)
            {
                printf("learning stopped early\n");
                pthread_exit(NULL);
            }
        }
        printf("Done\n");
        working = 0;
        return NULL;
    }
}

extern "C++"
{
    /**
     * @brief Run the forward prop, write pred to pipe IAtoINT and print corresponding information
     *
     * @param arg NULL
     * @return void*
     */
    void runForwardProp(mqtt::topic top)
    {
        if (!INFERENCE)
            randomizeValidSet();
        working = 1;
        int s2 = 0;
        int entropy2 = 0;
        int confusion[MAXLAYER][MAXLAYER] = {{0}};
        int entSize = 0, accSize = 0, ent2Size = 0, acc2Size = 0;

#if INFERENCE == 1
        for (int idxImage = 0; idxImage < testSizeI; idxImage++)
#else
        for (int idxImage = 0; idxImage < validSetSize; idxImage++)
#endif
        {
            struct timeval stop, start;
            gettimeofday(&start, NULL);
            int pred;
            if (INFERENCE)
            {
                pred = forwardProp(idxImage, 0, 0, 0);
                if (COM_MODE == 0)
                {
                    publish(to_string(pred), DFLT_SERVER_ADDRESS, top);
                }
                else if (COM_MODE == 1)
                {
                    int fd;
                    if ((fd = open("../IAtoINT", O_WRONLY)) == -1)
                    {
                        printf("erreur d'ouverture du pipe\n");
                        return;
                    }
                    if (write(fd, &pred, sizeof(pred)) == -1)
                    {
                        printf("erreur d'ecriture\n");
                        return;
                    }
                    close(fd);
                }
            }
            else
                pred = forwardProp(validSet[idxImage], 0, 1, 0);
            gettimeofday(&stop, NULL);
            if (pred == -1)
            {
                printf("Test exploded.\n");
                working = 0;
                return;
            }
            if (!INFERENCE)
            {
                if (pred == trainDigits[validSet[idxImage]])
                    s2++;
                cDigits[trainDigits[validSet[idxImage]]][pred][confusion[trainDigits[validSet[idxImage]]][pred] % maxCD] = validSet[idxImage];
                confusion[trainDigits[validSet[idxImage]]][pred]++;
            }
            if (layers[MAXLAYER - 1][pred] == 0)
            {
                printf("Test vanished.\n");
                working = 0;
                return;
            }
            if (!INFERENCE)
                entropy2 -= log(layers[MAXLAYER - 1][pred]);
            if (working == 0)
            {
                printf("learning stopped early\n");
                pthread_exit(NULL);
            }
            if (!INFERENCE)
                printf("Process %d/%d pics (%lu usec/pic) with %.2f good predictions\r", idxImage + 1, validSetSize, (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec, 100.0 * s2 / (idxImage + 1));
            else
                printf("Process %d/%d pics (%lu usec/pic) with pred = %d \r", idxImage + 1, testSizeI, (stop.tv_sec - start.tv_sec) * 1000000 + stop.tv_usec - start.tv_usec, pred);
            fflush(stdout);
        }
        printf("\n");
    }
}

extern "C"
{
    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/
    int backProp(int x, float *ent, int ep)
    {
        // BACK PROPAGATION WITH 1 TRAINING IMAGE
        int i = 0, j, k, concordance = 0, d = 0, rot = 0, hres = 0, lres = 1;
        float der = 1.0, xs = 0.0, ys = 0.0, extra = 0.0, sc = 1.0, sum;
        int dc, a, a2, i2, j2, i3, j3, pmax, imax, jmax;
        int temp, temp2;
        // DATA AUGMENTATION
        if (augmentRatio > 0.0 && isDigits(inited) == 1)
            if ((float)rand() / (float)RAND_MAX <= augmentRatio)
            {
                if (augmentAngle > 0.0)
                    rot = (int)(2.0 * augmentAngle * (float)rand() / (float)RAND_MAX - augmentAngle);
                if (augmentDx > 0.0)
                    xs = (2.0 * augmentDx * (float)rand() / (float)RAND_MAX - augmentDx);
                if (augmentDy > 0.0)
                    ys = (2.0 * augmentDy * (float)rand() / (float)RAND_MAX - augmentDy);
                if (augmentScale > 0.0)
                    sc = 1.0 + 2.0 * augmentScale * (float)rand() / (float)RAND_MAX - augmentScale;
                if (layerSizes[MAXLAYER - numLayers] == WIDTH * WIDTH * COLORS)
                {
                    hres = 1;
                    lres = 0;
                }
                dataAugment(x, rot, sc, xs, ys, -1, hres, lres, 1);
                x = trainSizeE;
            }
        // FORWARD PROP FIRST
        int pred = forwardProp(x, 1, 1, 0);
        if (pred == -1)
            return -1; // GRADIENT EXPLODED
        // CORRECT PREDICTION?
        int goodValue;
        if (isDigits(inited) == 1)
            goodValue = trainDigits[x];
        else
            goodValue = trainColors[x];
        if (pred == goodValue)
            concordance = 1;
        // OUTPUT LAYER - CALCULATE ERRORS
        for (int iNeuron = 0; iNeuron < layerSizes[MAXLAYER - 1]; iNeuron++)
        {
            errors[MAXLAYER - 1][iNeuron] = learn * (0 - layers[MAXLAYER - 1][iNeuron]) * pow(decay1, ep);
            if (iNeuron == goodValue)
            {
                errors[MAXLAYER - 1][iNeuron] = learn * (1 - layers[MAXLAYER - 1][iNeuron]) * pow(decay1, ep);
                if (layers[MAXLAYER - 1][iNeuron] == 0)
                    return -1; // GRADIENT VANISHED
                *ent = -log(layers[MAXLAYER - 1][iNeuron]);
            }
        }
        // HIDDEN LAYERS - CALCULATE ERRORS
        for (int idxLayer = MAXLAYER - 2; idxLayer > MAXLAYER - numLayers; idxLayer--)
        {
            if (layerType[idxLayer + 1] == 0)
            { // FEEDS INTO FULLY CONNECTED
                for (int idxParam = 0; idxParam < layerSizes[idxLayer] * layerChan[idxLayer]; idxParam++)
                {
                    errors[idxLayer][idxParam] = 0.0;
                    if (dropOutRatio == 0.0 || DOdense == 0 || dropOut[idxLayer][idxParam] == 1)
                    { // dropout
                        if (activation == 2)
                            der = (layers[idxLayer][idxParam] + 1) * (1 - layers[idxLayer][idxParam]); // TanH derivative
                        if (activation == 0 || activation == 2 || layers[idxLayer][idxParam] > 0)
                        { // this is ReLU derivative
                            int step = layerSizes[idxLayer + 1];
                            for (int idxIn = 0; idxIn < layerSizes[idxLayer + 1]; idxIn++)
                                errors[idxLayer][idxParam] += errors[idxLayer + 1][idxIn] * weights[idxLayer + 1][idxParam * step + idxIn] * der;
                        }
                    }
                }
            }
            else if (layerType[idxLayer + 1] == 1)
            { // FEEDS INTO CONVOLUTION
                for (int iParam = 0; iParam < layerSizes[idxLayer] * layerChan[idxLayer]; iParam++)
                    errors[idxLayer][iParam] = 0.0;
                dc = 0;
                if (layerPad[idxLayer + 1] == 1)
                    dc = layerConv[idxLayer + 1] / 2;
                for (int iProfOut = 0; iProfOut < layerChan[idxLayer]; iProfOut++)
                    for (int iLargOut = 0; iLargOut < layerConv[idxLayer + 1]; iLargOut++)
                        for (int iHautOut = 0; iHautOut < layerConv[idxLayer + 1]; iHautOut++)
                        {
                            for (int iProfIn = 0; iProfIn < layerChan[idxLayer + 1]; iProfIn++)
                                for (int iLargIn = 0; iLargIn < layerWidth[idxLayer + 1]; iLargIn++)
                                    for (int iHautIn = 0; iHautIn < layerWidth[idxLayer + 1]; iHautIn++)
                                    {
                                        int i3 = iLargIn + iLargOut - dc;
                                        int j3 = iHautIn + iHautOut - dc;
                                        if (activation == 2)
                                            der = (layers[idxLayer][iProfOut * layerSizes[idxLayer] + i3 * layerWidth[idxLayer] + j3] + 1) * (1 - layers[idxLayer][iProfOut * layerSizes[idxLayer] + i3 * layerWidth[idxLayer] + j3]); // TanH
                                        if (activation == 0 || activation == 2 || layers[idxLayer][iProfOut * layerSizes[idxLayer] + i3 * layerWidth[idxLayer] + j3] > 0)                                                              // this is ReLU derivative
                                            if (i3 >= 0 && i3 < layerWidth[idxLayer] && j3 >= 0 && j3 < layerWidth[idxLayer])                                                                                                          // padding
                                            {
                                                int idxErrorsOut = j3 * layerWidth[idxLayer] * layerChan[idxLayer] + i3 * layerChan[idxLayer] + iProfOut;
                                                int idxWeights = iProfOut * layerWidth[idxLayer + 1] * layerWidth[idxLayer + 1] * layerChan[idxLayer + 1] + iHautIn * layerWidth[idxLayer + 1] * layerChan[idxLayer + 1] + iLargIn * layerChan[idxLayer + 1] + iProfIn;
                                                int idxErrorsIn = iHautIn * layerWidth[idxLayer + 1] * layerChan[idxLayer + 1] + iLargIn * layerChan[idxLayer + 1] + iProfIn;
                                                errors[idxLayer][idxErrorsOut] += weights[idxLayer + 1][idxWeights] * errors[idxLayer + 1][idxErrorsIn] * der;
                                            }
                                    }
                        }
                if (dropOutRatio > 0.0 && DOconv == 1) // dropout
                    for (i = 0; i < layerSizes[idxLayer] * layerChan[idxLayer]; i++)
                        errors[idxLayer][i] = errors[idxLayer][i] * dropOut[idxLayer][i];
            }
            else if (layerType[idxLayer + 1] >= 2)
            { // FEEDS INTO POOLING (2=max, 3=avg)
                for (i = 0; i < layerSizes[idxLayer] * layerChan[idxLayer]; i++)
                    errors[idxLayer][i] = 0.0;
                for (a = 0; a < layerChan[idxLayer]; a++)
                    for (i = 0; i < layerWidth[idxLayer + 1]; i++)
                        for (j = 0; j < layerWidth[idxLayer + 1]; j++)
                        {
                            pmax = -1e6;
                            if (layerType[idxLayer + 1] == 3)
                                temp = errors[idxLayer + 1][a * layerSizes[idxLayer + 1] + i * layerWidth[idxLayer + 1] + j] / layerConvStep2[idxLayer + 1];
                            for (i2 = 0; i2 < layerConv[idxLayer + 1]; i2++)
                                for (j2 = 0; j2 < layerConv[idxLayer + 1]; j2++)
                                {
                                    if (layerType[idxLayer + 1] == 3)
                                        errors[idxLayer][a * layerSizes[idxLayer] + (i * layerStride[idxLayer + 1] + i2) * layerWidth[idxLayer] + j * layerStride[idxLayer + 1] + j2] = temp;
                                    else if (layers[idxLayer][a * layerSizes[idxLayer] + (i * layerStride[idxLayer + 1] + i2) * layerWidth[idxLayer] + j * layerStride[idxLayer + 1] + j2] > pmax)
                                    {
                                        pmax = layers[idxLayer][a * layerSizes[idxLayer] + (i * layerStride[idxLayer + 1] + i2) * layerWidth[idxLayer] + j * layerStride[idxLayer + 1] + j2];
                                        imax = i2;
                                        jmax = j2;
                                    }
                                }
                            if (layerType[idxLayer + 1] == 2)
                                errors[idxLayer][a * layerSizes[idxLayer] + (i * layerStride[idxLayer + 1] + imax) * layerWidth[idxLayer] + j * layerStride[idxLayer + 1] + jmax] =
                                    errors[idxLayer + 1][a * layerSizes[idxLayer + 1] + i * layerWidth[idxLayer + 1] + j];
                        }
                if (dropOutRatio > 0.0 && DOpool == 1) // dropout
                    for (i = 0; i < layerSizes[idxLayer] * layerChan[idxLayer]; i++)
                        errors[idxLayer][i] = errors[idxLayer][i] * dropOut[idxLayer][i];
            }
        }

        // UPDATE WEIGHTS - GRADIENT DESCENT
        int count = 0;
        for (int idxLayer = MAXLAYER + 1 - numLayers; idxLayer < MAXLAYER; idxLayer++)
        {
            if (layerType[idxLayer] == 0)
            { // FULLY CONNECTED LAYER
                for (int iOut = 0; iOut < layerSizes[idxLayer]; iOut++)
                {
                    for (int iIn = 0; iIn < layerSizes[idxLayer - 1] * layerChan[idxLayer - 1]; iIn++)
                        weights[idxLayer][iIn * layerSizes[idxLayer] + iOut] += errors[idxLayer][iOut] * layers[idxLayer - 1][iIn];
                }
            }
            else if (layerType[idxLayer] == 1)
            { // CONVOLUTION LAYER
                dc = 0;
                if (layerPad[idxLayer] == 1)
                    dc = layerConv[idxLayer] / 2;
                for (int iHautOut = 0; iHautOut < layerWidth[idxLayer]; iHautOut++)
                    for (int iLargOut = 0; iLargOut < layerWidth[idxLayer]; iLargOut++)
                        for (int iProfOut = 0; iProfOut < layerChan[idxLayer]; iProfOut++)
                        {
                            int idxErrors = iHautOut * layerWidth[idxLayer] * layerChan[idxLayer] + iLargOut * layerChan[idxLayer] + iProfOut;
                            for (int iHautIn = 0; iHautIn < layerConv[idxLayer]; iHautIn++)
                                for (int iLargIn = 0; iLargIn < layerConv[idxLayer]; iLargIn++)
                                    for (int iProfIn = 0; iProfIn < layerChan[idxLayer - 1]; iProfIn++)
                                    {
                                        int i3 = iLargOut + iLargIn - dc;
                                        int j3 = iHautOut + iHautIn - dc;
                                        int idxWeights = iProfOut * layerConv[idxLayer] * layerConv[idxLayer] * layerChan[idxLayer - 1] + iHautIn * layerConv[idxLayer] * layerChan[idxLayer - 1] + iLargIn * layerChan[idxLayer - 1] + iProfIn;
                                        int idxVal = j3 * layerConv[idxLayer] * layerChan[idxLayer - 1] + i3 * layerChan[idxLayer - 1] + iProfIn;
                                        if (i3 >= 0 && i3 < layerWidth[idxLayer - 1] && j3 >= 0 && j3 < layerWidth[idxLayer - 1])
                                        {
                                            weights[idxLayer][idxWeights] += errors[idxLayer][idxErrors] * layers[idxLayer - 1][idxVal];
                                        }
                                    }
                            // bias
                            int idxWeights = (layerConv[idxLayer] * layerConv[idxLayer] * layerChan[idxLayer - 1] * layerChan[idxLayer]) + iProfOut;
                            weights[idxLayer][idxWeights] += errors[idxLayer][idxErrors];
                        }
            }
        }
        return concordance;
    }

    /**********************************************************************/
    /*      NEURAL NETWORK                                                */
    /**********************************************************************/

    /**
     * @brief Run the forward propagation for the input image and returns the prediction
     *
     * @param image input image
     * @param dp 1 if dropout, else 0
     * @param train 1 if you want to use training dataset, 0 if you want to use test dataset
     * @param lay set to 0
     * @return int prediction
     */
    int forwardProp(int image, int dp, int train, int lay)
    {
        // FORWARD PROPAGATION WITH 1 IMAGE
        int idx1, idx2, layer, imax, dc;
        int idx3, idx4, idx5, idx6;
        float sum, esum, max, rnd, pmax;
        int temp, temp2;
        // INPUT LAYER
        if (isDigits(inited) == 1 && layerSizes[MAXLAYER - numLayers] == WIDTH * WIDTH * COLORS / 2 / 2)
        { // Small Subset
            if (train == 1)
                for (int idx = 0; idx < WIDTH * WIDTH * COLORS / 2 / 2; idx++)
                    layers[MAXLAYER - numLayers][idx] = trainImages2[image][idx];
            else
                for (int idx = 0; idx < WIDTH * WIDTH * COLORS / 2 / 2; idx++)
                    layers[MAXLAYER - numLayers][idx] = testImages2[image][idx];
        }
        else if (isDigits(inited) == 1 && layerSizes[MAXLAYER - numLayers] == WIDTH * WIDTH)
        { // Full pictures
            if (train == 1)
                for (int idx = 0; idx < WIDTH * WIDTH * COLORS; idx++)
                    layers[MAXLAYER - numLayers][idx] = trainImages[image][idx];
            else
                for (int idx = 0; idx < WIDTH * WIDTH * COLORS; idx++)
                    layers[MAXLAYER - numLayers][idx] = testImages[image][idx];
        }
        else if (isDigits(inited) == 1 && layerSizes[MAXLAYER - numLayers] == trainColumns)
        { // Other
            if (train == 1)
                for (idx1 = 0; idx1 < trainColumns; idx1++)
                    layers[MAXLAYER - numLayers][idx1] = trainImages[image][idx1];
            else
                for (idx1 = 0; idx1 < trainColumns; idx1++)
                    layers[MAXLAYER - numLayers][idx1] = testImages[image][idx1];
        }
        if (SAVEVALUES)
        {
            write_float_in_file("save/image_preprocessed_c.json", layers[9], layerSizes[9] * layerChan[9]);
        }

        // HIDDEN LAYERS
        for (layer = MAXLAYER + 1 - numLayers; layer < MAXLAYER - 1; layer++)
        {
            if (lay != 0 && layer > lay)
                return -1;
            // CALCULATE DROPOUT
            // if (dropOutRatio>0.0) // ALWAYS SET TO 1 TO BE SAFE
            for (int idx = 0; idx < layerSizes[layer] * layerChan[layer]; idx++)
            {
                dropOut[layer][idx] = 1;
                if (dropOutRatio > 0.0 && dp == 1)
                {
                    rnd = (float)rand() / (float)RAND_MAX;
                    if (rnd < dropOutRatio)
                        dropOut[layer][idx] = 0;
                }
            }

            if (layerType[layer] == 0)
            { // FULLY CONNECTED LAYER
                fully_connected_process(layer, dp);
            }
            else if (layerType[layer] == 1)
            { // CONVOLUTION LAYER
                convolution_process(layer, dp);
            }
            else if (layerType[layer] >= 2)
            { // POOLING LAYER (2=max, 3=avg)
                pooling_process(layer, dp);
            }
            // APPLY DROPOUT
            if (dropOutRatio > 0.0 && DOpool == 1)
                for (idx1 = 0; idx1 < layerSizes[layer] * layerChan[layer]; idx1++)
                {
                    if (dp == 0)
                        layers[layer][idx1] = layers[layer][idx1] * (1 - dropOutRatio);
                    else if (dp == 1)
                        layers[layer][idx1] = layers[layer][idx1] * dropOut[layer][idx1];
                }
            // Save in file
            if (SAVEVALUES)
            {
                char name[30];
                sprintf(name, "save/layer%d_c.json", layer);
                write_float_in_file(name, layers[layer], layerSizes[layer] * layerChan[layer]);
            }
        }
        clock_t start, stop;
        if (DISPLAYTIME)
        {
            start = clock();
        }
        // OUTPUT LAYER - SOFTMAX ACTIVATION
        esum = 0.0;
        for (int iOut = 0; iOut < layerSizes[MAXLAYER - 1]; iOut++)
        {
            sum = 0.0;
            for (int iIn = 0; iIn < layerSizes[MAXLAYER - 2] + 1; iIn++)
            {
                float val = layers[MAXLAYER - 2][iIn];
                float weight = weights[MAXLAYER - 1][iIn * (layerSizes[MAXLAYER - 1]) + iOut];
                sum += val * weight;
            }
            // Bias
            sum += weights[MAXLAYER - 1][layerSizes[MAXLAYER - 1] * layerSizes[MAXLAYER - 2] + iOut];
            layers[MAXLAYER - 1][iOut] = exp(sum);
            if (layers[MAXLAYER - 1][iOut] > 1e30)
                return -1; // GRADIENTS EXPLODED
            esum += layers[MAXLAYER - 1][iOut];
        }

        // SOFTMAX FUNCTION
        max = layers[MAXLAYER - 1][0];
        imax = 0;
        for (int iNeuron = 0; iNeuron < layerSizes[MAXLAYER - 1]; iNeuron++)
        {
            if (layers[MAXLAYER - 1][iNeuron] > max)
            {
                max = layers[MAXLAYER - 1][iNeuron];
                imax = iNeuron;
            }
            layers[MAXLAYER - 1][iNeuron] = layers[MAXLAYER - 1][iNeuron] / esum;
        }
        prob = layers[MAXLAYER - 1][imax]; // ugly use of global variable :-(
        if (SAVEVALUES)
        {
            write_float_in_file("save/layer19_c.json", layers[19], layerSizes[19] * layerChan[19]);
        }
        if (DISPLAYTIME)
        {
            stop = clock();
            printf("Process Output layer %d in %f \n", layer, ((float)(stop - start)) / (float)CLOCKS_PER_SEC);
        }
        // prob0 = layers[MAXLAYER-1][0];
        // prob1 = layers[MAXLAYER-1][2];
        // prob2 = layers[MAXLAYER-1][4];
        return imax;
    }

    /**********************************************************************/
    /*      ACTIVATION FUNCTION                                           */
    /**********************************************************************/
    float ReLU(float x)
    {
        if (x > 0)
            return x;
        else
            return 0;
    }

    float TanH(float x)
    {
        return 2.0 / (1.0 + exp(-2 * x)) - 1.0;
    }

    /**
     * @brief Process the fully connected layer
     *
     * @param idxLayer number of the layer
     * @param dp dropout ratio
     */
    void fully_connected_process(int idxLayer, int dp)
    {
        float sum;
        clock_t start, stop;
        if (DISPLAYTIME)
        {
            start = clock();
        }
        for (int iOut = 0; iOut < layerSizes[idxLayer]; iOut++)
        {
            if (dropOutRatio == 0.0 || dp == 0 || DOdense == 0 || dropOut[idxLayer][iOut] == 1)
            {
                sum = 0.0;
                for (int iIn = 0; iIn < layerSizes[idxLayer - 1] * layerChan[idxLayer - 1]; iIn++)
                {
                    int idxWeigth = iIn * layerSizes[idxLayer] + iOut;
                    sum += layers[idxLayer - 1][iIn] * weights[idxLayer][idxWeigth];
                }
                // Bias
                sum += weights[idxLayer][layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] * layerSizes[idxLayer] + iOut];
                if (activation == 0)
                    layers[idxLayer][iOut] = sum;
                else if (activation == 1)
                    layers[idxLayer][iOut] = ReLU(sum);
                else
                    layers[idxLayer][iOut] = TanH(sum);
                // if (dropOutRatio>0.0 && dp==1) layers[idxLayer][i] = layers[idxLayer][i]  / (1-dropOutRatio);
                if (dropOutRatio > 0.0 && dp == 0 && DOdense == 1)
                    layers[idxLayer][iOut] = layers[idxLayer][iOut] * (1 - dropOutRatio);
            }
            else
                layers[idxLayer][iOut] = 0.0;
        }
        if (DISPLAYTIME)
        {
            stop = clock();
            printf("Process fully connected %d in %f \n", idxLayer, ((float)(stop - start)) / (float)CLOCKS_PER_SEC);
        }
        return;
    }

    /**
     * @brief Process the convolution layer
     *
     * @param idxLayer number of the layer
     * @param dp dropout ratio
     */
    void convolution_process(int idxLayer, int dp)
    {
        float sum;
        clock_t start, stop;
        if (DISPLAYTIME)
        {
            start = clock();
        }
        int dc = 0;
        if (layerPad[idxLayer] == 1)
            dc = layerConv[idxLayer] / 2;

        // Compute the convolution in thread
        pthread_t id_thr[NBROFTHREAD];
        struct THREADPARAM_S *params = (THREADPARAM_S *)calloc(NBROFTHREAD, sizeof(*params));
        for (int idx_thr = 0; idx_thr < NBROFTHREAD; idx_thr++)
        {
            params[idx_thr];
            params[idx_thr].begin = idx_thr * layerWidth[idxLayer] / NBROFTHREAD;
            params[idx_thr].end = (idx_thr + 1) * layerWidth[idxLayer] / NBROFTHREAD;
            params[idx_thr].idxLayer = idxLayer;
            params[idx_thr].dc = dc;

            pthread_create(&id_thr[idx_thr], NULL, runConvEngine, &params[idx_thr]);
        }

        for (int idx_thr = 0; idx_thr < NBROFTHREAD; idx_thr++)
        {
            pthread_join(id_thr[idx_thr], NULL);
        }
        free(params);

        // APPLY DROPOUT
        if (dropOutRatio > 0.0 && DOconv == 1)
            for (int idx1 = 0; idx1 < layerSizes[idxLayer] * layerChan[idxLayer]; idx1++)
            {
                if (dp == 0)
                    layers[idxLayer][idx1] = layers[idxLayer][idx1] * (1 - dropOutRatio);
                else if (dp == 1)
                    layers[idxLayer][idx1] = layers[idxLayer][idx1] * dropOut[idxLayer][idx1];
            }
        if (DISPLAYTIME)
        {
            stop = clock();
            printf("Process convolution %d in %f \n", idxLayer, ((float)(stop - start)) / (float)CLOCKS_PER_SEC);
        }
        return;
    }

    /**
     * @brief Process the max pooling layer
     *
     * @param layer number of the layer
     * @param dp dropout ratio
     */
    void pooling_process(int layer, int dp)
    {
        float sum, pmax;
        clock_t start, stop;
        if (DISPLAYTIME)
        {
            start = clock();
        }
        for (int iChanOut = 0; iChanOut < layerChan[layer]; iChanOut++)
            for (int iLargOut = 0; iLargOut < layerWidth[layer]; iLargOut++)
                for (int iHautOut = 0; iHautOut < layerWidth[layer]; iHautOut++)
                {
                    sum = 0.0;
                    pmax = -1e6;
                    for (int iLargIn = 0; iLargIn < layerConv[layer]; iLargIn++)
                    {
                        for (int iHautIn = 0; iHautIn < layerConv[layer]; iHautIn++)
                        {
                            int idxIn = (2 * iHautOut + iHautIn) * layerWidth[layer - 1] * layerChan[layer - 1] + (2 * iLargOut + iLargIn) * layerChan[layer - 1] + iChanOut;
                            if (layerType[layer] == 3)
                                sum += layers[layer - 1][idxIn];
                            else if (layers[layer - 1][idxIn] > pmax)
                                pmax = layers[layer - 1][idxIn];
                        }
                    }
                    int idxOut = iHautOut * layerChan[layer] * layerWidth[layer] + iLargOut * layerChan[layer] + iChanOut;
                    if (layerType[layer] == 3)
                        layers[layer][idxOut] = sum / layerConvStep2[layer];
                    else
                        layers[layer][idxOut] = pmax;
                }
        if (DISPLAYTIME)
        {
            stop = clock();
            printf("Process pooling %d in %f \n", layer, ((float)(stop - start)) / (float)CLOCKS_PER_SEC);
        }
        return;
    }

    void *runConvEngine(void *arg)
    {
        struct THREADPARAM_S *param = (THREADPARAM_S *)arg;
        int idxLayer = param->idxLayer;
        int dc = param->dc;
        for (int iHautOut = param->begin; iHautOut < param->end; iHautOut++)
            for (int iLargOut = 0; iLargOut < layerWidth[idxLayer]; iLargOut++)
                for (int iFilterOut = 0; iFilterOut < layerChan[idxLayer]; iFilterOut++)
                {
                    float sum = 0.0;
                    for (int iHautIn = 0; iHautIn < layerConv[idxLayer]; iHautIn++)
                        for (int iLargIn = 0; iLargIn < layerConv[idxLayer]; iLargIn++)
                            for (int iProfIn = 0; iProfIn < layerChan[idxLayer - 1]; iProfIn++)
                            {
                                int j3 = iLargOut + iLargIn - dc;
                                int i3 = iHautOut + iHautIn - dc;
                                int idxWeights = iFilterOut + iHautIn * layerConv[idxLayer] * layerChan[idxLayer - 1] * layerChan[idxLayer] + iLargIn * layerChan[idxLayer - 1] * layerChan[idxLayer] + iProfIn * layerChan[idxLayer];
                                float weight = weights[idxLayer][idxWeights];
                                if (i3 >= 0 && i3 < layerWidth[idxLayer - 1] && j3 >= 0 && j3 < layerWidth[idxLayer - 1])
                                {
                                    float val = layers[idxLayer - 1][i3 * layerWidth[idxLayer - 1] * layerChan[idxLayer - 1] + j3 * layerChan[idxLayer - 1] + iProfIn];
                                    // printf("val(%d;%d;%d) = %.16f\n", i3, j3, iProfIn, val);
                                    // printf("weight(%d;%d;%d;%d) = %.16f\n", iFilterOut, iHautIn, iLargIn, iProfIn, weight);
                                    sum += val * weight;
                                }
                                else
                                {
                                    sum -= imgBias * weight;
                                }
                            }
                    sum += weights[idxLayer][layerConvStep[idxLayer] * layerChan[idxLayer] + iFilterOut];
                    if (activation == 0)
                        sum = sum;
                    else if (activation == 1)
                        sum = ReLU(sum);
                    else
                        sum = TanH(sum);
                    int idx = iHautOut * layerWidth[idxLayer] * layerChan[idxLayer] + iLargOut * layerChan[idxLayer] + iFilterOut;
                    layers[idxLayer][idx] = sum;
                }
        return NULL;
    }

    void *runFullyLoad(void *arg)
    {
        struct THREADPARAM_S *param = (THREADPARAM_S *)arg;
        int idxLayer = param->idxLayer;
        for (int idxInput = param->begin; idxInput < param->end; idxInput++)
        {
            char *Node = get_tab_in_tab(param->layerWeights, idxInput);
            for (int iNeuron = 0; iNeuron < layerSizes[idxLayer]; iNeuron++)
            {
                float param = get_float_in_string(Node, iNeuron);
                int idx = idxInput * layerSizes[idxLayer] + iNeuron;
                weights[idxLayer][idx] = param;
            }
            free(Node);
        }
        for (int i = 0; i < layerSizes[idxLayer]; i++) // set biases
        {
            int idx = layerSizes[idxLayer] * layerSizes[idxLayer - 1] * layerChan[idxLayer - 1] + i;
            weights[idxLayer][idx] = get_float_in_string(param->layerBias, i);
        }
        return NULL;
    }
}