#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# NAME OF THE PROJECT
project(A-Eye_Communication)

# SUBDIRECTORIES
add_subdirectory(TC)
add_subdirectory(TM)
add_subdirectory(Server)
add_subdirectory(Interpreteur)

# SOURCE FILES
set(SRC
    server.c)

# INCLUDE DIRECTORY
include_directories(Server)

# EXECUTABLE
add_executable(server ${SRC}
    Server/tcp_server.h)

# LIBRARIES TO LINK
# target_link_libraries(AI json)
target_link_libraries(server tc)
target_link_libraries(server tm)
target_link_libraries(server interpreteur)
target_link_libraries(server server)
target_link_libraries(server pthread)