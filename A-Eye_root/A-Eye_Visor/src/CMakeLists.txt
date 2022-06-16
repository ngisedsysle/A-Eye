#This file is designed to produce the executable for AI

# MINIMUM VERSION
cmake_minimum_required( VERSION 2.8 )

# NAME OF THE PROJECT
project(A-Eye_Visor)

# SUBDIRECTORIES
add_subdirectory(json)
add_subdirectory(preprocess)

# SOURCE FILES

set(MQTT_LIBRARIES
    paho-mqttpp3
    paho-mqtt3as
    paho-mqtt3c
    )

set(SRC
    AI.cpp)

# EXECUTABLE
add_executable(AI ${SRC})

target_include_directories(AI PRIVATE AI)

# LIBRARIES TO LINK
target_link_libraries(AI json)
target_link_libraries(AI preprocess)
target_link_libraries(AI m)
target_link_libraries(AI pthread)
target_link_libraries(AI ${MQTT_LIBRARIES})

