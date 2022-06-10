/**
 * @file decodageTC.c
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief This file implements the decodeTC function
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <stdio.h> 
#include <stdint.h>
#include <stdbool.h>
#include <stdio.h>
#include "decodageTC.h"

int decodeTC(mainStruct *main_s, char *msg) 
{   
    // Test the first byte of the msg,
    // for TC, values can be 1, 2, 3, 4
    switch(msg[0])
    {
        // mode change, second byte will specify the mode 
        case '1' :
            main_s->cmd_struct->change_mode = true;
            // read and update the corresponding mode
            switch(msg[1])
            {
                case '0' :
                    main_s->chg_mode_struct->mode = 0;
                    return 1;
                case '1' :
                    main_s->chg_mode_struct->mode = 1;
                    return 1;
                case '2' :
                    main_s->chg_mode_struct->mode = 2;
                    return 1;
            }
            break;
        // take picture mode
        case '2' :
            // take picture only if we are in takePct mode and second byte is valid 
            if (main_s->chg_mode_struct->mode == 1 && msg[1] == '1') 
            {
                main_s->chg_mode_struct->capture = true;
                main_s->cmd_struct->change_mode = true;
            }
            else 
            {
                main_s->chg_mode_struct->capture = false;
                main_s->cmd_struct->change_mode = false;
            }
            return 1;
        // start/stop
        case '3' :
            // check second byte to know if its start or stop
            if (msg[1] == '1')
            {
                main_s->cmd_struct->start = true;
                main_s->start_f = true;
            }
            else 
            {
                main_s->cmd_struct->start = false;
                main_s->start_f = true;
            }
            return 1;
        // update param AI, optional, TO DO
        case '4' :
            if (msg[1] == '1')
            {
                main_s->cmd_struct->weights_update = true;
                //TO DO : Configure the weight update operation
            }
            else 
                main_s->cmd_struct->weights_update = false;
            return 1;
        default :
            printf("no standard op code detected, no further action will be taken ..\n");
            return 0;
    }
}
