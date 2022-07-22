# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\rolland\Documents\GIT\A-Eye\A-Eye_FPGA\vitis\conv_gpio\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\rolland\Documents\GIT\A-Eye\A-Eye_FPGA\vitis\conv_gpio\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {conv_gpio}\
-hw {C:\Users\rolland\Documents\GIT\A-Eye\A-Eye_FPGA\vivado\conv_gpio\design_1_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vitis}

platform write
platform generate -domains 
platform active {conv_gpio}
platform generate
platform generate
platform active {conv_gpio}
platform config -updatehw {C:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado/conv_gpio/design_1_wrapper.xsa}
platform generate -domains 
