/**
 * @file struct_allocation.h
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief This file defines the structures used in CommunicationModule and the imports 
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <string.h>
#include <stdbool.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/stat.h>
#include "Circular_buffer/circular_buffer.h"

#ifndef _STRUCTALLOCATION_H
#define _STRUCTALLOCATION_H

/**
 * @brief Contains all the commands related flags 
 * 
 */
typedef struct cmd
{
    bool start; /*!<start/stop flag*/
    bool weights_update; /*!<flag*/
    bool change_mode; /*!<flag*/
} cmd;

/**
 * @brief Contains the informations needed for a weights update (not implemented)
 * 
 */
typedef struct weight_upd
{
    char *arch; /*!<Architecture of the CNN in the corresponding format*/
    char *filename; /*!<Name of the weight file*/
} weight_upd;

/**
 * @brief Contains informations concerning mode and capture flag
 * 
 */
typedef struct chg_mode
{
    char mode; /*!<Specify the current mode*/
    bool capture; /*!<flag to execute a manual capture*/
} chg_mode;

/**
 * @brief Contains the circular buffer handle and the new data flag
 */
typedef struct buf_f
{
    cbuf_handle_t cbuf;  /*!<pointer to the circular buffer (not implemented)*/
    bool new_data_f; /*!<flag for new string data*/
} buf_f;

/**
 * @brief Contains parameters concerning image transmissions
 * 
 */
typedef struct img
{
    bool img_f; /*!<flag when new boat image by IA*/
    bool capture_f; /*!<flag when the manual captured image is ready*/
    char *addr; /*!<starting addr of the image*/
    int length; /*!<length of the image*/
} img;

/**
 * @brief Main structures with all the informations for communication 
 *  
 */
typedef struct mainStruct 
{
    cmd *cmd_struct; /*!<command structure>*/
    chg_mode *chg_mode_struct; /*!<mode structure>*/
    weight_upd *weight_struct; /*!<weight update structure>*/
    buf_f *buf_f_struct; /*!<circular buffer struct>*/
    img *img_s; /*!<image structure>*/
    char *ack; /*!<String ack updated when receiving a TC>*/
    int fifo; /*!<ID of the FIFO for communication between AI and Communication>*/
    bool start_f; /*!<Start/stop flag used because start/stop not implemented yet>*/
} mainStruct;

#endif