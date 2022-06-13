#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#ifndef _CIRCULARBUFFER_H
#define _CIRCULARBUFFER_H

    /**
     * @brief circular buffer of string with a fixed size
     * 
     */
    typedef struct circular_buf_t
    {
        char *buffer[10]; /*! <buffer of string, size 10*/
        int head; /*! <pointer head*/
        int tail; /*! <pointer tail*/ 
        int max;  /*! <max size of the buffer*/
        bool full; /*! <flag if full or not*/
    } circular_buf_t;

    // Handle type, the way users interact with the API
    typedef circular_buf_t *cbuf_handle_t;

    /**
     * @brief Pass in a storage buffer and size
     * Returns a circular buffer handle
     * 
     * @param buffer initial buffer
     * @param size of the cbuf to create
     * @return cbuf_handle_t buffer handle
     */
    cbuf_handle_t circular_buf_init(int size);

    /**
     * @brief Free a circular buffer structure.
     * Does not free data buffer; owner is responsible for that
     * 
     * @param me buffer handle
     */
    void circular_buf_free(cbuf_handle_t me);

    /**
     * @brief Reset the circular buffer to empty, head == tail
     * 
     * @param me buffer handle
     */
    void circular_buf_reset(cbuf_handle_t me);

    /**
     * @brief Add data to the buffer, overwrite old data if buffer is full
     * 
     * @param me buffer handle
     * @param data data to store
     */
    void circular_buf_put(cbuf_handle_t me, char *data);

    /**
     * @brief Retrieve a value from the buffer
     * 
     * @param me buffer handle
     * @param data output buffer to store data
     * @return int Returns 0 on success, -1 if the buffer is empty
     */
    char* circular_buf_get(cbuf_handle_t me, char *data);

    /**
     * @brief Returns true if the buffer is empty
     * 
     * @param me buffer handle
     * @return true if buffer empty
     * @return false if not empty
     */
    bool circular_buf_empty(cbuf_handle_t me);

    /**
     * @brief Returns true if the buffer is full
     * 
     * @param me buffer handle
     * @return true if buffer full
     * @return false if not full
     */
    bool circular_buf_full(cbuf_handle_t me);

    /**
     * @brief Returns the maximum capacity of the buffer
     * 
     * @param me buffer handle
     * @return int buffer max capacity
     */
    int circular_buf_capacity(cbuf_handle_t me);

    /**
     * @brief Returns the current number of elements in the buffer
     * 
     * @param me buffer handle
     * @return int number of element in the buffer
     */
    int circular_buf_size(cbuf_handle_t me);

#endif