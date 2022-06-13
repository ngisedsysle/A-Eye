/**
 * @file interpreteur.h
 * @author Thomas du Boisrouvray (thomas.duboisrouvray@elsys-design.com)
 * @brief Header file for interpreteur.c
 * @version 0.1
 * @date 2022-05-25
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "../struct_allocation.h"
#include "../TM/encodageTM.h"
#ifndef _INTERPRETEUR_H
#define _INTERPRETEUR_H

    // Fonctions
    /**
     * @brief process the TC and activate the corresponding process, write ack to buffer
     * 
     * @param main_s main structure 
     * @return int -1 if memory allocation failed
     */
    char* interpreteur(mainStruct *main_s);

    char* capture();
#endif