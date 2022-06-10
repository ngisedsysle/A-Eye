#include "preprocess.h"
/**
 * This file is designed to test the functions contained in preprocess_ddr.c 
 */


/**
 * @brief test the readImgBmp function
 * 
 */
void testReadImgBmp() {
    char *testFilename = "pict.bmp";
    FILE *filePtr;  //our file pointer
    BITMAPFILEHEADER bitmapFileHeader;  //our bitmap file header
    BITMAPINFOHEADER *bitmapInfoHeader;  //our bitmap info header
    unsigned char *bitmapImage;  //store image data
    int imageIdx=0;  //image index counter
    unsigned char tempRGB;  //our swap variable

    //open file in read binary mode
    filePtr = fopen(testFilename,"rb");
    if (filePtr == NULL)
        printf("failed to open the file \n");

    unsigned char fileData[1228938];
    fread(fileData, 1228938, 1, filePtr);

    unsigned char* ret = readImg(&fileData[0], 640, 480); 
    unsigned char result[4] = {0x1a, 0x2c, 0x74, 0x1a};
    int count = 0;
    for (int i =0; i<4; i++)
    {
        if (ret[i] == result[i])
            count++;
    }
    if (count == 4)
        printf("test readImgBmp successfull \n");
    else 
        printf("test readImgBmp unsuccessfull\n");
}


/**
 * @brief Test le resize
 * 
 */
void testResize()
{
    unsigned char testImg[48] =  
    {
    1,1,1,
    0,0,0,
    0,0,0,
    1,1,1,
    1,1,1,
    0,0,0,
    0,0,0,
    1,1,1,
    1,1,1,
    0,0,0,
    0,0,0,
    1,1,1,
    1,1,1,
    0,0,0,
    0,0,0,
    1,1,1,
    };
    unsigned char resultTab[24] = 
    {
    0,0,0,
    0,0,0,
    0,0,0,
    0,0,0,
    0,0,0,
    0,0,0,
    0,0,0,
    0,0,0  
    };
    unsigned char* ret = resizeImg(testImg, 4,4,2);
    int count = 0;
    for (int i=0; i < 24; i++) 
    {
        if (ret[i] == resultTab[i])
            count++;
    }
        
    if (count == 24) 
        printf("test resizeImg successfull\n");
    else 
        printf("test resizeImg unsuccessfull\n");

}

/**
 * @brief Test the rescaling function
 * 
 */
void testRescaling() 
{
    unsigned char testImg[9] = 
    {
    255,255,255,
    51,51,51,
    0,0,0
    };
    float resultTab[9] =
    {
    1,1,1,
    -0.6,-0.6,-0.6,
    -1,-1,-1
    };
    int count = 0;
    float *ret = rescaling(testImg, 1,3);
    for (int i=0; i<9; i++) 
    {
        if (ret[i] == resultTab[i])
            count++;
    }
    if (count == 9)
        printf("test rescaling successfull\n");
    else 
        printf("test rescaling unsuccessfull\n");
}

/**
 * @brief Test the avgPooling
 */
void testavgPooling() 
{
    unsigned char tabTest[48] = 
    {
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0
    };
    unsigned char *ret = avgPooling(tabTest, 4, 4, 2);
    unsigned char result[12] = {0,0,127,127,0,0,0,0,127,127,0,0};
    int count = 0;
    for (int i = 0; i<12; i++)
    {
        if (ret[i] == result[i]) 
            count++;
    }
    if (count == 12)
        printf("test avgPooling successfull\n");
    else 
        printf("test avgPooling unsuccessfull\n");
}

void testEncodeCSV() 
{
    unsigned char tab[] = {1,2,3,4};
    int size = encodeInCSV((unsigned char *)&tab, 4);
    if (size == 7)
        printf("testEncodeCSV successfull\n");
    else 
        printf("testEncodeCSV unsuccessfull\n");
}


void testMaxPooling() 
{
    unsigned char tabTest[48] = 
    {
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0,
    0,0,254,
    0,0,0,
    0,0,0,
    254,0,0
    };
    unsigned char *ret = maxPooling(tabTest, 4, 4, 2);
    unsigned char result[12] = {0,0,254,254,0,0,0,0,254,254,0,0};
    int count = 0;
    for (int i = 0; i<12; i++)
    {
        if (ret[i] == result[i]) 
            count++;
    }
    if (count == 12)
        printf("test maxPooling successfull\n");
    else 
        printf("test maxPooling unsuccessfull\n");
}


int main() 
{
    // testReadImgBmp();
    // testavgPooling();
    // testResize();
    // testRescaling();
    // testMaxPooling();
    // testEncodeCSV();
    preprocess("../temp.bmp");
    return 0; 
}

