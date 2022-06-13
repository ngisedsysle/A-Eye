#include "encodageTM.h"


int main()
{
    STRINGLENGTH *string;
    char *bufferMsg;
    if ((bufferMsg = malloc(100*sizeof(char))) == NULL)
    {
        printf("erreur allocation mémoire \n");
        return -1;
    }
    if ((string = malloc(sizeof(STRINGLENGTH))) == NULL)
    {
        printf("erreur allocation mémoire \n");
        return -1;
    }  

    bufferMsg = "Process IA running";
    string->length = strlen(bufferMsg);
    if ((string->string = malloc(sizeof(char)*string->length)) == NULL)
        printf("erreur allocation memoire \n");
    string->string = bufferMsg;
    bufferMsg = stringEncodedTM(string, 4);
    return;
}