#include "interpreteur.h"
#include "encodageTM.h"
#include "decodageTC.h"

int testDecodageTC() 
{
    mainStruct *main_s;
    if ((main_s = malloc(sizeof(mainStruct))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->img_s = malloc(sizeof(img))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->cmd_struct = malloc(sizeof(cmd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->chg_mode_struct = malloc(sizeof(chg_mode))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->weight_struct = malloc(sizeof(weight_upd))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    if ((main_s->buf_f_struct = malloc(sizeof(circular_buf_t) + sizeof(bool))) == NULL)
    {
        printf("erreur allocation mémoire\n");
        return -1;
    }
    char *bufferMsg;
    if ((bufferMsg = malloc(200*sizeof(char))) == NULL)
    {
        printf("erreur allocation mémoire \n");
        return -1;
    }
    char *init_buf;
    if ((init_buf = malloc(sizeof(char)*100)) == NULL)
    {
        printf("erreur allocation mémoire \n");
        return -1;
    }
    main_s->buf_f_struct->cbuf = circular_buf_init(100);
    circular_buf_reset(main_s->buf_f_struct->cbuf);
    char *msg; 
    char nbOfCodeOpToTest = 9;
    char *tabTest[] = 
    {
        "10",
        "12",
        "11",
        "21",
        "20",
        "30",
        "31",
        "40",
        "41"
    }; 
    int cnt = 0;
    int count = 0;
    for (int i = 0; i < nbOfCodeOpToTest; i++) 
    {
        msg = tabTest[i];
        main_s->cmd_struct->start = true;
        decodeTC(main_s, msg);
        switch(i) 
        {
            case 0 :
                if (main_s->cmd_struct->change_mode == true & main_s->chg_mode_struct->mode == 0)
                    cnt++;
                break;
            case 1 :
                if (main_s->cmd_struct->change_mode == true &  main_s->chg_mode_struct->mode == 2)
                    cnt++;
                break;
            case 2 :
                if (main_s->cmd_struct->change_mode == true & main_s->chg_mode_struct->mode == 1)
                    cnt++;
                break;
            case 3 :
                if (main_s->chg_mode_struct->capture == true & main_s->chg_mode_struct->mode == 1)
                    cnt++;
                break;
            case 4 : 
                if (main_s->chg_mode_struct->capture == false & main_s->chg_mode_struct->mode == 1)
                    cnt++;
                break;
            case 5 : 
                if (main_s->cmd_struct->start == false)
                    cnt++;
                break;
            case 6 : 
                if (main_s->cmd_struct->start == true)
                    cnt++;
                break;
            case 7 : 
                if (main_s->cmd_struct->weights_update == false)
                    cnt++;
                break;
            case 8 : 
                if (main_s->cmd_struct->weights_update == true)
                    cnt++;
                break;
            default :
                break;
        }
        interpreteur(main_s);
        switch(i) 
        {
            case 0 :
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Process IA running", bufferMsg) != NULL)
                    count++;  
                break;
            case 1 :
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Mode video", bufferMsg) != NULL)
                    count++;
                break;
            case 2 :
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Mode capture manuelle", bufferMsg) != NULL)
                    count++;
                break;
            case 3 :
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Capture", bufferMsg) != NULL)
                    count++;
                break;
            case 4 : 
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Mode capture manuelle", bufferMsg) != NULL)
                    count++;
                break;
            case 5 : 
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Closing ...", bufferMsg) != NULL)
                    count++;
                break;
            case 6 : 
                count++;
                break;
            case 7 : 
                count++;
                break;
            case 8 : 
                circular_buf_get(main_s->buf_f_struct->cbuf, bufferMsg);
                if (strstr("96Chargement des poids", bufferMsg) != NULL)
                    count++;
                break;
            default :
                break;
        }
    }
    if (cnt == 9) 
        printf("Test decodeTC successfull !\n");
    else 
        printf("Test decodeTC unsuccessfull :( \n");
    if (count == 9) 
        printf("Test interpeteur successfull !\n");
    else 
        printf("Test interpreteur unsuccessfull :( \n");
    return 1;
}

int main() {
    testDecodageTC();
    return 1;
}