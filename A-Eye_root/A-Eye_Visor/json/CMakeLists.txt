#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libJSON)

# SOURCE FILES
set(SRC
    json.c)

# HEADERS FILES
set(HEADERS
    json.h)

# CREATING THE LIBRARY
add_library(json ${SRC} ${HEADERS})

