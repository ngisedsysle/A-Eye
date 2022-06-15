#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libINTERPRETEUR)

add_subdirectory(Circular_buffer)

# SOURCE FILES
set(SRC
    interpreteur.c)

# HEADERS FILES
set(HEADERS
    interpreteur.h
    struct_allocation.h
    )

# CREATING THE LIBRARY
add_library(interpreteur ${SRC} ${HEADERS})
target_link_libraries(interpreteur cbuf)