#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libTC)

# SOURCE FILES
set(SRC
    decodageTC.c)

# HEADERS FILES
set(HEADERS
    decodageTC.h)

# CREATING THE LIBRARY
add_library(tc ${SRC} ${HEADERS})