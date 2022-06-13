#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# TYPE RELEASE
set(CMAKE_BUILD_TYPE Release)

# NAME OF THE PROJECT
project(A-Eye_Visor)

# SUBDIRECTORIES
add_subdirectory(libJSON
    libPREPROCESS)

# SOURCE FILES
set(SRC
    AI.c)

# EXECUTABLE
add_executable(AI ${SRC})

# LIBRARIES TO LINK
target_link_libraries(AI json preprocess)