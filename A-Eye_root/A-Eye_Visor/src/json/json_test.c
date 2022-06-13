/**
 * @file json_test.c
 * @author Guilhem ROLLAND (guilhem.rolland@elsys-design.com)
 * @brief Test code to verify json functions.
 * @version 0.1
 * @date 2022-05-31
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#include "json.h"

/**
 * @brief Test code to verify json functions.
 * 
 * @return int 
 */
int main()
{
    // int ret;
    // // char *buff = "Bonjour ! \n ";
    // // ret = write_in_file("export.txt", buff);

    // char filename[] = "data.json";
    // char *buff2 = (char *)malloc((unsigned long)fsize(filename) + 1);
    // ret = read_from_file(filename, buff2);
    // printf("%s\n", buff2);

    // // int size = get_int_in_json(buff2, "size");
    // // printf("size = %i\n", size);

    // // char *str = get_str_in_json(buff2, "string");
    // // printf("str = %s\n", str);

    // // char *tab = get_tab_in_json(buff2, "arch");
    // // printf("tab = %s\n", tab);

    // // char archCNN[size][20];
    // // for (int i = 0; i < size; i++)
    // // {
    // //     memcpy(archCNN[i], "\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0", 20);
    // //     char *str_in_tab = get_str_in_tab(tab, i);
    // //     printf("str_in_tab at idx %d = %s\n", i, str_in_tab);
    // //     strcpy(archCNN[i], str_in_tab);
    // // }

    // // char *weights = get_object_in_json(buff2, "weights");
    // // printf("obj = %s\n", weights);

    // // char *layer2weights = get_tab_in_json(weights, "layer2");
    // // printf("layer 2 weigths : %s\n",layer2weights);

    // // char test[]="-0.12469998747110367";
    // // printf("float : %f\n",atof(test));

    // float *weightsTab[10] = {0};

    // char *tab = get_tab_in_json(buff2, "weights");
    // // printf("tab : %s\n", tab);

    // char *tabintab = tab;
    // for (int prof = 0; prof < 3; prof++)
    // {
    //     tabintab = get_tab_in_tab(tabintab,0);
    // }
    // // printf("tabintab : %s\n", tabintab);

    // char * tabOfFloatAsString = get_tab_in_tab(tabintab,0);
    // // printf("tabOfFloatAsString : %s\n", tabOfFloatAsString);
    // float tabFloat[32];
    // for (int i =0; i<32; i++){
    //     float valFloat = get_float_in_string(tab, i);
    //     tabFloat[i] = valFloat;
    //     printf("valFloat = %f\n", valFloat);
    // }

    // // int valInt = get_int_in_string(tab,1);
    // // printf("valInt = %i\n", valInt);

    /**
     * @brief Split weights into differents files for better reading
     * 
     */
    char filename[] = "rescal_fl32_96.json";
    char *buff2 = (char *)malloc((unsigned long)fsize(filename) + 1);
    int ret = read_from_file(filename, buff2);
    printf("size of file : %d\n", ret);
    char *weights = get_object_in_json(buff2, "weights");
    for (int idx = 0; idx <= 11; idx ++){
        char label[30];
        sprintf(label, "layer%i", idx);
        char *layer = get_tab_in_json(weights, label);
        sprintf(label, "layers/layer%d.json", idx);
        write_in_file(label, layer);
        printf("size of layer%i param : %i\n", idx, (int) strlen(layer));
        free(layer);
    }
    free(buff2);
    free(weights);


    // /**
    //  * @brief test export float in file
    //  * 
    //  */
    // float tab[4];
    // for (int i = 0; i < 4; i++)
    // {
    //     tab[i]= (float)rand()/(float)RAND_MAX;
    // }
    // write_float_in_file("export.json",tab, 4);
    return 0;
}