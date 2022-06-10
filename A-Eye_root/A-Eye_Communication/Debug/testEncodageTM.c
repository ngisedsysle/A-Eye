#include "encodageTM.h"

void testStringEncodedTM(void) 
{
    printf("Test string TM encoding sucessfull \n");
}

void testImgEncodedTM(void) 
{
    char *result[] = {
        0x5,
        0,
        1,
        221,
        46
    };
    char* ret  = imgEncodedTM(NULL, 122158);
    int count = 0;
    for(int i = 0; i < 5; i++) 
    {
        if(ret[i] == result[i])
            count++;
    }
    if(count == 5)
        printf("Test img TM encoding successfull \n");
    else 
        printf("Test img TM encoding unsuccessfull\n");
}

int main()
{
    testImgEncodedTM();
}