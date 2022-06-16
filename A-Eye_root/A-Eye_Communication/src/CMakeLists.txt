#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# NAME OF THE PROJECT
project(A-Eye_Communication)

# SUBDIRECTORIES
add_subdirectory(TC)
add_subdirectory(TM)
add_subdirectory(Interpreteur)

set(MQTT_LIBRARIES
    paho-mqttpp3
    paho-mqtt3as
    paho-mqtt3c
    )

set(SRC
    tcp_server.cpp
    Server/tcp_server.h)

# EXECUTABLE    
add_executable(server ${SRC})

# INCLUDE DIRECTORY
target_include_directories(server PRIVATE Server)



# LIBRARIES TO LINK
target_link_libraries(server tc)
target_link_libraries(server tm)
target_link_libraries(server interpreteur)
target_link_libraries(server pthread)
target_link_libraries(server ${MQTT_LIBRARIES})