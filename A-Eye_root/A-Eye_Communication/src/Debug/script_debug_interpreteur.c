#include "interpreteur.h"
#include "encodageTM.h"
#include "decodageTC.h"

int main()
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
    char *bufferMsg = malloc(100 * sizeof(char));
    char buffer[100];
    main_s->buf_f_struct->cbuf = circular_buf_init(100);
    char *tc[] =
    {
        "10",
        "11",
        "12",
        "11",
        "21",
        "20",
        "10",
        "11",
        "11",
        "21",
        "20",
        "21",
        "20",
        "10",
        "11",
        "30"
    };
    int ret;
    for (int i = 0; i < sizeof(tc)/sizeof(tc[0]); i++)
    {
        printf("Client message : %s\n", tc[i]);
        if (decodeTC(main_s, tc[i]) == 0)
        printf("Not a TC\n");
        bufferMsg = interpreteur(main_s);
        if (main_s->buf_f_struct->new_data_f == true)
        {
            printf("Will be send : \n");
            printf("Code op : %d  ||  ", bufferMsg[0]);
            printf("Length : %d  ||  ", bufferMsg[4]);
            printf("Message : ");
            for (int n = 5; n < bufferMsg[4] + 5; n++)
                printf("%c", bufferMsg[n]);
        }
        printf("\n\n");
    }
}
