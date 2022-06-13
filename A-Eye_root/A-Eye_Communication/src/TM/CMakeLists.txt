#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libTM)

# SOURCE FILES
set(SRC
    encodageTM.c)

# HEADERS FILES
set(HEADERS
    encodageTM.h)

# CREATING THE LIBRARY
add_library(tm ${SRC} ${HEADERS})