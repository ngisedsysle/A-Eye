#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libINTERPRETEUR)

# SOURCE FILES
set(SRC
    interpreteur.c)

# HEADERS FILES
set(HEADERS
    interpreteur.h)

# CREATING THE LIBRARY
add_library(intepreteur ${SRC} ${HEADERS})