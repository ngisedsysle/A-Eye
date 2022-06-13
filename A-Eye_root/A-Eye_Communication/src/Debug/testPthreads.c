#include<pthread.h>
#include<stdio.h>
#include<stdio.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<fcntl.h>
#include<pthread.h>



void* thread1() 
{
    printf("je suis dans le thread 1\n");
    int fd;
    printf("opening\n");
    if((fd = open("IAtoINT", O_RDWR)) == -1)
    {
        printf("could not open pipe\n");
        return NULL;
    }
    printf("opened\n");
    int x = 89;
    if(write(fd, &x, sizeof(x)) == -1)
    {
        printf("Pipe writing error\n");
        return NULL;
    }
    int y;
    if(read(fd, &y, sizeof(y)) == -1)
    {
        printf("Pipe reading error\n");
        return NULL;
    }
    printf("value read first time : %d\n", y);
    int z;
    if(read(fd, &z, sizeof(y)) == -1)
    {
        printf("Pipe reading error\n");
        return NULL;
    }
    printf("value read second time : %d\n", z);
    close(fd);
    return NULL;
}

void* thread2() 
{
    printf("je suis dans le thread 2\n");
    return NULL;
}

int main()
{
    pthread_t thr1;
    pthread_t thr2;

    

    pthread_create(&thr1, NULL, &thread1, NULL);
    pthread_create(&thr2, NULL, &thread2, NULL);
    printf("This line may be printed"
           " before thread terminates\n");
    
    pthread_join(thr1, NULL);
    printf("Thread 1 has ended\n");

    pthread_join(thr2, NULL);
    printf("Thread 2 has ended\n");

    printf("This line will be printed"
           " after thread ends\n");
  
    pthread_exit(NULL);
    return 1;
    
}