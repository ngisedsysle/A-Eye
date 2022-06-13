#This file is designed to produce the lib for preprocess

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libPREPROCESS)

# SOURCE FILES
set(SRC
    preprocess.c)

# HEADERS FILES
set(HEADERS
    preprocess.h)

# CREATING THE LIBRARY
add_library(preprocess ${SRC} ${HEADERS})

