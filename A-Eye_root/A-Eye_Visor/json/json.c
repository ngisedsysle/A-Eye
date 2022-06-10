/**
 * @file json.c
 * @author Guilhem ROLLAND (guilhem.rolland@elsys-design.com)
 * @brief Usefull functions to deal with json string.
 * @version 0.1
 * @date 2022-05-31
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "json.h"

int write_in_file(char *filename, char *buffer)
{
    FILE *file = fopen(filename, "w+");
    int ret = fprintf(file, "%s", buffer);
    fclose(file);
    return ret;
}

int read_from_file(char *filename, char *data)
{
    char buffer[1000000];
    int len = 0;
    if (access(filename, F_OK) == 0)
    {
        FILE *fp;
        fp = fopen(filename, "r");
        while (fgets(buffer, 1000000, fp))
        {
            len += sprintf(data + len, "%s", buffer);
        }
        fclose(fp);
    }
    else
    {
        printf("ERROR: File %s not found.\n", filename);
    }
    return len;
}

unsigned long fsize(char *file)
{
    FILE *f = fopen(file, "r");
    fseek(f, 0, SEEK_END);
    unsigned long len = (unsigned long)ftell(f);
    fclose(f);
    return len;
}

int convertFloatToString(float f, char *c)
{
    int size = sprintf(c, "%.16f", f);
    return size;
}

char *write_float_in_buffer(float *ptrToFloat, int nbrFloat)
{
    char *ret = calloc(sizeof(char), 30 * nbrFloat + 1);
    char *ptrWrite = ret;
    for (int i = 0; i < nbrFloat; i++)
    {
        char c[50];
        int size = convertFloatToString(ptrToFloat[i], c);
        memcpy(ptrWrite, c, size);
        ptrWrite += size;
        memcpy(ptrWrite, ",", 1);
        ptrWrite++;
    }
    return ret;
}

int write_float_in_file(char *filename, float *ptrToFloat, int nbrFloat)
{
    char *buff = write_float_in_buffer(ptrToFloat, nbrFloat);
    int ret = write_in_file(filename, buff);
    free(buff);
    return ret;
}

int get_int_in_json(char *buffer, char *param)
{
    char *ptr = strstr(buffer, param);
    if (ptr == NULL)
    {
        return -1;
    }
    int sizeParam = strlen(param);
    ptr += sizeParam;
    ptr = go_to_number(ptr);
    int val = atoi(ptr);
    return val;
}

char *get_str_in_json(char *buffer, char *param)
{
    char *ptr = strstr(buffer, param);
    if (ptr == NULL)
    {
        return NULL;
    }
    int sizeParam = strlen(param);
    ptr += sizeParam;
    ptr += 3; // skip ":"
    int size = 0;
    for (size = 0; *(ptr + size) != '\"'; size++)
        ;
    char *ret = calloc(size + 1, sizeof(char));
    memcpy(ret, ptr, size);
    return ret;
}

char *get_tab_in_json(char *buffer, char *param)
{
    char *ptr = strstr(buffer, param);
    if (ptr == NULL)
    {
        return NULL;
    }
    int sizeParam = strlen(param);
    ptr += sizeParam;
    while ((*ptr) != '[')
    {
        ptr++;
    }
    int size = 1;
    int imbrication = 0;
    for (size = 1; (*(ptr + size) != ']') || (imbrication != 0); size++)
    {
        if (*(ptr + size) == '[')
        {
            imbrication++;
        }
        if (*(ptr + size) == ']')
        {
            imbrication--;
        }
    };
    size++; // Get ]
    char *ret = calloc(size + 1, sizeof(char));
    memcpy(ret, ptr, size);
    *(ret + sizeof(char) * size) = 0;
    return ret;
}

char *get_str_in_tab(char *tab, int idx)
{
    int size;
    for (int i = 0; i <= idx * 2; i++)
    {
        while (*tab != '\"')
        {
            tab++;
        }
        for (size = 1; *(tab + size) != '\"'; size++)
            ;
        size--;
        tab++; // Skip "
    }
    char *ret = calloc(size + 1, sizeof(char));
    memcpy(ret, tab, size);
    *(ret + sizeof(char) * size) = 0;
    return ret;
}

char *get_object_in_json(char *buffer, char *param)
{
    char *ptr = strstr(buffer, param);
    int sizeParam = strlen(param);
    ptr += sizeParam;
    ptr += 2; // skip ":
    int size = 1;
    int imbrication = 0;
    for (size = 1; (*(ptr + size) != '}') || (imbrication != 0); size++)
    {
        if (*(ptr + size) == '{')
        {
            imbrication++;
        }
        if (*(ptr + size) == '}')
        {
            imbrication--;
        }
    }
    size++; // Get }
    char *ret = calloc(size + 1, sizeof(char));
    memcpy(ret, ptr, size);
    return ret;
}

char *get_tab_in_tab(char *tab, int idx)
{
    tab++;
    int size = 1;
    for (int i = 0; i <= idx; i++)
    {
        while ((*tab) != '[')
        {
            tab++;
        }
        int imbrication = 0;
        for (size = 1; (*(tab + size) != ']') || (imbrication != 0); size++)
        {
            if (*(tab + size) == '[')
            {
                imbrication++;
            }
            if (*(tab + size) == ']')
            {
                imbrication--;
            }
        }
        if (i != idx)
        {
            tab += size + 1;
        }
    }
    size++; // Get ]
    char *ret = calloc(size + 1, sizeof(char));
    memcpy(ret, tab, size);
    return ret;
}

char *go_to_number(char *str)
{
    while ((((*str) < '0') || ((*str) > '9')) && ((*str) != '-'))
    {
        str++;
    }
    return str;
}

int get_size_of_float(char *str)
{
    int size = 0;
    while (!((((*str) < '0') || ((*str) > '9')) && ((*str) != '-') && ((*str) != 'e') && ((*str) != '.')))
    {
        str++;
        size++;
    }
    return size;
}

int get_size_of_int(char *str)
{
    int size = 0;
    while (!((((*str) < '0') || ((*str) > '9')) && ((*str) != '-')))
    {
        str++;
        size++;
    }
    return size;
}

float get_float_in_string(char *str, int idx)
{
    int size = 0;
    for (int i = 0; i <= idx; i++)
    {
        str = go_to_number(str);
        size = get_size_of_float(str);
        if (i != idx) // Wrong number, go forward
        {
            str += size + 1;
        }
    }
    char *buff = calloc(size + 1, sizeof(char));
    memcpy(buff, str, size);
    float val = atof((const char *)buff);
    return val;
}

int get_int_in_string(char *str, int idx)
{
    int size = 0;
    for (int i; i <= idx; i++)
    {
        str = go_to_number(str);
        size = get_size_of_int(str);
        if (i != idx)
        {
            str += size + 1;
        }
    }
    char *buff[size];
    memcpy(buff, str, size);
    int val = atoi((const char *)buff);
    return val;
}