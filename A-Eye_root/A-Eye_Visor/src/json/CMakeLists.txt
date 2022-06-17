#This file is designed to produce the lib for json

# MINIMUM VERSION
cmake_minimum_required(VERSION 2.8)

# NAME OF THE PROJECT
project(libJSON)

# SOURCE FILES
set(SRC
    json.cpp)

# HEADERS FILES
set(HEADERS
    json.hpp)

# CREATING THE LIBRARY
add_library(json ${SRC} ${HEADERS})

