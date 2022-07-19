-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_cmp_conv_wrapper_0_0/sim/design_1_cmp_conv_wrapper_0_0.vhd" \
  "../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_processing_system7_0_2/design_1_processing_system7_0_2_sim_netlist.vhdl" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../conv_v2.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_rst_ps7_0_50M_1/sim/design_1_rst_ps7_0_50M_1.vhd" \
  "../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_0_1/design_1_axi_mm2s_mapper_0_1_sim_netlist.vhdl" \
  "c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_smc_1/design_1_axi_smc_1_sim_netlist.vhdl" \
  "c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_1_1/design_1_axi_mm2s_mapper_1_1_sim_netlist.vhdl" \
  "../../../../conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_2_1/design_1_axi_mm2s_mapper_2_1_sim_netlist.vhdl" \
  "c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_smartconnect_0_0/design_1_smartconnect_0_0_sim_netlist.vhdl" \
  "../../../bd/design_1/sim/design_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

