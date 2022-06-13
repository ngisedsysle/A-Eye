/**
 * @file encodageTM.h
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief Header for encodageTM.c
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include "../Circular_buffer/circular_buffer.h"

#ifndef _ENCODAGETM_H
#define _ENCODAGETM_H

    //STRUCTURES

    #ifndef H_TELEMESURE
    #define H_TELEMESURE

    /**
     * @brief Structure containing all the informations related to the TM format
     * 
     */
    typedef struct
    {
        int length; /*! <length of the TM*/
        char* addrContent; /*! <starting addr of the TM content*/
        char codeOp; /*! <codeOp of the TM*/
    } TELEMESURE;
    #endif

    #ifndef H_STRINGLENGTH
    #define H_STRINGLENGTH

    /**
     * @brief Structure for C string management
     * 
     */
    typedef struct
    {
        char length; /*! <Length of the string*/
        char* string; /*! <string*/
    } STRINGLENGTH;
    #endif

    // FUNCTIONS


    /**
     * @brief read a txt file containing the ack and outputs the ack in string format
     * 
     * @param filePath txt file containing the ack
     * @return char* ack in a string format
     */
    STRINGLENGTH* ackTxtFileReading(char* filePath);

    /**
     * @brief convert a string into a telemesure
     * 
     * @param inputString input string with the length
     * @param typeOfAck ack type
     * @return TELEMESURE* struct containing the starting addr of the data, codeOp and length
     */
    char* stringEncodedTM(STRINGLENGTH* inputString, unsigned char typeOfAck);

    /**
     * @brief convert an img into a telemesure
     * 
     * @param addr starting address of the img
     * @param length length of the img
     * @return TELEMESURE* struct containing the starting addr of the data, codeOp and length
     */
    char* imgEncodedTM(int length);

    /**
     * @brief get data from file and return the data in a char buffer
     * 
     * @param buffer out buffer
     * @param file filename 
     * @return int 
     */
    int imageInTM(char* buffer, char* file);

    /**
     * @brief convert a manual captured img to a TM
     * 
     * @param length length of the img
     * @return char* char* ptr to the TM
     */
    char *captureManuelle(int length);

    /**
     * @brief add corresponding codeop to the msg 
     * 
     * @param inputString the input message
     * @param codeOp corresponding codeOp
     * @param tm output string containing tm
     * @return char* tm : the tm
     */
    char* codeOpConcat(STRINGLENGTH *inputString, char codeOp, char *tm);

#endif