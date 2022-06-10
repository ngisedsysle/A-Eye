/**
 * @file preprocess.c
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief This file implements different kind of functions used for preprocess an image before feeding the AI
 * @version 0.1
 * @date 2022-05-31
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "preprocess.h"

// unsigned char *ptr_img =0x1ffeae00;

unsigned char *readImg(unsigned char *addr, int width, int height)
{
    unsigned char *img;
    unsigned char *ptr_img = (unsigned char *)addr;
    if ((img = malloc((width * height * 3) * sizeof(unsigned char))) == NULL)
        printf("erreur allocation mémoire \n");
    img = ptr_img;
    return img;
}

unsigned char *resizeImg(unsigned char *bmpImg, int width_img, int height_img, int pixelsToCrop)
{
    unsigned char *bmpImgResized;
    if ((bmpImgResized = malloc((width_img * height_img * 3 - pixelsToCrop * 3) * sizeof(unsigned char))) == NULL)
        printf("erreur allocation mémoire \n");
    int out_width = width_img - pixelsToCrop;
    int out_heigth = height_img;
    int colors = 3;
    for (int idx_out_height = 0; idx_out_height < out_heigth; idx_out_height++)
    {
        for (int idx_out_width = 0; idx_out_width < out_width; idx_out_width++)
        {
            for (int color = 0; color < colors; color++)
            {
                int idx_in_width = idx_out_width + pixelsToCrop / 2;
                int idx_in_height = idx_out_height;
                bmpImgResized[(idx_out_height * out_width + idx_out_width) * colors + color] =
                    bmpImg[idx_out_height * width_img * colors + idx_in_width * colors + color];
            }
        }
    }
    // for (int height = 0; height < height_img; height++)
    // {
    //     for (int width = (((pixelsToCrop / 2) * 3) + ((height * width_img) * 3)); width < ((width_img * (height + 1) * 3) - ((pixelsToCrop / 2) * 3)); width++)
    //     {
    //         bmpImgResized[width - ((pixelsToCrop / 2) * 3 + (width_img * (height)))] = bmpImg[width];
    //         bmpImgResized[width_img * height + width] = bmpImg[width];
    //     }
    // }
    return bmpImgResized;
}

unsigned char *avgPooling(unsigned char *img, int width, int height, unsigned char poolingLength)
{
    unsigned char lengthImgData = width * height;
    unsigned char countR = 0, countG = 1, countB = 2, idx = 0;
    unsigned int avgR = 0, avgG = 0, avgB = 0;
    unsigned char pxR[(height * width) / 3], pxG[(height * width) / 3], pxB[(height * width) / 3];
    unsigned char count = 0;
    unsigned char *imgPooled;
    if ((imgPooled = (unsigned char *)malloc(((width * height) / 2) * sizeof(unsigned char))) == NULL)
        printf("erreur allocation mémoire \n");
    // for (int i = 0; i < (width * height) / (3 * poolingLength); i)
    // {
    //     for (int n = 0; n < poolingLength; n++)
    //     {
    //         if (n == 1)
    //         {
    //             pxR[idx] = img[countR];
    //             pxG[idx] = img[countG];
    //             pxB[idx] = img[countB];
    //             countR += (width - 3);
    //             countG += (width - 3);
    //             countB += (width - 3);
    //             idx++;
    //             continue;
    //         }
    //         pxR[idx] = img[countR];
    //         pxG[idx] = img[countG];
    //         pxB[idx] = img[countB];
    //         countR += 3;
    //         countG += 3;
    //         countB += 3;
    //         idx++;
    //     }
    //     i++;
    //     if (i % 2 != 0)
    //     {
    //         countR = width * ((i)-0.5);
    //         countG = width * ((i)-0.5) + 1;
    //         countB = width * ((i)-0.5) + 2;
    //     }
    // }
    // for (int i = 0; i < (width * height) / (3 * poolingLength); i++)
    // {
    //     avgR = 0;
    //     avgR = 0;
    //     avgB = 0;
    //     for (int n = 0; n < poolingLength; n++)
    //     {
    //         avgR += pxR[count];
    //         avgG += pxG[count];
    //         avgB += pxB[count];
    //         count++;
    //     }
    //     avgR = avgR / 4;
    //     pxR[i] = avgR;
    //     avgG = avgG / 4;
    //     pxG[i] = avgG;
    //     avgB = avgB / 4;
    //     pxB[i] = avgB;
    // }
    // countR = 0;
    // countG = 1;
    // countB = 2;
    // for (int i = 0; i < poolingLength; i++)
    // {
    //     imgPooled[countR] = pxR[i];
    //     imgPooled[countG] = pxG[i];
    //     imgPooled[countB] = pxB[i];
    //     countR += 3;
    //     countG += 3;
    //     countB += 3;
    // }
    // return imgPooled;

    int colors = 3;
    int sum = 0;
    for (int iColor = 0; iColor < colors; iColor++)
        for (int iLargOut = 0; iLargOut < width / poolingLength; iLargOut++)
            for (int iHautOut = 0; iHautOut < height / poolingLength; iHautOut++)
            {
                sum = 0;
                for (int iLargIn = 0; iLargIn < poolingLength; iLargIn++)
                {
                    for (int iHautIn = 0; iHautIn < poolingLength; iHautIn++)
                    {
                        int idxIn = (poolingLength * iHautOut + iHautIn) * width * colors + (poolingLength * iLargOut + iLargIn) * colors + iColor;
                        sum += img[idxIn];
                    }
                }
                int idxOut = iHautOut * colors * width / poolingLength + iLargOut * colors + iColor;
                imgPooled[idxOut] = sum / (poolingLength * poolingLength);
            }
    return imgPooled;
}

float *rescaling(unsigned char *img, int height, int width)
{
    float *imgRescaled;
    if ((imgRescaled = malloc(height * width * sizeof(float))) == NULL)
        printf("erreur allocation mémoire \n");
    for (int i = 0; i < height * width * 3; i++)
    {
        imgRescaled[i] = (float)((img[i] / 127.5) - 1);
    }
    return imgRescaled;
}

unsigned char *maxPooling(unsigned char *img, int width, int height, unsigned char poolingLength)
{
    unsigned char lengthImgData = width * height;
    unsigned char countR = 0, countG = 1, countB = 2, idx = 0;
    unsigned int maxR = 0, maxG = 0, maxB = 0;
    unsigned char pxR[(height * width) / 3], pxG[(height * width) / 3], pxB[(height * width) / 3];
    unsigned char count = 0;
    unsigned char *imgPooled;
    if ((imgPooled = (unsigned char *)malloc((width / 2 * height / 2) * 3 * sizeof(unsigned char))) == NULL)
        printf("erreur allocation mémoire \n");

    int colors = 3;
    int pmax = 0;
    for (int iColor = 0; iColor < colors; iColor++)
        for (int iLargOut = 0; iLargOut < width / poolingLength; iLargOut++)
            for (int iHautOut = 0; iHautOut < height / poolingLength; iHautOut++)
            {
                pmax = 0;
                for (int iLargIn = 0; iLargIn < poolingLength; iLargIn++)
                {
                    for (int iHautIn = 0; iHautIn < poolingLength; iHautIn++)
                    {
                        int idxIn = (poolingLength * iHautOut + iHautIn) * width * colors + (poolingLength * iLargOut + iLargIn) * colors + iColor;
                        if (img[idxIn] > pmax)
                            pmax = img[idxIn];
                    }
                }
                int idxOut = iHautOut * colors * width / poolingLength + iLargOut * colors + iColor;
                imgPooled[idxOut] = pmax;
            }
    return imgPooled;
}

unsigned char *LoadBitmapFile(char *filename, BITMAPINFOHEADER *bitmapInfoHeader)
{
    FILE *filePtr;                     // our file pointer
    BITMAPFILEHEADER bitmapFileHeader; // our bitmap file header
    unsigned char *bitmapImage;        // store image data
    int imageIdx = 0;                  // image index counter
    unsigned char tempRGB;             // our swap variable

    // open file in read binary mode
    filePtr = fopen(filename, "rb");
    if (filePtr == NULL)
        return NULL;

    // read the bitmap file header
    fread(&bitmapFileHeader, sizeof(BITMAPFILEHEADER), 1, filePtr);

    // verify that this is a .BMP file by checking bitmap id
    if (bitmapFileHeader.fType != 0x4D42)
    {
        fclose(filePtr);
        printf("Mauvais format de fichier ! \n");
        return NULL;
    }

    // read the bitmap info header
    fread(bitmapInfoHeader, sizeof(BITMAPINFOHEADER), 1, filePtr);

    // move file pointer to the beginning of bitmap data
    fseek(filePtr, bitmapFileHeader.fOffBits, SEEK_SET);

    // allocate enough memory for the bitmap image data
    bitmapImage = (unsigned char *)malloc(bitmapInfoHeader->sizeImage);

    // verify memory allocation
    if (!bitmapImage)
    {
        free(bitmapImage);
        fclose(filePtr);
        return NULL;
    }

    // read in the bitmap image data
    fread(bitmapImage, bitmapInfoHeader->sizeImage, 1, filePtr);

    // make sure bitmap image data was read
    if (bitmapImage == NULL)
    {
        fclose(filePtr);
        return NULL;
    }

    // swap the R and B values to get RGB (bitmap is BGR)
    for (imageIdx = 0; imageIdx < bitmapInfoHeader->sizeImage; imageIdx += 3)
    {
        tempRGB = bitmapImage[imageIdx];
        bitmapImage[imageIdx] = bitmapImage[imageIdx + 2];
        bitmapImage[imageIdx + 2] = tempRGB;
    }

    // close file and return bitmap image data
    fclose(filePtr);
    return bitmapImage;
}

void encodageBMP(unsigned char *addr, int width, int height)
{
    unsigned char *ptr_img = (unsigned char *)addr;
    BITMAPFILEHEADER *fileheader;
    if ((fileheader = malloc(sizeof(BITMAPFILEHEADER))) == NULL)
        printf("erreur allocation mémoire \n");

    BITMAPINFOHEADER *infoheader;
    if ((infoheader = malloc(sizeof(BITMAPINFOHEADER))) == NULL)
        printf("erreur allocation mémoire \n");

    // Création du FileHeader
    int sizeOfFileHeader = 14;
    int sizeOfInfoHeader = 40;

    fileheader->fType = (0x4d42);
    fileheader->fSize = ((width * height * 3) + sizeOfInfoHeader + sizeOfFileHeader) - 1;
    fileheader->fReserved1 = 0;
    fileheader->fReserved2 = 0;
    fileheader->fOffBits = (unsigned int)sizeOfFileHeader + sizeOfInfoHeader;

    // Création de l'InfoHeader

    infoheader->size = 0x0000028;
    infoheader->width = (unsigned int)width;
    infoheader->height = (unsigned int)height;
    infoheader->planes = 0x0001;
    infoheader->bitCount = 0x0018;
    infoheader->compression = 0;
    infoheader->sizeImage = 0; //(unsigned int) width*height*3
    infoheader->xPelsPerMeter = 0x00000EC3;
    infoheader->yPelsPerMeter = 0x00000EC3;
    infoheader->clrUsed = 0;
    infoheader->clrImportant = 0;

    // Ecriture des données header dans un fichier

    FILE *imageFile = fopen("temp.bmp", "wb");
    fwrite(fileheader, sizeof(BITMAPFILEHEADER), 1, imageFile);
    fwrite(infoheader, sizeof(BITMAPINFOHEADER), 1, imageFile);
    free(fileheader);
    free(infoheader);
    // Ecriture des données de l'image dans le fichier avec inversion des couleurs
    int n = 2;
    for (int i = 0; i < width * height; i++)
    {
        for (n; n >= ((i + 1) * 3) - 2; n--)
        {
            fwrite((ptr_img + n), sizeof(unsigned char), 1, imageFile);
        }
        n += 6;
    }
    char *completion;
    char a = 0;
    completion = &a;
    fwrite(completion, sizeof(char), 1, imageFile);
    fwrite(completion, sizeof(char), 1, imageFile);
    fwrite(completion, sizeof(char), 1, imageFile);

    fclose(imageFile);
}

int encodeInCSV(unsigned char *img, int length)
{
    FILE *file = fopen("../temp.csv", "wb");
    if (file == NULL)
    {
        printf("erreur d'ouverture du fichier\n");
        return -1;
    }
    char *tab = calloc(sizeof(char), 4 * length);
    char *ptr = tab;
    char retourLigne = '\n';
    char virgule = ',';
    int size = 0;
    for (int i = 0; i < length; i++)
    {
        int nbr_char = sprintf(ptr, "%d", img[i]);
        ptr += nbr_char;
        size += nbr_char;
        if (i != length - 1)
        {
            *ptr = ',';
            ptr++;
            size++;
        }
        else
        {
            *ptr = '\n';
            ptr++;
            size++;
        }
    }
    int nbr_write = fwrite(tab, 1, size, file);
    fclose(file);
    free(tab);
    return size;
}

void preprocess(char *filename)
{
    BITMAPINFOHEADER *bitmapinfoheader;
    if ((bitmapinfoheader = malloc(sizeof(BITMAPINFOHEADER))) == NULL)
        printf("erreur allocation memoire\n");
    unsigned char *img = LoadBitmapFile(filename, bitmapinfoheader);
    free(bitmapinfoheader);
    unsigned char *resizedimg = resizeImg(img, 640, 480, 160);
    free(img);
    unsigned char *pooledImg = maxPooling(resizedimg, 480, 480, 2);
    free(resizedimg);
    encodageBMP(pooledImg, 240, 240);
    encodeInCSV(pooledImg, 172800);
    free(pooledImg);
}
