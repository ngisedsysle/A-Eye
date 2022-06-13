/**
 * @file decodageTC.h
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief Header of decodageTC.h
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */
#include "../Interpreteur/interpreteur.h"

#ifndef _DECODAGETC_H
#define _DECODAGETC_H

    /**
     * @brief decode the incoming msg with the code operations described in design.
     *        Param update is done by updating the corresponding structures
     * 
     * @param msg the incoming msg received from server
     * @return 1 if a standard code op is detected, else 0
     */
    int decodeTC(mainStruct *main_s, char *msg);

#endif