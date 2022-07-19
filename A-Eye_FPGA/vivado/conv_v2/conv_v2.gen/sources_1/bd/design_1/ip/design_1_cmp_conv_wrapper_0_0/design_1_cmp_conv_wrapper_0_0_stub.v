// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jul 18 13:53:18 2022
// Host        : L-C5H16J3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_cmp_conv_wrapper_0_0/design_1_cmp_conv_wrapper_0_0_stub.v
// Design      : design_1_cmp_conv_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cmp_conv_wrapper,Vivado 2022.1" *)
module design_1_cmp_conv_wrapper_0_0(clk, rst, line_img_data, line_img_valid, 
  line_img_ready, line_krn_data, line_krn_valid, line_krn_ready, res_data, res_valid, 
  res_ready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,line_img_data[31:0],line_img_valid,line_img_ready,line_krn_data[31:0],line_krn_valid,line_krn_ready,res_data[31:0],res_valid,res_ready" */;
  input clk;
  input rst;
  input [31:0]line_img_data;
  input line_img_valid;
  output line_img_ready;
  input [31:0]line_krn_data;
  input line_krn_valid;
  output line_krn_ready;
  output [31:0]res_data;
  output res_valid;
  input res_ready;
endmodule
