#This file is designed to produce the lib for preprocess

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libPREPROCESS)

# SOURCE FILES
set(SRC
    preprocess.cpp)

# HEADERS FILES
set(HEADERS
    preprocess.hpp)

# CREATING THE LIBRARY
add_library(preprocess ${SRC} ${HEADERS})

