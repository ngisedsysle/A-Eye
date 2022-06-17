/**
 * @file json.h
 * @author Guilhem ROLLAND (guilhem.rolland@elsys-design.com)
 * @brief Test code to verify json functions.
 * @version 0.1
 * @date 2022-05-31
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <iostream>
#include <cstdlib>
#include <string>
#include <cstring>
#include <cctype>
#include <thread>
#include <chrono>

/**
 * @brief Write in a file the content of the buffer
 *
 * @param filename name of the file. If exist, will be overwrite
 * @param buffer string buffer with the content
 * @return int Number of characters written
 */
int write_in_file(char *filename, char *buffer);

/**
 * @brief Write in a buffer the content of a file
 *
 * @param filename name of the file
 * @param buffer string buffer with the content
 * @return int Number of characters read
 */
int read_from_file(char *filename, char *buffer);

/**
 * @brief Get the size of a file.
 * 
 * @param file path to the file. ex: ""../temp.bmp".
 * @return unsigned long size of the file.
 */
unsigned long fsize(char *file);

/**
 * @brief Convert the float into a string to be print or save.
 * Then, write it to the buffer.
 * 
 * @param f The float value to convert.
 * @param c Where to write the string.
 * @return int The number of characters written.
 */
int convertFloatToString(float f, char *c);

/**
 * @brief Write all the float in an array to a buffer.
 * Must free the return pointer.
 * 
 * @param ptrToFloat Pointer to the float array.
 * @param nbrFloat Number of float to write.
 * @return char* Pointer to the buffer.
 */
char *write_float_in_buffer(float *ptrToFloat, int nbrFloat);

/**
 * @brief Write the float array into a file.
 * 
 * @param filename Name of the file.
 * @param ptrToFloat Pointer to the array of float.
 * @param nbrFloat Number of float to write.
 * @return int Number of characters written.
 */
int write_float_in_file(char *filename, float *ptrToFloat, int nbrFloat);

/**
 * @brief Go forward in the buffer until find a number in string.
 * Do not free the param buffer because pointer reference to something inside.
 * 
 * @param str Pointer to the buffer of char.
 * @return char* Pointer to the beginning of a number IN THE PREVIOUS BUFFER.
 */
char *go_to_number(char *str);

// GETTERS

/**
 * @brief Get the int in json object.
 * 
 * @param buffer Pointer to the json string.
 * @param param Name of the parameter to get the corresponding int.
 * @return int The int, value of the key param.
 */
int get_int_in_json(char *buffer, char *param);

/**
 * @brief Get the str in json object.
 * Must be free once used. 
 * 
 * @param buffer Pointer to the json string.
 * @param param Name of the parameter to get the corresponding string.
 * @return char* Pointer to the buffer containing the string.
 */
char *get_str_in_json(char *buffer, char *param);

/**
 * @brief Extract the tab in json object.
 * Must be free once used.
 * 
 * @param buffer Pointer to the json string.
 * @param param Name of the parameter to get the corresponding tab.
 * @return char* Pointer to the tab.
 */
char *get_tab_in_json(char *buffer, char *param);

/**
 * @brief Get the object in json object.
 * Must be free once used.
 * 
 * @param buffer Pointer to the json string.
 * @param param Name of the parameter to get the corresponding json object.
 * @return char* Pointer to the buffer containing the object.
 */
char *get_object_in_json(char *buffer, char *param);

/**
 * @brief Get the str in tab object.
 * Must be free once used.
 * 
 * @param tab Pointer to the tab.
 * @param idx Index of the wanted value in the tab.
 * @return char* Pointer to the value AS IT IS IN STRING
 */
char *get_str_in_tab(char *tab, int idx);

/**
 * @brief Get the tab in tab object.
 * Usefull when tab ar imbricated.
 * Must be free once used.
 * 
 * @param tab Pointer to the tab as string.
 * @param idx Index of the desired tab.
 * @return char* Pointer to the extracted tab.
 */
char *get_tab_in_tab(char *tab, int idx);

/**
 * @brief Get the size of float object
 * 
 * @param str Pointer to the buffer.
 * @return int Size of the float in characters.
 */
int get_size_of_float(char *str);

/**
 * @brief Get the size of int object.
 * 
 * @param str Pointer to the buffer.
 * @return int Size of the int in characters.
 */
int get_size_of_int(char *str);

/**
 * @brief Get the float in string object.
 * 
 * @param str Pointer to the buffer.
 * @param idx Index of the desired float in the tab.
 * @return float 
 */
float get_float_in_string(char *str, int idx);

/**
 * @brief Get the int in string object
 * 
 * @param str Pointer to the buffer.
 * @param idx Index of the desired int in the tab.
 * @return int 
 */
int get_int_in_string(char *str, int idx);