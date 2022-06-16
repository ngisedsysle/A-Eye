/**
 * @file tcp_server.h
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief Header for tcp_server.c
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */
extern "C"{
#include<stdio.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
#include<sys/stat.h>
#include<sys/types.h>
#include<pthread.h>
#include<fcntl.h>
#include "../TC/decodageTC.h"
#include "../TM/encodageTM.h"


#ifndef _TCPSERVER_H
#define _TCPSERVER_H

/**
 * @brief Socket descriptor
 * 
 */
typedef struct socket_thr_s 
{
    int sock; /*! <id of the socket*/
    int socket_desc; /*! <socket descriptor */
} socket_thr_s;

/**
 * @brief Create a tcp socket 
 * 
 * @return short 
 */
short SocketCreate(void);

/**
 * @brief Bind an existing socket to a port and accepting any incoming addr
 * 
 * @param hSocket ref to the socket
 * @return int 
 */
int BindCreatedSocket(int hSocket);

/**
 * @brief Thread for tcp receive. Constantly receive and decode any incoming TC.
 * 
 * @param arg socket informations passed by pthread_create()
 * @return void* 
 */
void *thread_rcv(void *arg);

/**
 * @brief Thread for tcp sending. Polling on flags to send whenever there is a new ack, an image is processed or manual capture.
 * 
 * @param arg socket informations passed by pthread_create()
 * @return void* 
 */
void *thread_send(void *arg);


/**
 * @brief Thread for fifo polling. Update the processed image flag whenever a positive prediction is returned.
 * 
 * @param arg socket informations passed by pthread_create()
 * @return void* 
 */
void *thread_pred(void *arg);
}
#endif