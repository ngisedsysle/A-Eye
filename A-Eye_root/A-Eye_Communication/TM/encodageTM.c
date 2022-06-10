/**
 * @file encodageTM.c
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief This file implements differents functions for TM encoding
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "encodageTM.h"

STRINGLENGTH *ackTxtFileReading(char *filePath)
{
    char buffer[50];
    STRINGLENGTH *str;
    FILE *inputFile = fopen(filePath, "r");
    if (inputFile == NULL)
        printf("impossible d'ouvrir le fichier\n");
    int i = 0;
    while (!feof(inputFile))
    {
        buffer[i] = fgetc(inputFile);
        i++;
    }

    str->length = i;
    str->string = &buffer[0];
    return str;
}

char* codeOpConcat(STRINGLENGTH *inputString, char codeOp, char *tm)
{
    char *tmHeader;
    tmHeader = malloc(5 * sizeof(char));
    if (tmHeader == NULL)
        printf("erreur allocation mémoire \n");

    tmHeader[0] = codeOp;
    tmHeader[1] = 0;
    tmHeader[2] = 0;
    tmHeader[3] = 0;
    tmHeader[4] = inputString->length;
    memcpy(tm, tmHeader, 5);
    memcpy(tm+5, inputString->string,inputString->length);
    return tm;
}

char *stringEncodedTM(STRINGLENGTH *inputString, unsigned char typeOfAck)
{
    char codeOp;
    char *tm;
    if ((tm = calloc(sizeof(char),inputString->length + 5)) == NULL)
        printf("erreur allocation memoire \n");
    switch (typeOfAck)
    {
    case 0: // chg_mode_ack
        codeOp = 0x10;
        tm = codeOpConcat(inputString, codeOp, tm);
        break;
    case 1: // takePct ack
        codeOp = 0x20;
        tm = codeOpConcat(inputString, codeOp, tm);
        break;
    case 2: // startStopFlag
        codeOp = 0x30;
        tm = codeOpConcat(inputString, codeOp, tm);
        break;
    case 3: // loadWeights
        codeOp = 0x40;
        tm = codeOpConcat(inputString, codeOp, tm);
        break;
    case 4: // arbitrary string
        codeOp = 0x60;
        tm = codeOpConcat(inputString, codeOp, tm);
        break;
    }
    return tm;
}

char *imgEncodedTM(int length)
{
    char *imgTM = malloc((length * sizeof(unsigned char)) + 6 * sizeof(char));
    if (imgTM == NULL)
    {
        printf("erreur allocation mémoire \n");
        return NULL;
    }
    imgTM[0] = (char)0x50;
    imgTM[1] = (length >> 24) & 0xFF;
    imgTM[2] = (length >> 16) & 0xFF;
    imgTM[3] = (length >> 8) & 0xFF;
    imgTM[4] = length & 0xFF;
    imageInTM(&imgTM[5], "../../temp.bmp");
    return imgTM;
}

char *captureManuelle(int length)
{
    char *imgTM = malloc((length * sizeof(unsigned char)) + 6 * sizeof(char));
    if (imgTM == NULL)
    {
        printf("erreur allocation mémoire \n");
        return NULL;
    }
    imgTM[0] = (char)0x70;
    imgTM[1] = (length >> 24) & 0xFF;
    imgTM[2] = (length >> 16) & 0xFF;
    imgTM[3] = (length >> 8) & 0xFF;
    imgTM[4] = length & 0xFF;
    imageInTM(&imgTM[5], "../../temp.bmp");
    return imgTM;
}

int imageInTM(char *buffer, char *fileName)
{
    FILE *file = fopen(fileName, "r");
    int len = 0;
    len += fread(buffer + len, 1, 921656, file);
    return len;
}
