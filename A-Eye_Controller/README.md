# A-Eye Controller
C# application to control the A-Eye_Board.  
The app call some python functions for special needs, such as communication, ordering pictures, ...  
There's also a specflow project, based on [Gherkin](https://cucumber.io/docs/gherkin/reference/) to write and compute integration test.   

## Requirements
To use MQTT communication, you must have and run a broker locally.  
You can use [mosquitto](https://mosquitto.org/download/).  

## Quick start
Run the .sln file with Visual Studio.  
Build the project and use it.  

## User configurations 
You can easily modify interprocess communication protocol in pipeClient.py.  
This can be usefull for debug purpose.  
STDOUT is ideal for debug, PIPE is historic's communication, MQTT is the new protocol.  