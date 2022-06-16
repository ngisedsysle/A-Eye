#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# NAME OF THE PROJECT
project(A-Eye_Visor)

# SUBDIRECTORIES
add_subdirectory(json)
add_subdirectory(preprocess)

# SOURCE FILES
set(SRC
    AI.c)

# EXECUTABLE
add_executable(AI ${SRC})

# LIBRARIES TO LINK
# target_link_libraries(AI json)
target_link_libraries(AI json)
target_link_libraries(AI preprocess)
target_link_libraries(AI m)
target_link_libraries(AI pthread)

