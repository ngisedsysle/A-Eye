vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xpm
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13

vmap xilinx_vip activehdl/xilinx_vip
vmap xpm activehdl/xpm
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/5765/hdl" "+incdir+../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2022.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_cmp_conv_wrapper_0_0/sim/design_1_cmp_conv_wrapper_0_0.vhd" \
"../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_2/design_1_processing_system7_0_2_sim_netlist.vhdl" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \
"../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_0_1/design_1_axi_mm2s_mapper_0_1_sim_netlist.vhdl" \
"c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_1/design_1_axi_smc_1_sim_netlist.vhdl" \
"c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_1_1/design_1_axi_mm2s_mapper_1_1_sim_netlist.vhdl" \
"../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_2_1/design_1_axi_mm2s_mapper_2_1_sim_netlist.vhdl" \
"c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/design_1_smartconnect_0_0_sim_netlist.vhdl" \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

