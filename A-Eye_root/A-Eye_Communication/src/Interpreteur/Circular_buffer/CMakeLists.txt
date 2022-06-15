#This file is designed to produce the lib for circular buffer

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libcbuf)

# SOURCE FILES
set(SRC
    circular_buffer.c)

# HEADERS FILES
set(HEADERS
    circular_buffer.h)

# CREATING THE LIBRARY
add_library(cbuf ${SRC} ${HEADERS})