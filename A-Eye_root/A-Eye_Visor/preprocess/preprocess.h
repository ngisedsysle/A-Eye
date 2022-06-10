/**
 * @file PREPROCESS.H
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief header file for preprocess.c
 * @version 0.1
 * @date 2022-05-31
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/stat.h>
#include<unistd.h>
#include<dirent.h>
#include <byteswap.h>


#ifndef _PREPROCESS_H
#define _PREPROCESS_H

    //STRUCTURES 
    #ifndef H_BITMAPFILEHEADER
    #define H_BITMAPFILEHEADER
    
    typedef struct __attribute__((__packed__)) BITMAPFILEHEADER
    {
        unsigned short fType;  //specifies the file type
        unsigned int fSize;  //specifies the size in bytes of the bitmap file
        unsigned short fReserved1;  //reserved; must be 0
        unsigned short fReserved2;  //reserved; must be 0
        unsigned int fOffBits;  //specifies the offset in bytes from the bitmapfileheader to the bitmap bits
    }BITMAPFILEHEADER;

    #endif

    #ifndef H_BITMAPINFOHEADER
    #define H_BITMAPINFOHEADER

    typedef struct __attribute__((__packed__)) BITMAPINFOHEADER
    {
        unsigned int size;  //specifies the number of bytes required by the struct
        unsigned int width;  //specifies width in pixels
        unsigned int height;  //specifies height in pixels
        unsigned short planes;  //specifies the number of color planes, must be 1
        unsigned short bitCount;  //specifies the number of bits per pixel
        unsigned int compression;  //specifies the type of compression
        unsigned int sizeImage;  //size of image in bytes
        unsigned int xPelsPerMeter;  //number of pixels per meter in x axis
        unsigned int yPelsPerMeter;  //number of pixels per meter in y axis
        unsigned int clrUsed;  //number of colors used by the bitmap
        unsigned int clrImportant;  //number of colors that are important
    }BITMAPINFOHEADER;

    #endif

    // FUNCTIONS

    /**
     * @brief read a 640*480 image
     * 
     * @param addr addr of the first data stored in the memory
     * @param width width of the image 
     * @param height  height of the image 
     * @return unsigned char* addr of the first element of an array containing the img data
     */
    unsigned char* readImg(unsigned char* addr, int width, int height);

    /**
     * @brief this function crop the image on the side to have a squared shaped image.
     * 
     * @param bmpImg array of the input image samples stored as [pxR1,pxG1,pxB1,pxR2,pxG2,pxB2, ...]
     * @param width width of the input image
     * @param height height of the input image
     * @param pixelsToCrop sum of cropping on both sides
     * @return unsigned* pointer to the resized image
     */
    unsigned char* resizeImg(unsigned char* bmpImg, int width, int length, int pixelsToCrop);

    /**
     * @brief This function performs an average pooling on an img stored as [pxR1,pxG1,pxB1,pxR2,pxG2,pxB2, ...]
     * 
     * @param img array containing samples of the images stored as [pxR1,pxG1,pxB1,pxR2,pxG2,pxB2, ...]
     * @param height height of the image
     * @param poolingLength size of the pooling filter. always square shaped (if pooling is 2, kernel is 2*2)
     * @return unsigned char* pointer to the pooled img. 
     */
    unsigned char* avgPooling(unsigned char* img, int width, int height, unsigned char poolingLength);

    /**
     * @brief Performs a rescaling on the pixels value. Change values from [0;255] to [-1;1]
     * 
     * @param img input img stored as [pxR1,pxG1,pxB1,pxR2,pxG2,pxB2, ...]
     * @param height height of the image
     * @param width width of the image. must be *3 if the image is RGB 
     * @return float* 
     */
    float* rescaling(unsigned char* img, int height, int width);

    /**
     * @brief performs a max pooling on the input img 
     * 
     * @param img input img
     * @param width of the input img
     * @param height of the input img
     * @param poolingLength side of the square pooling window (ex poolingLength = 2 is a (2,2) window)
     * @return unsigned char* maxPooled img allocated
     */
    unsigned char* maxPooling(unsigned char* img, int width, int height, unsigned char poolingLength);

    /**
     * @brief Load a bmp from a file path and store the data in RGB into a unsigned char[]
     * @param *filename 
     * @param *bitmapinfoheader 
     * @return img in unsigned char[]
     */
    unsigned char *LoadBitmapFile(char *filename, BITMAPINFOHEADER *bitmapInfoHeader);
    
    /**
     * @brief Save the input image into a BMP file named temp.bmp
     * 
     * @param addr starting address the img data
     * @param width width of the img
     * @param height height of the img
     */
    void encodageBMP(unsigned char *addr, int width, int height);

    /**
     * @brief take input data and write into a temp.csv file
     * 
     * @param img the input data to write
     * @param length the length of the data
     * @return int -1 if failed, else 0
     */
    int encodeInCSV(unsigned char * img, int length);

    /**
     * @brief Execute the global preprocess of an img 
     * (loading, resize, pooling and produce a temp.bmp in original dimensions
     * and a temp.csv in AI dimensions)
     * 
     * @param filename path to the img
     */
    void preprocess(char *filename);



#endif
