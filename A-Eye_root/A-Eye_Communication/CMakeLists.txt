#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# TYPE RELEASE
set(CMAKE_BUILD_TYPE Release)

# NAME OF THE PROJECT
project(A-Eye_Communication)

add_subdirectory(src)

install(PROGRAMS ${CMAKE_SOURCE_DIR}/src
        DESTINATION bin
        RENAME ${CMAKE_PROJECT_NAME}-A-Eye_Communication)

