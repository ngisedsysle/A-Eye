# A-Eye project, by Elsys DESIGN
<!-- PROJECT LOGO -->
<p align="center">
  <img src="./images/logo.png" />
</p>
<p align="center">
<em>An awesome project for embedded AI</em>
</p>
Developpers : Guilhem ROLLAND and Thomas DU BOISROUVRAY

This repository contains the documented source code for this project.

<!-- ABOUT THE PROJECT -->
## About The Project

The goal of the project was to build a system capable of sorting images with and without boats. 

### Use case

![Schéma use case](./images/use_case.jpg)
<div style="text-align: justify">  

The target for this system was a ZYNQ processor.
Our system is divided between an embedded sytem on ZYBO board and an application on a computer.
</div>

### Application

![A-Eye_Controller](./images/ihm.JPG)




<div style="text-align: justify">
Here you can see the A-Eye Controller app (on windows PC) which controls the embedded system. From there you can choose the mode between auto mode (processing images with AI) or manual mode (where you can take pictures manually).

Depending on the current mode, the application will show boat images (if you are in auto mode) or the latest image if you choose to manually take a picture. 
</div>

<p align="right">(<a href="#top">back to top</a>)</p>

### Built With

#### Hardware

This project was firstly developped for ZYNQ target, and then the system was migrated to a Kria SOM. We used the [ZYBO Z7](https://digilent.com/reference/programmable-logic/zybo-z7/start) board on petalinux for developpment. For the Kria, we are based on a [KV260](https://www.xilinx.com/products/som/kria/kv260-vision-starter-kit.html).

A convolution IP is developped using VHDL for hardware acceleration.

#### Software
  
- [Tensorflow](https://www.tensorflow.org/) : lib for high-level AI
- [Colab](https://colab.research.google.com/) : Cloud plateform which provides GPU for AI training
- [Cdeotte C CNN implementation](https://github.com/cdeotte/MNIST-CNN-99.5)
- TCP & [MQTT](https://www.eclipse.org/paho/index.php?page=clients/python/index.php) : communication
- C, C# and Python for software developpement
- [Gherkin](https://cucumber.io/docs/gherkin/) : test automatisation
- [CMake](https://cmake.org/) : compiling and building the project
- [Doxygen](https://doxygen.nl/) : documentation of the project
- [.NET6](https://docs.microsoft.com/fr-fr/dotnet/core/whats-new/dotnet-6) : Framework used for A-Eye_Controller
- [Jenkins](https://www.jenkins.io/) : continuous integration and test driven developpment

<p align="right">(<a href="#top">back to top</a>)</p>

## Getting Started

### Prerequisites 

Before anything, you need to set up your board. This can be done by creating and flashing a petalinux, or on the Kria, by using the [Ubuntu](https://ubuntu.com/download/amd-xilinx) provided.

For petalinux, please refer to this [user guide](https://docs.xilinx.com/r/en-US/ug1144-petalinux-tools-reference-guide). Here are the most important commands :

```bash
petalinux-create -t project --template zynq -n petaFromVivado # Create the workspace   
petalinux-config --get-hw-description # Load HDF file, it must be copy there before !!!   
petalinux-config # Enter global configuration    
petalinux-config -c rootfs # Enter rootfs configuration   
petalinux-build # produce image.ub, system.dtb and rootfs files   
petalinux-package --boot --force --fsbl images/linux/zynq_fsbl.elf --fpga images/linux/*_wrapper.bit --u-boot # produce BOOT.BIN    
```

Then, partitionned the SD card and copy the file as mentionned in the user guide above.   
Once you have a fully functionnal petalinux on the board, you may run the installation.

### Install and run the A-Eye app

1. Connect to the board using SSH and open a bash terminal
```bash
git clone https://github.com/GuilhemROLLAND/A-Eye.git #clone the repository
```
If the board isn't connected to internet, you can clone the repository locally and transfer it to the board using SSH (with winSCP or whatever you want).  

2. Then, you have to put the [dataset](https://drive.google.com/uc?export=download&id=1odGQm0w5xhjG1suTzqstuRMIkoTY4mYx) on the board. This must be unzip and place in folder A-Eye, root of the project.  

3. Build the embedded project. From your working directory :
```bash
cd A_Eye/A_Eye_root/
./restart
```

4. Once the embedded part is running, you can interract with using A-Eye_Controller.  
Using Visual Studio : You have to get Visual studio for c# (winforms, .net6). Then, run the .sln in A-Eye_Controller folder.  
You can easily build the application and use it !  


<p align="right">(<a href="#top">back to top</a>)</p>

## Usage

Here you can find different usage case of our project.

*Receive boat images from a dataset :*

1. Put the dataset on the embedded filesystem. The dataset must be named *"dataset"* and contain two folders, one with boat images named *"bateau"* and the other one without boats named *"pas_bateau"*. You can download an example dataset [here](https://drive.google.com/uc?export=download&id=1odGQm0w5xhjG1suTzqstuRMIkoTY4mYx)
2. Go to the folder **A-Eye_root/** and run **restart.sh**
3. On your host machine, run the application
4. Set the correct IP and set the config as AUTO MODE (don't forget to click on the autoload button)
5. Watch the boat images displayed on your application :)

<p align="right">(<a href="#top">back to top</a>)</p>



## Documentation
### Introduction 
An important part of the project is to have a clear an complete documentation associated to the project.  
You can find a lot of UML documentation in folder A-Eye_Documentation.  

### On ubuntu
You can also generate Doxygen documentation for all source code in the project by following these steps :

```bash
sudo apt install doxygen
git clone https://github.com/GuilhemROLLAND/A-Eye.git
cd A-Eye
doxygen ./Doxyfile
```

### On windows
To generate html webpages about source code documentation, we advise you to use [Doxygen](https://doxygen.nl/) and load in the doxywizard the doxyfile located in the root folder of the project. You will then find index.html in the generated folder "doc". Otherwise, you can run the above command from linux in a WSL invite.  

<p align="right">(<a href="#top">back to top</a>)</p>  

## Performances

| Platform | AI Architecture | Software Architecture | Processing time (s) | Loading time (min) |
| -------- | --------------- | --------------------- | ------------------- | ------------------ |
| Zybo     | arch_1          | monothread            | 50                  | 10                 |
| Kria     | arch_1          | monothread            | 35                  | 7                  |
| Kria     | arch_1          | multithread           | 10                  | 3                  |
| Kria     | arch_2          | multithread           | 3                   | 3                  |
| Kria     | arch_3          | multithread           | 1.3                 | 3                  |

### Architectures description
- arch_1 : [\"57600\", \"C3:32:1\", \"P2\", \"C3:32:1\", \"P2\", \"C3:32:1\", \"P2\", \"C3:32:1\", \"P2\", \"32\", \"2\"] with 91 % accuracy  
- arch_2 : [\"57600\", \"C3:8:1\", \"P2\", \"C3:16:1\", \"P2\", \"C3:32:1\", \"P2\", \"C3:32:1\", \"P2\", \"32\", \"2\"] with 89 % accuracy  
- arch_3 : [\"57600\", \"C3:4:1\", \"P2\", \"C3:8:1\", \"P2\", \"C3:32:1\", \"P2\", \"C3:32:1\", \"P2\", \"32\", \"2\"] with 89 % accuracy  

### Comments 
Loading time : Time to load weights and biais from a json file.  
Processing time : Time needed to process one RGB bmp picture of 640x480 pixels.  
When multithreadings, we need all the CPU performance (400%) to achieve these times. Thus, in the demo using vlc video rendering, which consumes 150% of the performance, we can only achieve 2.5 seconds of processing time. Multithreading is used in loading parameters and in convolutionnal processing.  
Server use less than 50% on peak.  

<p align="right">(<a href="#top">back to top</a>)</p>  

## Contact

Guilhem ROLLAND - guilhem.rolland@elsys-design.com   
Embedded developper | [ELSYS DESIGN](https://www.elsys-design.com/fr/)  

Thomas DU BOISROUVRAY - thomas.duboisrouvray@elsys-design.com   
Embedded developper | [ELSYS DESIGN](https://www.elsys-design.com/fr/)  

Clément LEROY - clement.leroy@elsys-design.com  
FPGA developper | [ELSYS DESIGN](https://www.elsys-design.com/fr/)  

Noémie ROLLAND - noemie.rolland@elsys-design.com   
FPGA developper | [ELSYS DESIGN](https://www.elsys-design.com/fr/)  

Arnaud DANIEL - Lead tech | [ELSYS DESIGN](https://www.elsys-design.com/fr/)

<p align="right">(<a href="#top">back to top</a>)</p>  
