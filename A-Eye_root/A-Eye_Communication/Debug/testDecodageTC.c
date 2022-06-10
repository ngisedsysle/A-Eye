#include "decodageTC.h"


void testDecodageTC() 
{
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
    for (int i = 0; i < nbOfCodeOpToTest; i++) 
    {

        msg = tabTest[i];
        decodeTC(msg);
        switch(i) 
        {
            case 0 :
                if (cmd_s->change_mode == true & chg_mode_s->mode == 0)
                    cnt++;
                break;
            case 1 :
                if (cmd_s->change_mode == true & chg_mode_s->mode == 2)
                    cnt++;
                break;
            case 2 :
                if (cmd_s->change_mode == true & chg_mode_s->mode == 1)
                    cnt++;
                break;
            case 3 :
                if (chg_mode_s->capture == true & chg_mode_s->mode == 1)
                    cnt++;
                break;
            case 4 : 
                if (chg_mode_s->capture == false & chg_mode_s->mode == 1)
                    cnt++;
                break;
            case 5 : 
                if (cmd_s->start == false)
                    cnt++;
                break;
            case 6 : 
                if (cmd_s->start == true)
                    cnt++;
                break;
            case 7 : 
                if (cmd_s->weights_update == false)
                    cnt++;
                break;
            case 8 : 
                if (cmd_s->weights_update == true)
                    cnt++;
                break;
            default :
                break;
        }
    }
    if (cnt == 9) 
        printf("Test successfull !\n");
    else 
        printf("Test unsuccessfull :( \n");
}

int main() {
    cmd_s = malloc(sizeof(cmd));
    chg_mode_s = malloc(sizeof(chg_mode));
    weight_s = malloc(sizeof(weight_upd));
    testDecodageTC();
    return 1;
}