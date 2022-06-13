#include "circular_buffer.h"

void circular_buf_reset(cbuf_handle_t me)
{
    me->head = 0;
    me->tail = 0;
    me->full = false;
}

cbuf_handle_t circular_buf_init(int size)
{
	cbuf_handle_t cbuf = malloc(sizeof(circular_buf_t));
	for (int i = 0; i < 10; i++)
	{
		cbuf->buffer[i] = malloc(size * sizeof(char));
	}
	cbuf->max = size;
	circular_buf_reset(cbuf);
	return cbuf;
}

void circular_buf_free(cbuf_handle_t me)
{
	free(me);
}

bool circular_buf_full(cbuf_handle_t me)
{
	return me->full;
}

bool circular_buf_empty(cbuf_handle_t me)
{
	return (!me->full && (me->head == me->tail));
}

int circular_buf_capacity(cbuf_handle_t me)
{
	return me->max;
}

int circular_buf_size(cbuf_handle_t me)
{
	int size = me->max;
	if(!me->full)
	{
		if(me->head >= me->tail)
		{
			size = (me->head - me->tail);
		}
		else
		{
			size = (me->max + me->head - me->tail);
		}
	}
	return size;
}

static void advance_pointer(cbuf_handle_t me)
{
	if(me->full)
   	{
		if (++(me->tail) == me->max) 
		{ 
			me->tail = 0;
		}
	}
	if (++(me->head) == me->max) 
	{ 
		me->head = 0;
	}
	me->full = (me->head == me->tail);
}

static void retreat_pointer(cbuf_handle_t me)
{
	me->full = false;
	if (++(me->tail) == me->max) 
	{ 
		me->tail = 0;
	}
}

void circular_buf_put(cbuf_handle_t me, char *data)
{
    memcpy(me->buffer[me->head], data, data[4] + 5);
    advance_pointer(me);
}

char* circular_buf_get(cbuf_handle_t me, char *data)
{
    int r = -1;
    if(!circular_buf_empty(me))
    {
        data = me->buffer[me->tail];
        retreat_pointer(me);

        r = 0;
    }
    return data;
}

