# FPGA part of project A-Eye
The idea is here to accelerate in hardware the longest operation. Currently, the convolution take about 60 percent of the processing time. That's why we start by accelerating the convolution steps. 

## Documentations v2
### Multiadd
#### Principle
This block must process a multiplication between two float32, one corresponding to the image, and one to the kernel.  
This compute is parallelized in three block, one for each color.  
![cmp_multiadd](./diagrams/out/archi_v2/multiadd.png)  
#### Memory occupation
Once synthesized on Vivado for the zybo z7 20, we can see that it will used 13% of LUTs and only 3% of DSPs.  
### Line_process
#### Principle
As shown above, we have spaces left and can parallelize 3 pixels processing. This is the goal of the line_process.  
Thus, the 3x3x3 convolution works with a block which can process 3x3 float32. The process has to be repeated only 3 times so.  
![cmp_line_process](./diagrams/out/archi_v2/line_process.png)
#### Memory occupation
Now, we used 44% of the LUTs.  We need two clock cycles to compute one line of 3 RGB pixels.  

## Documentations v1
### What is done
On the day of 22 June, we dispose of a convolution 2D engine, which is called with padding. Source code are in this git.  
![Initial architecture](./diagrams/out/architecture/initial_22_June.png)  
### Proposal
The proposal for the meetings of 23 June is to load picture and kernel with fifo and builder, process the convolution in order to produce a 2 by 2 matrix, and apply pooling on it.  
![Proposal 23 June](./diagrams/out/architecture/proposal_23_June.png)  

## Troubleshooting
Vivado simulator is uncompatible with float32, even if float32 are part of IEEE and support in VHDL2008. To simulate, I choose to use questa, which has a version free of charge (starter edition). To do this, you will have to generate a free license of Intel license webpage.  