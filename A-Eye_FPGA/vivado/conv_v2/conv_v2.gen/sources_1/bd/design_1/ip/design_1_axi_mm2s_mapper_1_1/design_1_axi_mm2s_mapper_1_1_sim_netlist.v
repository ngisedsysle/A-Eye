// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jul 18 13:46:48 2022
// Host        : L-C5H16J3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_axi_mm2s_mapper_1_1 -prefix
//               design_1_axi_mm2s_mapper_1_1_ design_1_axi_mm2s_mapper_0_1_sim_netlist.v
// Design      : design_1_axi_mm2s_mapper_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo
   (m_bpayload_i,
    aclk);
  output [2:0]m_bpayload_i;
  input aclk;

  wire aclk;
  wire [2:0]m_bpayload_i;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b0),
        .CLK(aclk),
        .D(1'b0),
        .Q(m_bpayload_i[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b0),
        .CLK(aclk),
        .D(1'b0),
        .Q(m_bpayload_i[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(1'b1),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b0),
        .CLK(aclk),
        .D(1'b0),
        .Q(m_bpayload_i[2]));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0
   (m_axi_arready_i,
    SS,
    aclk,
    Q,
    aresetn,
    areset_r);
  output m_axi_arready_i;
  output [0:0]SS;
  input aclk;
  input [0:0]Q;
  input aresetn;
  input areset_r;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_r;
  wire aresetn;
  wire \fifo_index[0]_i_1__0_n_0 ;
  wire \fifo_index[1]_i_1__0_n_0 ;
  wire \fifo_index[2]_i_1__0_n_0 ;
  wire \fifo_index[3]_i_2__0_n_0 ;
  wire [3:0]fifo_index_reg;
  wire m_axi_arready_i;
  wire push;
  wire s_ready_i_1__0_n_0;
  wire s_ready_i_2__0_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r_i_1
       (.I0(aresetn),
        .O(SS));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1__0 
       (.I0(fifo_index_reg[0]),
        .O(\fifo_index[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_index[1]_i_1__0 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .O(\fifo_index[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_index[2]_i_1__0 
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .O(\fifo_index[2]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_index[3]_i_1__0 
       (.I0(m_axi_arready_i),
        .I1(Q),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \fifo_index[3]_i_2__0 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[3]),
        .I3(fifo_index_reg[2]),
        .O(\fifo_index[3]_i_2__0_n_0 ));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[0]_i_1__0_n_0 ),
        .Q(fifo_index_reg[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[1]_i_1__0_n_0 ),
        .Q(fifo_index_reg[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[2]_i_1__0_n_0 ),
        .Q(fifo_index_reg[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[3]_i_2__0_n_0 ),
        .Q(fifo_index_reg[3]),
        .S(SS));
  LUT3 #(
    .INIT(8'hDC)) 
    s_ready_i_1__0
       (.I0(s_ready_i_2__0_n_0),
        .I1(areset_r),
        .I2(m_axi_arready_i),
        .O(s_ready_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    s_ready_i_2__0
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[3]),
        .I2(fifo_index_reg[1]),
        .I3(fifo_index_reg[0]),
        .I4(m_axi_arready_i),
        .I5(Q),
        .O(s_ready_i_2__0_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1__0_n_0),
        .Q(m_axi_arready_i),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0
   (m_axi_awready_i,
    SR,
    aclk,
    Q,
    areset_r);
  output m_axi_awready_i;
  input [0:0]SR;
  input aclk;
  input [0:0]Q;
  input areset_r;

  wire [0:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_r;
  wire \fifo_index[0]_i_1_n_0 ;
  wire \fifo_index[1]_i_1_n_0 ;
  wire \fifo_index[2]_i_1_n_0 ;
  wire \fifo_index[3]_i_2_n_0 ;
  wire [3:0]fifo_index_reg;
  wire m_axi_awready_i;
  wire push;
  wire s_ready_i_1_n_0;
  wire s_ready_i_2_n_0;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1 
       (.I0(fifo_index_reg[0]),
        .O(\fifo_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \fifo_index[1]_i_1 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .O(\fifo_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \fifo_index[2]_i_1 
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .O(\fifo_index[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \fifo_index[3]_i_1 
       (.I0(m_axi_awready_i),
        .I1(Q),
        .O(push));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h78F0)) 
    \fifo_index[3]_i_2 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[3]),
        .I3(fifo_index_reg[2]),
        .O(\fifo_index[3]_i_2_n_0 ));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[0]_i_1_n_0 ),
        .Q(fifo_index_reg[0]),
        .S(SR));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[1]_i_1_n_0 ),
        .Q(fifo_index_reg[1]),
        .S(SR));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[2]_i_1_n_0 ),
        .Q(fifo_index_reg[2]),
        .S(SR));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(push),
        .D(\fifo_index[3]_i_2_n_0 ),
        .Q(fifo_index_reg[3]),
        .S(SR));
  LUT3 #(
    .INIT(8'hDC)) 
    s_ready_i_1
       (.I0(s_ready_i_2_n_0),
        .I1(areset_r),
        .I2(m_axi_awready_i),
        .O(s_ready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    s_ready_i_2
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[3]),
        .I2(fifo_index_reg[1]),
        .I3(fifo_index_reg[0]),
        .I4(m_axi_awready_i),
        .I5(Q),
        .O(s_ready_i_2_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1_n_0),
        .Q(m_axi_awready_i),
        .R(SR));
endmodule

module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator
   (areset_r,
    Q,
    s_axi_awready,
    \arb_sel_r_reg[0] ,
    \gen_data_bit[2].u_srl_fifo ,
    \r0_data_reg[31] ,
    \r0_out_sel_r_reg[0] ,
    \gen_data_bit[1].u_srl_fifo ,
    \gen_data_bit[0].u_srl_fifo ,
    \r1_data_reg[3] ,
    \r1_data_reg[4] ,
    \r1_data_reg[5] ,
    \r1_data_reg[6] ,
    \r1_data_reg[7] ,
    \r1_data_reg[8] ,
    \r1_data_reg[9] ,
    \r1_data_reg[10] ,
    \r1_data_reg[11] ,
    \r1_data_reg[12] ,
    \r1_data_reg[13] ,
    \r1_data_reg[14] ,
    \r1_data_reg[15] ,
    \r1_data_reg[16] ,
    \r1_data_reg[17] ,
    \r1_data_reg[18] ,
    \r1_data_reg[19] ,
    \r1_data_reg[20] ,
    \r1_data_reg[22] ,
    \r1_data_reg[23] ,
    \r1_data_reg[24] ,
    \r1_data_reg[25] ,
    SR,
    aclk,
    s_axi_awvalid,
    count_is_max,
    \r0_out_sel_r_reg[0]_0 ,
    arb_sel_i,
    m_bpayload_i,
    D);
  output areset_r;
  output [1:0]Q;
  output s_axi_awready;
  output \arb_sel_r_reg[0] ;
  output \gen_data_bit[2].u_srl_fifo ;
  output [6:0]\r0_data_reg[31] ;
  output \r0_out_sel_r_reg[0] ;
  output \gen_data_bit[1].u_srl_fifo ;
  output \gen_data_bit[0].u_srl_fifo ;
  output \r1_data_reg[3] ;
  output \r1_data_reg[4] ;
  output \r1_data_reg[5] ;
  output \r1_data_reg[6] ;
  output \r1_data_reg[7] ;
  output \r1_data_reg[8] ;
  output \r1_data_reg[9] ;
  output \r1_data_reg[10] ;
  output \r1_data_reg[11] ;
  output \r1_data_reg[12] ;
  output \r1_data_reg[13] ;
  output \r1_data_reg[14] ;
  output \r1_data_reg[15] ;
  output \r1_data_reg[16] ;
  output \r1_data_reg[17] ;
  output \r1_data_reg[18] ;
  output \r1_data_reg[19] ;
  output \r1_data_reg[20] ;
  output \r1_data_reg[22] ;
  output \r1_data_reg[23] ;
  output \r1_data_reg[24] ;
  output \r1_data_reg[25] ;
  input [0:0]SR;
  input aclk;
  input s_axi_awvalid;
  input count_is_max;
  input \r0_out_sel_r_reg[0]_0 ;
  input [1:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire \arb_sel_r_reg[0] ;
  wire areset_r;
  wire count_is_max;
  wire \gen_data_bit[0].u_srl_fifo ;
  wire \gen_data_bit[1].u_srl_fifo ;
  wire \gen_data_bit[2].u_srl_fifo ;
  wire [2:0]m_bpayload_i;
  wire [6:0]\r0_data_reg[31] ;
  wire \r0_out_sel_r_reg[0] ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r1_data_reg[10] ;
  wire \r1_data_reg[11] ;
  wire \r1_data_reg[12] ;
  wire \r1_data_reg[13] ;
  wire \r1_data_reg[14] ;
  wire \r1_data_reg[15] ;
  wire \r1_data_reg[16] ;
  wire \r1_data_reg[17] ;
  wire \r1_data_reg[18] ;
  wire \r1_data_reg[19] ;
  wire \r1_data_reg[20] ;
  wire \r1_data_reg[22] ;
  wire \r1_data_reg[23] ;
  wire \r1_data_reg[24] ;
  wire \r1_data_reg[25] ;
  wire \r1_data_reg[3] ;
  wire \r1_data_reg[4] ;
  wire \r1_data_reg[5] ;
  wire \r1_data_reg[6] ;
  wire \r1_data_reg[7] ;
  wire \r1_data_reg[8] ;
  wire \r1_data_reg[9] ;
  wire s_axi_awready;
  wire s_axi_awvalid;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.D(D),
        .Q(Q),
        .SR(areset_r),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[0] (\arb_sel_r_reg[0] ),
        .areset_r_reg_0(SR),
        .count_is_max(count_is_max),
        .\gen_data_bit[0].u_srl_fifo (\gen_data_bit[0].u_srl_fifo ),
        .\gen_data_bit[1].u_srl_fifo (\gen_data_bit[1].u_srl_fifo ),
        .\gen_data_bit[2].u_srl_fifo (\gen_data_bit[2].u_srl_fifo ),
        .m_bpayload_i(m_bpayload_i),
        .\r0_data_reg[31] (\r0_data_reg[31] ),
        .\r0_out_sel_r_reg[0] (\r0_out_sel_r_reg[0] ),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0]_0 ),
        .\r1_data_reg[10] (\r1_data_reg[10] ),
        .\r1_data_reg[11] (\r1_data_reg[11] ),
        .\r1_data_reg[12] (\r1_data_reg[12] ),
        .\r1_data_reg[13] (\r1_data_reg[13] ),
        .\r1_data_reg[14] (\r1_data_reg[14] ),
        .\r1_data_reg[15] (\r1_data_reg[15] ),
        .\r1_data_reg[16] (\r1_data_reg[16] ),
        .\r1_data_reg[17] (\r1_data_reg[17] ),
        .\r1_data_reg[18] (\r1_data_reg[18] ),
        .\r1_data_reg[19] (\r1_data_reg[19] ),
        .\r1_data_reg[20] (\r1_data_reg[20] ),
        .\r1_data_reg[22] (\r1_data_reg[22] ),
        .\r1_data_reg[23] (\r1_data_reg[23] ),
        .\r1_data_reg[24] (\r1_data_reg[24] ),
        .\r1_data_reg[25] (\r1_data_reg[25] ),
        .\r1_data_reg[3] (\r1_data_reg[3] ),
        .\r1_data_reg[4] (\r1_data_reg[4] ),
        .\r1_data_reg[5] (\r1_data_reg[5] ),
        .\r1_data_reg[6] (\r1_data_reg[6] ),
        .\r1_data_reg[7] (\r1_data_reg[7] ),
        .\r1_data_reg[8] (\r1_data_reg[8] ),
        .\r1_data_reg[9] (\r1_data_reg[9] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_encapsulator" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0
   (Q,
    last_out1,
    s_axi_wready,
    m_int_tkeep,
    m_int_tdata,
    \r0_out_sel_r_reg[0] ,
    \r0_out_sel_r_reg[0]_0 ,
    \r0_data_reg[31] ,
    \r0_data_reg[30] ,
    \r0_data_reg[29] ,
    \r0_data_reg[28] ,
    \r0_data_reg[27] ,
    \r0_data_reg[26] ,
    \r0_data_reg[25] ,
    \r0_data_reg[24] ,
    \r0_data_reg[23] ,
    \r0_data_reg[22] ,
    \r0_data_reg[21] ,
    \r0_data_reg[20] ,
    \r0_data_reg[19] ,
    \r0_data_reg[18] ,
    \r0_data_reg[17] ,
    \r0_data_reg[16] ,
    \r0_data_reg[15] ,
    \r0_data_reg[14] ,
    \r0_data_reg[13] ,
    \r0_data_reg[12] ,
    \r0_data_reg[11] ,
    \r0_data_reg[10] ,
    \r0_data_reg[9] ,
    \r0_data_reg[8] ,
    \r0_data_reg[7] ,
    \r0_data_reg[6] ,
    \r0_data_reg[5] ,
    s_axi_wvalid,
    count_is_zero,
    \r0_out_sel_r_reg[0]_1 ,
    areset_r,
    aclk,
    s_axi_wlast,
    D);
  output [1:0]Q;
  output last_out1;
  output s_axi_wready;
  output [0:0]m_int_tkeep;
  output [4:0]m_int_tdata;
  output \r0_out_sel_r_reg[0] ;
  output \r0_out_sel_r_reg[0]_0 ;
  output \r0_data_reg[31] ;
  output \r0_data_reg[30] ;
  output \r0_data_reg[29] ;
  output \r0_data_reg[28] ;
  output \r0_data_reg[27] ;
  output \r0_data_reg[26] ;
  output \r0_data_reg[25] ;
  output \r0_data_reg[24] ;
  output \r0_data_reg[23] ;
  output \r0_data_reg[22] ;
  output \r0_data_reg[21] ;
  output \r0_data_reg[20] ;
  output \r0_data_reg[19] ;
  output \r0_data_reg[18] ;
  output \r0_data_reg[17] ;
  output \r0_data_reg[16] ;
  output \r0_data_reg[15] ;
  output \r0_data_reg[14] ;
  output \r0_data_reg[13] ;
  output \r0_data_reg[12] ;
  output \r0_data_reg[11] ;
  output \r0_data_reg[10] ;
  output \r0_data_reg[9] ;
  output \r0_data_reg[8] ;
  output \r0_data_reg[7] ;
  output \r0_data_reg[6] ;
  output \r0_data_reg[5] ;
  input s_axi_wvalid;
  input count_is_zero;
  input \r0_out_sel_r_reg[0]_1 ;
  input areset_r;
  input aclk;
  input s_axi_wlast;
  input [35:0]D;

  wire [35:0]D;
  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire count_is_zero;
  wire last_out1;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire \r0_data_reg[10] ;
  wire \r0_data_reg[11] ;
  wire \r0_data_reg[12] ;
  wire \r0_data_reg[13] ;
  wire \r0_data_reg[14] ;
  wire \r0_data_reg[15] ;
  wire \r0_data_reg[16] ;
  wire \r0_data_reg[17] ;
  wire \r0_data_reg[18] ;
  wire \r0_data_reg[19] ;
  wire \r0_data_reg[20] ;
  wire \r0_data_reg[21] ;
  wire \r0_data_reg[22] ;
  wire \r0_data_reg[23] ;
  wire \r0_data_reg[24] ;
  wire \r0_data_reg[25] ;
  wire \r0_data_reg[26] ;
  wire \r0_data_reg[27] ;
  wire \r0_data_reg[28] ;
  wire \r0_data_reg[29] ;
  wire \r0_data_reg[30] ;
  wire \r0_data_reg[31] ;
  wire \r0_data_reg[5] ;
  wire \r0_data_reg[6] ;
  wire \r0_data_reg[7] ;
  wire \r0_data_reg[8] ;
  wire \r0_data_reg[9] ;
  wire \r0_out_sel_r_reg[0] ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r0_out_sel_r_reg[0]_1 ;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter \gen_dwidth_converter.axis_dwidth_converter_0 
       (.D({s_axi_wlast,D}),
        .Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .count_is_zero(count_is_zero),
        .last_out1(last_out1),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .\r0_data_reg[10] (\r0_data_reg[10] ),
        .\r0_data_reg[11] (\r0_data_reg[11] ),
        .\r0_data_reg[12] (\r0_data_reg[12] ),
        .\r0_data_reg[13] (\r0_data_reg[13] ),
        .\r0_data_reg[14] (\r0_data_reg[14] ),
        .\r0_data_reg[15] (\r0_data_reg[15] ),
        .\r0_data_reg[16] (\r0_data_reg[16] ),
        .\r0_data_reg[17] (\r0_data_reg[17] ),
        .\r0_data_reg[18] (\r0_data_reg[18] ),
        .\r0_data_reg[19] (\r0_data_reg[19] ),
        .\r0_data_reg[20] (\r0_data_reg[20] ),
        .\r0_data_reg[21] (\r0_data_reg[21] ),
        .\r0_data_reg[22] (\r0_data_reg[22] ),
        .\r0_data_reg[23] (\r0_data_reg[23] ),
        .\r0_data_reg[24] (\r0_data_reg[24] ),
        .\r0_data_reg[25] (\r0_data_reg[25] ),
        .\r0_data_reg[26] (\r0_data_reg[26] ),
        .\r0_data_reg[27] (\r0_data_reg[27] ),
        .\r0_data_reg[28] (\r0_data_reg[28] ),
        .\r0_data_reg[29] (\r0_data_reg[29] ),
        .\r0_data_reg[30] (\r0_data_reg[30] ),
        .\r0_data_reg[31] (\r0_data_reg[31] ),
        .\r0_data_reg[5] (\r0_data_reg[5] ),
        .\r0_data_reg[6] (\r0_data_reg[6] ),
        .\r0_data_reg[7] (\r0_data_reg[7] ),
        .\r0_data_reg[8] (\r0_data_reg[8] ),
        .\r0_data_reg[9] (\r0_data_reg[9] ),
        .\r0_out_sel_r_reg[0] (\r0_out_sel_r_reg[0] ),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0]_0 ),
        .\r0_out_sel_r_reg[0]_1 (\r0_out_sel_r_reg[0]_1 ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_encapsulator" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2
   (Q,
    s_axi_arready,
    f_mux4_return,
    s_axi_arvalid,
    \state_reg[0] ,
    \r0_out_sel_r_reg[0] ,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    arb_sel_i,
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output s_axi_arready;
  output [32:0]f_mux4_return;
  input s_axi_arvalid;
  input \state_reg[0] ;
  input \r0_out_sel_r_reg[0] ;
  input \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  input [1:0]arb_sel_i;
  input \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  input [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  input areset_r;
  input aclk;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire areset_r;
  wire [32:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  wire [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  wire \r0_out_sel_r_reg[0] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \state_reg[0] ;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(areset_r),
        .f_mux4_return(f_mux4_return),
        .\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ),
        .\r0_out_sel_r_reg[0] (\r0_out_sel_r_reg[0] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\state_reg[0] (\state_reg[0] ));
endmodule

module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander
   (Q,
    s_axis_tid_1_sp_1,
    aclk,
    m_axi_arready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_1_sp_1;
  input aclk;
  input m_axi_arready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_arready_i;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_1_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tid_1_sp_1 = s_axis_tid_1_sn_1;
  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_1_sp_1(s_axis_tid_1_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1
   (Q,
    s_axis_tid_0_sp_1,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_0_sp_1;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_awready_i;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_0_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tid_0_sp_1 = s_axis_tid_0_sn_1;
  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axi_awready_i(m_axi_awready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_0_sp_1(s_axis_tid_0_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0
   (s_axis_tvalid_0,
    Q,
    aclk,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output s_axis_tvalid_0;
  output [0:0]Q;
  input aclk;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axis_tlast;
  input areset_r;

  wire [0:0]Q;
  wire aclk;
  wire areset_r;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire s_axis_tvalid_0;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_0(s_axis_tvalid_0));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2
   (s_axis_tready,
    Q,
    E,
    \acc_data_reg[34] ,
    \acc_data_reg[34]_0 ,
    s_axi_rready_0,
    s_axi_rdata,
    s_axi_rresp,
    s_axis_tready_0,
    s_axis_tlast,
    aclk,
    s_axis_tready_1,
    s_axis_tready_2,
    s_axis_tready_3,
    s_axi_rready,
    s_axis_tready_4,
    s_axis_tready_5,
    s_axis_tid,
    s_axis_tvalid,
    s_axi_arvalid,
    \num_active_trans_reg[0] ,
    \num_active_trans_reg[0]_0 ,
    areset_r,
    s_axis_tdata);
  output s_axis_tready;
  output [0:0]Q;
  output [0:0]E;
  output \acc_data_reg[34] ;
  output \acc_data_reg[34]_0 ;
  output s_axi_rready_0;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input [2:0]s_axis_tready_0;
  input s_axis_tlast;
  input aclk;
  input s_axis_tready_1;
  input s_axis_tready_2;
  input s_axis_tready_3;
  input s_axi_rready;
  input s_axis_tready_4;
  input s_axis_tready_5;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axi_arvalid;
  input \num_active_trans_reg[0] ;
  input [0:0]\num_active_trans_reg[0]_0 ;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [0:0]E;
  wire [0:0]Q;
  wire \acc_data_reg[34] ;
  wire \acc_data_reg[34]_0 ;
  wire aclk;
  wire areset_r;
  wire \num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]s_axi_rresp;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tready_2;
  wire s_axis_tready_3;
  wire s_axis_tready_4;
  wire s_axis_tready_5;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.E(E),
        .Q(Q),
        .\acc_data_reg[34] (\acc_data_reg[34] ),
        .\acc_data_reg[34]_0 (\acc_data_reg[34]_0 ),
        .aclk(aclk),
        .areset_r(areset_r),
        .\num_active_trans_reg[0] (\num_active_trans_reg[0] ),
        .\num_active_trans_reg[0]_0 (\num_active_trans_reg[0]_0 ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(s_axi_rready_0),
        .s_axi_rresp(s_axi_rresp),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0(s_axis_tready_0),
        .s_axis_tready_1(s_axis_tready_1),
        .s_axis_tready_2(s_axis_tready_2),
        .s_axis_tready_3(s_axis_tready_3),
        .s_axis_tready_4(s_axis_tready_4),
        .s_axis_tready_5(s_axis_tready_5),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_AXIS_TDATA_WIDTH = "32" *) (* C_AXIS_TID_WIDTH = "3" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "1" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "zynq" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* G_AXI_ARADDR_INDEX = "0" *) (* G_AXI_ARADDR_WIDTH = "32" *) (* G_AXI_ARBURST_INDEX = "38" *) 
(* G_AXI_ARBURST_WIDTH = "2" *) (* G_AXI_ARCACHE_INDEX = "40" *) (* G_AXI_ARCACHE_WIDTH = "4" *) 
(* G_AXI_ARID_INDEX = "53" *) (* G_AXI_ARID_WIDTH = "1" *) (* G_AXI_ARLEN_INDEX = "44" *) 
(* G_AXI_ARLEN_WIDTH = "8" *) (* G_AXI_ARLOCK_INDEX = "52" *) (* G_AXI_ARLOCK_WIDTH = "1" *) 
(* G_AXI_ARPAYLOAD_WIDTH = "58" *) (* G_AXI_ARPROT_INDEX = "32" *) (* G_AXI_ARPROT_WIDTH = "3" *) 
(* G_AXI_ARQOS_INDEX = "54" *) (* G_AXI_ARQOS_WIDTH = "4" *) (* G_AXI_ARREGION_INDEX = "58" *) 
(* G_AXI_ARREGION_WIDTH = "0" *) (* G_AXI_ARSIZE_INDEX = "35" *) (* G_AXI_ARSIZE_WIDTH = "3" *) 
(* G_AXI_ARUSER_INDEX = "58" *) (* G_AXI_ARUSER_WIDTH = "0" *) (* G_AXI_AWADDR_INDEX = "0" *) 
(* G_AXI_AWADDR_WIDTH = "32" *) (* G_AXI_AWBURST_INDEX = "38" *) (* G_AXI_AWBURST_WIDTH = "2" *) 
(* G_AXI_AWCACHE_INDEX = "40" *) (* G_AXI_AWCACHE_WIDTH = "4" *) (* G_AXI_AWID_INDEX = "53" *) 
(* G_AXI_AWID_WIDTH = "1" *) (* G_AXI_AWLEN_INDEX = "44" *) (* G_AXI_AWLEN_WIDTH = "8" *) 
(* G_AXI_AWLOCK_INDEX = "52" *) (* G_AXI_AWLOCK_WIDTH = "1" *) (* G_AXI_AWPAYLOAD_WIDTH = "58" *) 
(* G_AXI_AWPROT_INDEX = "32" *) (* G_AXI_AWPROT_WIDTH = "3" *) (* G_AXI_AWQOS_INDEX = "54" *) 
(* G_AXI_AWQOS_WIDTH = "4" *) (* G_AXI_AWREGION_INDEX = "58" *) (* G_AXI_AWREGION_WIDTH = "0" *) 
(* G_AXI_AWSIZE_INDEX = "35" *) (* G_AXI_AWSIZE_WIDTH = "3" *) (* G_AXI_AWUSER_INDEX = "58" *) 
(* G_AXI_AWUSER_WIDTH = "0" *) (* G_AXI_BID_INDEX = "2" *) (* G_AXI_BID_WIDTH = "1" *) 
(* G_AXI_BPAYLOAD_WIDTH = "3" *) (* G_AXI_BRESP_INDEX = "0" *) (* G_AXI_BRESP_WIDTH = "2" *) 
(* G_AXI_BUSER_INDEX = "3" *) (* G_AXI_BUSER_WIDTH = "0" *) (* G_AXI_RDATA_INDEX = "0" *) 
(* G_AXI_RDATA_WIDTH = "32" *) (* G_AXI_RID_INDEX = "35" *) (* G_AXI_RID_WIDTH = "1" *) 
(* G_AXI_RLAST_INDEX = "34" *) (* G_AXI_RLAST_WIDTH = "1" *) (* G_AXI_RPAYLOAD_WIDTH = "36" *) 
(* G_AXI_RRESP_INDEX = "32" *) (* G_AXI_RRESP_WIDTH = "2" *) (* G_AXI_RUSER_INDEX = "36" *) 
(* G_AXI_RUSER_WIDTH = "0" *) (* G_AXI_WDATA_INDEX = "0" *) (* G_AXI_WDATA_WIDTH = "32" *) 
(* G_AXI_WID_INDEX = "37" *) (* G_AXI_WID_WIDTH = "0" *) (* G_AXI_WLAST_INDEX = "36" *) 
(* G_AXI_WLAST_WIDTH = "1" *) (* G_AXI_WPAYLOAD_WIDTH = "37" *) (* G_AXI_WSTRB_INDEX = "32" *) 
(* G_AXI_WSTRB_WIDTH = "4" *) (* G_AXI_WUSER_INDEX = "37" *) (* G_AXI_WUSER_WIDTH = "0" *) 
(* LP_AR_TDEST = "3'b010" *) (* LP_AW_TDEST = "3'b001" *) (* LP_B_TDEST = "3'b000" *) 
(* LP_LOG_M_AX_FIFO_DEPTH = "4" *) (* LP_M_AX_FIFO_DEPTH = "16" *) (* LP_R_TDEST = "3'b011" *) 
(* LP_W_TDEST = "3'b100" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid);
  input aclk;
  input aresetn;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [2:0]s_axis_tid;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;

  wire \<const0> ;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire areset_r;
  wire aresetn;
  wire clear;
  wire count_is_max;
  wire count_is_zero;
  wire \gen_dwidth_converter.axis_dwidth_converter_0/areset_r ;
  wire \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1 ;
  wire [36:0]\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return ;
  wire m_axi_arready_i;
  wire m_axi_arvalid_i;
  wire m_axi_awready_i;
  wire m_axi_awvalid_i;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]m_bpayload_i;
  wire [132:128]m_int_tdata;
  wire [19:19]m_int_tkeep;
  wire [4:1]m_int_tvalid;
  wire [31:21]p_0_in1_in;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire s_axi_arready_i;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire s_axi_awready_i;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_i;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [4:1]s_int_tready;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0;
  wire u_axis_switch_v1_1_26_axis_switch_1x5_n_1;
  wire u_axis_switch_v1_1_26_axis_switch_5x1_n_42;
  wire u_axis_switch_v1_1_26_axis_switch_5x1_n_43;
  wire u_axis_switch_v1_1_26_axis_switch_5x1_n_45;
  wire u_transaction_counter_ar_to_r_n_0;
  wire u_transaction_counter_aw_to_b_n_1;
  wire u_transaction_counter_aw_to_b_n_2;
  wire u_transaction_counter_aw_to_b_n_3;

  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1:0] = s_axis_tdata[1:0];
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT4 #(
    .INIT(16'h0004)) 
    s_axi_bvalid_INST_0
       (.I0(s_axis_tid[2]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[1]),
        .O(s_axi_bvalid));
  design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0 u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar
       (.Q(m_axi_arvalid_i),
        .SS(clear),
        .aclk(aclk),
        .areset_r(areset_r),
        .aresetn(aresetn),
        .m_axi_arready_i(m_axi_arready_i));
  design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0 u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw
       (.Q(m_axi_awvalid_i),
        .SR(clear),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axi_awready_i(m_axi_awready_i));
  design_1_axi_mm2s_mapper_1_1_axi_infrastructure_v1_1_0_axic_srl_fifo u_axi_infrastructure_v1_1_0_axic_srl_fifo_b
       (.aclk(aclk),
        .m_bpayload_i(m_bpayload_i));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized2 u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_ar
       (.D({s_axi_arqos,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot,s_axi_araddr}),
        .Q({m_int_tvalid[2],s_axi_arready_i}),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .f_mux4_return({\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [36],\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [31:0]}),
        .\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32),
        .\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37),
        .\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ({p_0_in1_in[31:26],p_0_in1_in[21]}),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4),
        .\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16),
        .\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22),
        .\r0_out_sel_r_reg[0] (u_axis_switch_v1_1_26_axis_switch_5x1_n_45),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\state_reg[0] (u_transaction_counter_ar_to_r_n_0));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw
       (.D({s_axi_awqos,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot,s_axi_awaddr}),
        .Q({m_int_tvalid[1],s_axi_awready_i}),
        .SR(clear),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[0] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_4),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .count_is_max(count_is_max),
        .\gen_data_bit[0].u_srl_fifo (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_15),
        .\gen_data_bit[1].u_srl_fifo (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_14),
        .\gen_data_bit[2].u_srl_fifo (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_5),
        .m_bpayload_i(m_bpayload_i),
        .\r0_data_reg[31] ({p_0_in1_in[31:26],p_0_in1_in[21]}),
        .\r0_out_sel_r_reg[0] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_13),
        .\r0_out_sel_r_reg[0]_0 (u_axis_switch_v1_1_26_axis_switch_5x1_n_42),
        .\r1_data_reg[10] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_23),
        .\r1_data_reg[11] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_24),
        .\r1_data_reg[12] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_25),
        .\r1_data_reg[13] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_26),
        .\r1_data_reg[14] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_27),
        .\r1_data_reg[15] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_28),
        .\r1_data_reg[16] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_29),
        .\r1_data_reg[17] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_30),
        .\r1_data_reg[18] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_31),
        .\r1_data_reg[19] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_32),
        .\r1_data_reg[20] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_33),
        .\r1_data_reg[22] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_34),
        .\r1_data_reg[23] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_35),
        .\r1_data_reg[24] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_36),
        .\r1_data_reg[25] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_37),
        .\r1_data_reg[3] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_16),
        .\r1_data_reg[4] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_17),
        .\r1_data_reg[5] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_18),
        .\r1_data_reg[6] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_19),
        .\r1_data_reg[7] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_20),
        .\r1_data_reg[8] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_21),
        .\r1_data_reg[9] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw_n_22),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized0 u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w
       (.D({s_axi_wstrb,s_axi_wdata}),
        .Q({m_int_tvalid[4],s_axi_wready_i}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .count_is_zero(count_is_zero),
        .last_out1(\gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1 ),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .\r0_data_reg[10] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33),
        .\r0_data_reg[11] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32),
        .\r0_data_reg[12] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31),
        .\r0_data_reg[13] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30),
        .\r0_data_reg[14] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29),
        .\r0_data_reg[15] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28),
        .\r0_data_reg[16] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27),
        .\r0_data_reg[17] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26),
        .\r0_data_reg[18] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25),
        .\r0_data_reg[19] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24),
        .\r0_data_reg[20] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23),
        .\r0_data_reg[21] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22),
        .\r0_data_reg[22] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21),
        .\r0_data_reg[23] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20),
        .\r0_data_reg[24] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19),
        .\r0_data_reg[25] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18),
        .\r0_data_reg[26] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17),
        .\r0_data_reg[27] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16),
        .\r0_data_reg[28] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15),
        .\r0_data_reg[29] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14),
        .\r0_data_reg[30] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13),
        .\r0_data_reg[31] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12),
        .\r0_data_reg[5] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38),
        .\r0_data_reg[6] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37),
        .\r0_data_reg[7] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36),
        .\r0_data_reg[8] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35),
        .\r0_data_reg[9] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34),
        .\r0_out_sel_r_reg[0] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10),
        .\r0_out_sel_r_reg[0]_0 (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11),
        .\r0_out_sel_r_reg[0]_1 (u_axis_switch_v1_1_26_axis_switch_5x1_n_43),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander u_axi_mm2s_mapper_v1_1_25_stream_expander_ar
       (.Q({m_axi_arvalid_i,s_int_tready[2]}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_1_sp_1(u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander_1 u_axi_mm2s_mapper_v1_1_25_stream_expander_aw
       (.Q({m_axi_awvalid_i,s_int_tready[1]}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .m_axi_awready_i(m_axi_awready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_0_sp_1(u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2 u_axi_mm2s_mapper_v1_1_25_stream_expander_r
       (.E(u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2),
        .Q(s_axi_rvalid),
        .\acc_data_reg[34] (s_axi_rlast),
        .\acc_data_reg[34]_0 (u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .\num_active_trans_reg[0] (u_transaction_counter_ar_to_r_n_0),
        .\num_active_trans_reg[0]_0 (s_axi_arready_i),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5),
        .s_axi_rresp(s_axi_rresp),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0({s_int_tready[4],s_int_tready[2:1]}),
        .s_axis_tready_1(u_axi_mm2s_mapper_v1_1_25_stream_expander_aw_n_2),
        .s_axis_tready_2(u_transaction_counter_aw_to_b_n_3),
        .s_axis_tready_3(u_axis_switch_v1_1_26_axis_switch_1x5_n_1),
        .s_axis_tready_4(u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0),
        .s_axis_tready_5(u_axi_mm2s_mapper_v1_1_25_stream_expander_ar_n_2),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0 u_axi_mm2s_mapper_v1_1_25_stream_expander_w
       (.Q(s_int_tready[4]),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_0(u_axi_mm2s_mapper_v1_1_25_stream_expander_w_n_0));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0 u_axis_switch_v1_1_26_axis_switch_1x5
       (.SR(clear),
        .aclk(aclk),
        .areset_r(areset_r),
        .\gen_tdest_routing.decode_err_r_reg (u_axis_switch_v1_1_26_axis_switch_1x5_n_1),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch u_axis_switch_v1_1_26_axis_switch_5x1
       (.aclk(aclk),
        .\arb_sel_r_reg[1] (arb_sel_i),
        .areset_r(areset_r),
        .\busy_r_reg[1] (u_axis_switch_v1_1_26_axis_switch_5x1_n_42),
        .\busy_r_reg[2] (u_axis_switch_v1_1_26_axis_switch_5x1_n_45),
        .\busy_r_reg[4] (u_axis_switch_v1_1_26_axis_switch_5x1_n_43),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_33),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_32),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_31),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_30),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_29),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_28),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_27),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_26),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_25),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_24),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_23),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_22),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_21),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_20),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_19),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_18),
        .\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_17),
        .\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_16),
        .\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_15),
        .\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_14),
        .\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_13),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_12),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_10),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_11),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (m_axis_tlast),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ({\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [36],\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [31:0]}),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_38),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_37),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_36),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_35),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w_n_34),
        .last_out1(\gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/last_out1 ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .m_int_tvalid({m_int_tvalid[4],m_int_tvalid[2:1]}));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter u_transaction_counter_ar_to_r
       (.E(u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_2),
        .Q(s_axi_arready_i),
        .SS(clear),
        .aclk(aclk),
        .count_is_max_reg_0(u_transaction_counter_ar_to_r_n_0),
        .count_is_max_reg_1(u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_5),
        .\num_active_trans_reg[2]_0 (u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_4),
        .s_axi_arvalid(s_axi_arvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2 u_transaction_counter_aw_to_b
       (.E(u_transaction_counter_aw_to_b_n_1),
        .Q(s_axi_wready_i),
        .SS(clear),
        .aclk(aclk),
        .count_is_max(count_is_max),
        .count_is_max_reg_0(s_axi_awready_i),
        .count_is_zero(count_is_zero),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(u_transaction_counter_aw_to_b_n_2),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_2_sp_1(u_transaction_counter_aw_to_b_n_3),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3 u_transaction_counter_aw_to_w
       (.E(u_transaction_counter_aw_to_b_n_1),
        .Q(s_axi_wready_i),
        .SS(clear),
        .aclk(aclk),
        .aresetn(aresetn),
        .count_is_zero(count_is_zero),
        .count_is_zero_reg_0(u_transaction_counter_aw_to_b_n_2),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter
   (count_is_max_reg_0,
    SS,
    aclk,
    \num_active_trans_reg[2]_0 ,
    s_axi_arvalid,
    Q,
    count_is_max_reg_1,
    E);
  output count_is_max_reg_0;
  input [0:0]SS;
  input aclk;
  input \num_active_trans_reg[2]_0 ;
  input s_axi_arvalid;
  input [0:0]Q;
  input count_is_max_reg_1;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire count_is_max_i_1__0_n_0;
  wire count_is_max_i_2__0_n_0;
  wire count_is_max_i_3_n_0;
  wire count_is_max_reg_0;
  wire count_is_max_reg_1;
  wire \num_active_trans[0]_i_1__1_n_0 ;
  wire \num_active_trans[1]_i_1__1_n_0 ;
  wire \num_active_trans[2]_i_1__1_n_0 ;
  wire \num_active_trans[3]_i_2__1_n_0 ;
  wire [3:0]num_active_trans_reg;
  wire \num_active_trans_reg[2]_0 ;
  wire s_axi_arvalid;

  LUT6 #(
    .INIT(64'hFFFF00FF00400000)) 
    count_is_max_i_1__0
       (.I0(count_is_max_i_2__0_n_0),
        .I1(num_active_trans_reg[1]),
        .I2(num_active_trans_reg[3]),
        .I3(count_is_max_i_3_n_0),
        .I4(count_is_max_reg_1),
        .I5(count_is_max_reg_0),
        .O(count_is_max_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    count_is_max_i_2__0
       (.I0(num_active_trans_reg[0]),
        .I1(num_active_trans_reg[2]),
        .O(count_is_max_i_2__0_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    count_is_max_i_3
       (.I0(s_axi_arvalid),
        .I1(count_is_max_reg_0),
        .I2(Q),
        .O(count_is_max_i_3_n_0));
  FDRE count_is_max_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_max_i_1__0_n_0),
        .Q(count_is_max_reg_0),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1__1 
       (.I0(num_active_trans_reg[0]),
        .O(\num_active_trans[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \num_active_trans[1]_i_1__1 
       (.I0(num_active_trans_reg[1]),
        .I1(\num_active_trans_reg[2]_0 ),
        .I2(num_active_trans_reg[0]),
        .O(\num_active_trans[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \num_active_trans[2]_i_1__1 
       (.I0(\num_active_trans_reg[2]_0 ),
        .I1(num_active_trans_reg[2]),
        .I2(num_active_trans_reg[1]),
        .I3(num_active_trans_reg[0]),
        .O(\num_active_trans[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \num_active_trans[3]_i_2__1 
       (.I0(num_active_trans_reg[0]),
        .I1(num_active_trans_reg[2]),
        .I2(num_active_trans_reg[1]),
        .I3(num_active_trans_reg[3]),
        .I4(\num_active_trans_reg[2]_0 ),
        .O(\num_active_trans[3]_i_2__1_n_0 ));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[0]_i_1__1_n_0 ),
        .Q(num_active_trans_reg[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[1]_i_1__1_n_0 ),
        .Q(num_active_trans_reg[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[2]_i_1__1_n_0 ),
        .Q(num_active_trans_reg[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[3]_i_2__1_n_0 ),
        .Q(num_active_trans_reg[3]),
        .R(SS));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_transaction_counter" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_2
   (count_is_max,
    E,
    s_axi_awvalid_0,
    s_axis_tid_2_sp_1,
    SS,
    aclk,
    Q,
    count_is_zero,
    s_axi_wvalid,
    s_axi_wlast,
    s_axis_tid,
    s_axis_tvalid,
    s_axi_bready,
    s_axi_awvalid,
    count_is_max_reg_0);
  output count_is_max;
  output [0:0]E;
  output s_axi_awvalid_0;
  output s_axis_tid_2_sp_1;
  input [0:0]SS;
  input aclk;
  input [0:0]Q;
  input count_is_zero;
  input s_axi_wvalid;
  input s_axi_wlast;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axi_bready;
  input s_axi_awvalid;
  input [0:0]count_is_max_reg_0;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire count_is_max;
  wire count_is_max_i_1_n_0;
  wire count_is_max_i_2_n_0;
  wire [0:0]count_is_max_reg_0;
  wire count_is_zero;
  wire \num_active_trans[0]_i_1_n_0 ;
  wire \num_active_trans[1]_i_1__0_n_0 ;
  wire \num_active_trans[2]_i_1__0_n_0 ;
  wire \num_active_trans[3]_i_1__0_n_0 ;
  wire \num_active_trans[3]_i_2__0_n_0 ;
  wire \num_active_trans[3]_i_4_n_0 ;
  wire [3:0]num_active_trans_reg;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_2_sn_1;
  wire s_axis_tvalid;

  assign s_axis_tid_2_sp_1 = s_axis_tid_2_sn_1;
  LUT6 #(
    .INIT(64'hFFFF00FF00400000)) 
    count_is_max_i_1
       (.I0(count_is_max_i_2_n_0),
        .I1(num_active_trans_reg[1]),
        .I2(num_active_trans_reg[3]),
        .I3(s_axi_awvalid_0),
        .I4(s_axis_tid_2_sn_1),
        .I5(count_is_max),
        .O(count_is_max_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h7)) 
    count_is_max_i_2
       (.I0(num_active_trans_reg[0]),
        .I1(num_active_trans_reg[2]),
        .O(count_is_max_i_2_n_0));
  FDRE count_is_max_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_max_i_1_n_0),
        .Q(count_is_max),
        .R(SS));
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1 
       (.I0(num_active_trans_reg[0]),
        .O(\num_active_trans[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \num_active_trans[1]_i_1__0 
       (.I0(num_active_trans_reg[1]),
        .I1(\num_active_trans[3]_i_4_n_0 ),
        .I2(num_active_trans_reg[0]),
        .O(\num_active_trans[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6CC9)) 
    \num_active_trans[2]_i_1__0 
       (.I0(\num_active_trans[3]_i_4_n_0 ),
        .I1(num_active_trans_reg[2]),
        .I2(num_active_trans_reg[1]),
        .I3(num_active_trans_reg[0]),
        .O(\num_active_trans[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h59555555)) 
    \num_active_trans[3]_i_1 
       (.I0(s_axi_awvalid_0),
        .I1(Q),
        .I2(count_is_zero),
        .I3(s_axi_wvalid),
        .I4(s_axi_wlast),
        .O(E));
  LUT6 #(
    .INIT(64'h5555556555555555)) 
    \num_active_trans[3]_i_1__0 
       (.I0(s_axi_awvalid_0),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[0]),
        .I4(s_axis_tid[1]),
        .I5(s_axi_bready),
        .O(\num_active_trans[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \num_active_trans[3]_i_2__0 
       (.I0(num_active_trans_reg[0]),
        .I1(num_active_trans_reg[2]),
        .I2(num_active_trans_reg[1]),
        .I3(num_active_trans_reg[3]),
        .I4(\num_active_trans[3]_i_4_n_0 ),
        .O(\num_active_trans[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \num_active_trans[3]_i_3__0 
       (.I0(s_axi_awvalid),
        .I1(count_is_max),
        .I2(count_is_max_reg_0),
        .O(s_axi_awvalid_0));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \num_active_trans[3]_i_4 
       (.I0(s_axi_bready),
        .I1(s_axis_tid[1]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tid[2]),
        .I5(s_axi_awvalid_0),
        .O(\num_active_trans[3]_i_4_n_0 ));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(\num_active_trans[3]_i_1__0_n_0 ),
        .D(\num_active_trans[0]_i_1_n_0 ),
        .Q(num_active_trans_reg[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(\num_active_trans[3]_i_1__0_n_0 ),
        .D(\num_active_trans[1]_i_1__0_n_0 ),
        .Q(num_active_trans_reg[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(\num_active_trans[3]_i_1__0_n_0 ),
        .D(\num_active_trans[2]_i_1__0_n_0 ),
        .Q(num_active_trans_reg[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(\num_active_trans[3]_i_1__0_n_0 ),
        .D(\num_active_trans[3]_i_2__0_n_0 ),
        .Q(num_active_trans_reg[3]),
        .R(SS));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    s_axis_tready_INST_0_i_3
       (.I0(s_axis_tid[2]),
        .I1(s_axis_tvalid),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[1]),
        .I4(s_axi_bready),
        .O(s_axis_tid_2_sn_1));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_transaction_counter" *) 
module design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_transaction_counter_3
   (count_is_zero,
    aclk,
    aresetn,
    s_axi_wlast,
    count_is_zero_reg_0,
    s_axi_wvalid,
    Q,
    SS,
    E);
  output count_is_zero;
  input aclk;
  input aresetn;
  input s_axi_wlast;
  input count_is_zero_reg_0;
  input s_axi_wvalid;
  input [0:0]Q;
  input [0:0]SS;
  input [0:0]E;

  wire [0:0]E;
  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire aresetn;
  wire count_is_zero;
  wire count_is_zero_i_1_n_0;
  wire count_is_zero_i_2_n_0;
  wire count_is_zero_i_3_n_0;
  wire count_is_zero_reg_0;
  wire \num_active_trans[0]_i_1__0_n_0 ;
  wire \num_active_trans[1]_i_1_n_0 ;
  wire \num_active_trans[2]_i_1_n_0 ;
  wire \num_active_trans[3]_i_2_n_0 ;
  wire \num_active_trans[3]_i_3_n_0 ;
  wire [3:0]num_active_trans_reg;
  wire s_axi_wlast;
  wire s_axi_wvalid;

  LUT6 #(
    .INIT(64'hFFFF55F555D55555)) 
    count_is_zero_i_1
       (.I0(aresetn),
        .I1(count_is_zero_i_2_n_0),
        .I2(s_axi_wlast),
        .I3(count_is_zero_i_3_n_0),
        .I4(count_is_zero_reg_0),
        .I5(count_is_zero),
        .O(count_is_zero_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    count_is_zero_i_2
       (.I0(num_active_trans_reg[1]),
        .I1(num_active_trans_reg[0]),
        .I2(num_active_trans_reg[3]),
        .I3(num_active_trans_reg[2]),
        .O(count_is_zero_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    count_is_zero_i_3
       (.I0(s_axi_wvalid),
        .I1(count_is_zero),
        .I2(Q),
        .O(count_is_zero_i_3_n_0));
  FDRE count_is_zero_reg
       (.C(aclk),
        .CE(1'b1),
        .D(count_is_zero_i_1_n_0),
        .Q(count_is_zero),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \num_active_trans[0]_i_1__0 
       (.I0(num_active_trans_reg[0]),
        .O(\num_active_trans[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \num_active_trans[1]_i_1 
       (.I0(num_active_trans_reg[1]),
        .I1(\num_active_trans[3]_i_3_n_0 ),
        .I2(num_active_trans_reg[0]),
        .O(\num_active_trans[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \num_active_trans[2]_i_1 
       (.I0(num_active_trans_reg[2]),
        .I1(num_active_trans_reg[0]),
        .I2(num_active_trans_reg[1]),
        .I3(\num_active_trans[3]_i_3_n_0 ),
        .O(\num_active_trans[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h7F80FE01)) 
    \num_active_trans[3]_i_2 
       (.I0(num_active_trans_reg[0]),
        .I1(num_active_trans_reg[1]),
        .I2(num_active_trans_reg[2]),
        .I3(num_active_trans_reg[3]),
        .I4(\num_active_trans[3]_i_3_n_0 ),
        .O(\num_active_trans[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \num_active_trans[3]_i_3 
       (.I0(s_axi_wlast),
        .I1(s_axi_wvalid),
        .I2(count_is_zero),
        .I3(Q),
        .I4(count_is_zero_reg_0),
        .O(\num_active_trans[3]_i_3_n_0 ));
  FDRE \num_active_trans_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[0]_i_1__0_n_0 ),
        .Q(num_active_trans_reg[0]),
        .R(SS));
  FDRE \num_active_trans_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[1]_i_1_n_0 ),
        .Q(num_active_trans_reg[1]),
        .R(SS));
  FDRE \num_active_trans_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[2]_i_1_n_0 ),
        .Q(num_active_trans_reg[2]),
        .R(SS));
  FDRE \num_active_trans_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\num_active_trans[3]_i_2_n_0 ),
        .Q(num_active_trans_reg[3]),
        .R(SS));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
   (Q,
    last_out1,
    s_axi_wready,
    m_int_tkeep,
    m_int_tdata,
    \r0_out_sel_r_reg[0] ,
    \r0_out_sel_r_reg[0]_0 ,
    \r0_data_reg[31] ,
    \r0_data_reg[30] ,
    \r0_data_reg[29] ,
    \r0_data_reg[28] ,
    \r0_data_reg[27] ,
    \r0_data_reg[26] ,
    \r0_data_reg[25] ,
    \r0_data_reg[24] ,
    \r0_data_reg[23] ,
    \r0_data_reg[22] ,
    \r0_data_reg[21] ,
    \r0_data_reg[20] ,
    \r0_data_reg[19] ,
    \r0_data_reg[18] ,
    \r0_data_reg[17] ,
    \r0_data_reg[16] ,
    \r0_data_reg[15] ,
    \r0_data_reg[14] ,
    \r0_data_reg[13] ,
    \r0_data_reg[12] ,
    \r0_data_reg[11] ,
    \r0_data_reg[10] ,
    \r0_data_reg[9] ,
    \r0_data_reg[8] ,
    \r0_data_reg[7] ,
    \r0_data_reg[6] ,
    \r0_data_reg[5] ,
    s_axi_wvalid,
    count_is_zero,
    \r0_out_sel_r_reg[0]_1 ,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output last_out1;
  output s_axi_wready;
  output [0:0]m_int_tkeep;
  output [4:0]m_int_tdata;
  output \r0_out_sel_r_reg[0] ;
  output \r0_out_sel_r_reg[0]_0 ;
  output \r0_data_reg[31] ;
  output \r0_data_reg[30] ;
  output \r0_data_reg[29] ;
  output \r0_data_reg[28] ;
  output \r0_data_reg[27] ;
  output \r0_data_reg[26] ;
  output \r0_data_reg[25] ;
  output \r0_data_reg[24] ;
  output \r0_data_reg[23] ;
  output \r0_data_reg[22] ;
  output \r0_data_reg[21] ;
  output \r0_data_reg[20] ;
  output \r0_data_reg[19] ;
  output \r0_data_reg[18] ;
  output \r0_data_reg[17] ;
  output \r0_data_reg[16] ;
  output \r0_data_reg[15] ;
  output \r0_data_reg[14] ;
  output \r0_data_reg[13] ;
  output \r0_data_reg[12] ;
  output \r0_data_reg[11] ;
  output \r0_data_reg[10] ;
  output \r0_data_reg[9] ;
  output \r0_data_reg[8] ;
  output \r0_data_reg[7] ;
  output \r0_data_reg[6] ;
  output \r0_data_reg[5] ;
  input s_axi_wvalid;
  input count_is_zero;
  input \r0_out_sel_r_reg[0]_1 ;
  input areset_r;
  input aclk;
  input [36:0]D;

  wire [36:0]D;
  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire count_is_zero;
  wire last_out1;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire \r0_data_reg[10] ;
  wire \r0_data_reg[11] ;
  wire \r0_data_reg[12] ;
  wire \r0_data_reg[13] ;
  wire \r0_data_reg[14] ;
  wire \r0_data_reg[15] ;
  wire \r0_data_reg[16] ;
  wire \r0_data_reg[17] ;
  wire \r0_data_reg[18] ;
  wire \r0_data_reg[19] ;
  wire \r0_data_reg[20] ;
  wire \r0_data_reg[21] ;
  wire \r0_data_reg[22] ;
  wire \r0_data_reg[23] ;
  wire \r0_data_reg[24] ;
  wire \r0_data_reg[25] ;
  wire \r0_data_reg[26] ;
  wire \r0_data_reg[27] ;
  wire \r0_data_reg[28] ;
  wire \r0_data_reg[29] ;
  wire \r0_data_reg[30] ;
  wire \r0_data_reg[31] ;
  wire \r0_data_reg[5] ;
  wire \r0_data_reg[6] ;
  wire \r0_data_reg[7] ;
  wire \r0_data_reg[8] ;
  wire \r0_data_reg[9] ;
  wire \r0_out_sel_r_reg[0] ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r0_out_sel_r_reg[0]_1 ;
  wire s_axi_wready;
  wire s_axi_wvalid;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .count_is_zero(count_is_zero),
        .last_out1(last_out1),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .\r0_data_reg[10]_0 (\r0_data_reg[10] ),
        .\r0_data_reg[11]_0 (\r0_data_reg[11] ),
        .\r0_data_reg[12]_0 (\r0_data_reg[12] ),
        .\r0_data_reg[13]_0 (\r0_data_reg[13] ),
        .\r0_data_reg[14]_0 (\r0_data_reg[14] ),
        .\r0_data_reg[15]_0 (\r0_data_reg[15] ),
        .\r0_data_reg[16]_0 (\r0_data_reg[16] ),
        .\r0_data_reg[17]_0 (\r0_data_reg[17] ),
        .\r0_data_reg[18]_0 (\r0_data_reg[18] ),
        .\r0_data_reg[19]_0 (\r0_data_reg[19] ),
        .\r0_data_reg[20]_0 (\r0_data_reg[20] ),
        .\r0_data_reg[21]_0 (\r0_data_reg[21] ),
        .\r0_data_reg[22]_0 (\r0_data_reg[22] ),
        .\r0_data_reg[23]_0 (\r0_data_reg[23] ),
        .\r0_data_reg[24]_0 (\r0_data_reg[24] ),
        .\r0_data_reg[25]_0 (\r0_data_reg[25] ),
        .\r0_data_reg[26]_0 (\r0_data_reg[26] ),
        .\r0_data_reg[27]_0 (\r0_data_reg[27] ),
        .\r0_data_reg[28]_0 (\r0_data_reg[28] ),
        .\r0_data_reg[29]_0 (\r0_data_reg[29] ),
        .\r0_data_reg[30]_0 (\r0_data_reg[30] ),
        .\r0_data_reg[31]_0 (\r0_data_reg[31] ),
        .\r0_data_reg[5]_0 (\r0_data_reg[5] ),
        .\r0_data_reg[6]_0 (\r0_data_reg[6] ),
        .\r0_data_reg[7]_0 (\r0_data_reg[7] ),
        .\r0_data_reg[8]_0 (\r0_data_reg[8] ),
        .\r0_data_reg[9]_0 (\r0_data_reg[9] ),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0] ),
        .\r0_out_sel_r_reg[0]_1 (\r0_out_sel_r_reg[0]_0 ),
        .\r0_out_sel_r_reg[0]_2 (\r0_out_sel_r_reg[0]_1 ),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_12
   (SR,
    Q,
    s_axi_awready,
    \arb_sel_r_reg[0] ,
    \gen_data_bit[2].u_srl_fifo ,
    \r0_out_sel_r_reg[0] ,
    \gen_data_bit[1].u_srl_fifo ,
    \gen_data_bit[0].u_srl_fifo ,
    \r1_data_reg[3] ,
    \r1_data_reg[4] ,
    \r1_data_reg[5] ,
    \r1_data_reg[6] ,
    \r1_data_reg[7] ,
    \r1_data_reg[8] ,
    \r1_data_reg[9] ,
    \r1_data_reg[10] ,
    \r1_data_reg[11] ,
    \r1_data_reg[12] ,
    \r1_data_reg[13] ,
    \r1_data_reg[14] ,
    \r1_data_reg[15] ,
    \r1_data_reg[16] ,
    \r1_data_reg[17] ,
    \r1_data_reg[18] ,
    \r1_data_reg[19] ,
    \r1_data_reg[20] ,
    \r1_data_reg[22] ,
    \r1_data_reg[23] ,
    \r1_data_reg[24] ,
    \r1_data_reg[25] ,
    \r0_data_reg[31] ,
    areset_r_reg_0,
    aclk,
    s_axi_awvalid,
    count_is_max,
    \r0_out_sel_r_reg[0]_0 ,
    arb_sel_i,
    m_bpayload_i,
    D);
  output [0:0]SR;
  output [1:0]Q;
  output s_axi_awready;
  output \arb_sel_r_reg[0] ;
  output \gen_data_bit[2].u_srl_fifo ;
  output \r0_out_sel_r_reg[0] ;
  output \gen_data_bit[1].u_srl_fifo ;
  output \gen_data_bit[0].u_srl_fifo ;
  output \r1_data_reg[3] ;
  output \r1_data_reg[4] ;
  output \r1_data_reg[5] ;
  output \r1_data_reg[6] ;
  output \r1_data_reg[7] ;
  output \r1_data_reg[8] ;
  output \r1_data_reg[9] ;
  output \r1_data_reg[10] ;
  output \r1_data_reg[11] ;
  output \r1_data_reg[12] ;
  output \r1_data_reg[13] ;
  output \r1_data_reg[14] ;
  output \r1_data_reg[15] ;
  output \r1_data_reg[16] ;
  output \r1_data_reg[17] ;
  output \r1_data_reg[18] ;
  output \r1_data_reg[19] ;
  output \r1_data_reg[20] ;
  output \r1_data_reg[22] ;
  output \r1_data_reg[23] ;
  output \r1_data_reg[24] ;
  output \r1_data_reg[25] ;
  output [6:0]\r0_data_reg[31] ;
  input [0:0]areset_r_reg_0;
  input aclk;
  input s_axi_awvalid;
  input count_is_max;
  input \r0_out_sel_r_reg[0]_0 ;
  input [1:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire \arb_sel_r_reg[0] ;
  wire [0:0]areset_r_reg_0;
  wire count_is_max;
  wire \gen_data_bit[0].u_srl_fifo ;
  wire \gen_data_bit[1].u_srl_fifo ;
  wire \gen_data_bit[2].u_srl_fifo ;
  wire [2:0]m_bpayload_i;
  wire [6:0]\r0_data_reg[31] ;
  wire \r0_out_sel_r_reg[0] ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r1_data_reg[10] ;
  wire \r1_data_reg[11] ;
  wire \r1_data_reg[12] ;
  wire \r1_data_reg[13] ;
  wire \r1_data_reg[14] ;
  wire \r1_data_reg[15] ;
  wire \r1_data_reg[16] ;
  wire \r1_data_reg[17] ;
  wire \r1_data_reg[18] ;
  wire \r1_data_reg[19] ;
  wire \r1_data_reg[20] ;
  wire \r1_data_reg[22] ;
  wire \r1_data_reg[23] ;
  wire \r1_data_reg[24] ;
  wire \r1_data_reg[25] ;
  wire \r1_data_reg[3] ;
  wire \r1_data_reg[4] ;
  wire \r1_data_reg[5] ;
  wire \r1_data_reg[6] ;
  wire \r1_data_reg[7] ;
  wire \r1_data_reg[8] ;
  wire \r1_data_reg[9] ;
  wire s_axi_awready;
  wire s_axi_awvalid;

  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_r_reg_0),
        .Q(SR),
        .R(1'b0));
  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13 \gen_downsizer_conversion.axisc_downsizer_0 
       (.D(D),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[0] (\arb_sel_r_reg[0] ),
        .count_is_max(count_is_max),
        .\gen_data_bit[0].u_srl_fifo (\gen_data_bit[0].u_srl_fifo ),
        .\gen_data_bit[1].u_srl_fifo (\gen_data_bit[1].u_srl_fifo ),
        .\gen_data_bit[2].u_srl_fifo (\gen_data_bit[2].u_srl_fifo ),
        .m_bpayload_i(m_bpayload_i),
        .\r0_data_reg[31]_0 (\r0_data_reg[31] ),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0] ),
        .\r0_out_sel_r_reg[0]_1 (\r0_out_sel_r_reg[0]_0 ),
        .\r1_data_reg[10]_0 (\r1_data_reg[10] ),
        .\r1_data_reg[11]_0 (\r1_data_reg[11] ),
        .\r1_data_reg[12]_0 (\r1_data_reg[12] ),
        .\r1_data_reg[13]_0 (\r1_data_reg[13] ),
        .\r1_data_reg[14]_0 (\r1_data_reg[14] ),
        .\r1_data_reg[15]_0 (\r1_data_reg[15] ),
        .\r1_data_reg[16]_0 (\r1_data_reg[16] ),
        .\r1_data_reg[17]_0 (\r1_data_reg[17] ),
        .\r1_data_reg[18]_0 (\r1_data_reg[18] ),
        .\r1_data_reg[19]_0 (\r1_data_reg[19] ),
        .\r1_data_reg[20]_0 (\r1_data_reg[20] ),
        .\r1_data_reg[22]_0 (\r1_data_reg[22] ),
        .\r1_data_reg[23]_0 (\r1_data_reg[23] ),
        .\r1_data_reg[24]_0 (\r1_data_reg[24] ),
        .\r1_data_reg[25]_0 (\r1_data_reg[25] ),
        .\r1_data_reg[3]_0 (\r1_data_reg[3] ),
        .\r1_data_reg[4]_0 (\r1_data_reg[4] ),
        .\r1_data_reg[5]_0 (\r1_data_reg[5] ),
        .\r1_data_reg[6]_0 (\r1_data_reg[6] ),
        .\r1_data_reg[7]_0 (\r1_data_reg[7] ),
        .\r1_data_reg[8]_0 (\r1_data_reg[8] ),
        .\r1_data_reg[9]_0 (\r1_data_reg[9] ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter_14
   (Q,
    s_axi_arready,
    f_mux4_return,
    s_axi_arvalid,
    \state_reg[0] ,
    \r0_out_sel_r_reg[0] ,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    arb_sel_i,
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output s_axi_arready;
  output [32:0]f_mux4_return;
  input s_axi_arvalid;
  input \state_reg[0] ;
  input \r0_out_sel_r_reg[0] ;
  input \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  input [1:0]arb_sel_i;
  input \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  input [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  input areset_r;
  input aclk;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire areset_r;
  wire [32:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  wire [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  wire \r0_out_sel_r_reg[0] ;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire \state_reg[0] ;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15 \gen_downsizer_conversion.axisc_downsizer_0 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(areset_r),
        .f_mux4_return(f_mux4_return),
        .\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .\state_reg[0]_0 (\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0
   (s_axis_tvalid_0,
    Q,
    aclk,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output s_axis_tvalid_0;
  output [0:0]Q;
  input aclk;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axis_tlast;
  input areset_r;

  wire [0:0]Q;
  wire aclk;
  wire areset_r;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire s_axis_tvalid_0;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tvalid_0(s_axis_tvalid_0));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_10
   (Q,
    s_axis_tid_1_sp_1,
    aclk,
    m_axi_arready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_1_sp_1;
  input aclk;
  input m_axi_arready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_arready_i;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_1_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tid_1_sp_1 = s_axis_tid_1_sn_1;
  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11 \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_1_sp_1(s_axis_tid_1_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_6
   (s_axis_tready,
    Q,
    E,
    \acc_data_reg[34] ,
    \acc_data_reg[34]_0 ,
    s_axi_rready_0,
    s_axi_rdata,
    s_axi_rresp,
    s_axis_tlast,
    aclk,
    s_axis_tready_0,
    s_axis_tready_1,
    s_axis_tready_2,
    s_axis_tready_3,
    s_axi_rready,
    s_axis_tready_4,
    s_axis_tready_5,
    s_axis_tid,
    s_axis_tvalid,
    s_axi_arvalid,
    \num_active_trans_reg[0] ,
    \num_active_trans_reg[0]_0 ,
    areset_r,
    s_axis_tdata);
  output s_axis_tready;
  output [0:0]Q;
  output [0:0]E;
  output \acc_data_reg[34] ;
  output \acc_data_reg[34]_0 ;
  output s_axi_rready_0;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axis_tlast;
  input aclk;
  input [2:0]s_axis_tready_0;
  input s_axis_tready_1;
  input s_axis_tready_2;
  input s_axis_tready_3;
  input s_axi_rready;
  input s_axis_tready_4;
  input s_axis_tready_5;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axi_arvalid;
  input \num_active_trans_reg[0] ;
  input [0:0]\num_active_trans_reg[0]_0 ;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [0:0]E;
  wire [0:0]Q;
  wire \acc_data_reg[34] ;
  wire \acc_data_reg[34]_0 ;
  wire aclk;
  wire areset_r;
  wire \num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]s_axi_rresp;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tready_2;
  wire s_axis_tready_3;
  wire s_axis_tready_4;
  wire s_axis_tready_5;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7 \gen_upsizer_conversion.axisc_upsizer_0 
       (.E(E),
        .Q(Q),
        .\acc_data_reg[34]_0 (\acc_data_reg[34] ),
        .\acc_data_reg[34]_1 (\acc_data_reg[34]_0 ),
        .aclk(aclk),
        .areset_r(areset_r),
        .\num_active_trans_reg[0] (\num_active_trans_reg[0] ),
        .\num_active_trans_reg[0]_0 (\num_active_trans_reg[0]_0 ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(s_axi_rready_0),
        .s_axi_rresp(s_axi_rresp),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0(s_axis_tready_0),
        .s_axis_tready_1(s_axis_tready_1),
        .s_axis_tready_2(s_axis_tready_2),
        .s_axis_tready_3(s_axis_tready_3),
        .s_axis_tready_4(s_axis_tready_4),
        .s_axis_tready_5(s_axis_tready_5),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_8
   (Q,
    s_axis_tid_0_sp_1,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_0_sp_1;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_awready_i;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_0_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tid_0_sp_1 = s_axis_tid_0_sn_1;
  design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9 \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axi_awready_i(m_axi_awready_i),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_0_sp_1(s_axis_tid_0_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer
   (Q,
    last_out1,
    s_axi_wready,
    m_int_tkeep,
    m_int_tdata,
    \r0_out_sel_r_reg[0]_0 ,
    \r0_out_sel_r_reg[0]_1 ,
    \r0_data_reg[31]_0 ,
    \r0_data_reg[30]_0 ,
    \r0_data_reg[29]_0 ,
    \r0_data_reg[28]_0 ,
    \r0_data_reg[27]_0 ,
    \r0_data_reg[26]_0 ,
    \r0_data_reg[25]_0 ,
    \r0_data_reg[24]_0 ,
    \r0_data_reg[23]_0 ,
    \r0_data_reg[22]_0 ,
    \r0_data_reg[21]_0 ,
    \r0_data_reg[20]_0 ,
    \r0_data_reg[19]_0 ,
    \r0_data_reg[18]_0 ,
    \r0_data_reg[17]_0 ,
    \r0_data_reg[16]_0 ,
    \r0_data_reg[15]_0 ,
    \r0_data_reg[14]_0 ,
    \r0_data_reg[13]_0 ,
    \r0_data_reg[12]_0 ,
    \r0_data_reg[11]_0 ,
    \r0_data_reg[10]_0 ,
    \r0_data_reg[9]_0 ,
    \r0_data_reg[8]_0 ,
    \r0_data_reg[7]_0 ,
    \r0_data_reg[6]_0 ,
    \r0_data_reg[5]_0 ,
    s_axi_wvalid,
    count_is_zero,
    \r0_out_sel_r_reg[0]_2 ,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output last_out1;
  output s_axi_wready;
  output [0:0]m_int_tkeep;
  output [4:0]m_int_tdata;
  output \r0_out_sel_r_reg[0]_0 ;
  output \r0_out_sel_r_reg[0]_1 ;
  output \r0_data_reg[31]_0 ;
  output \r0_data_reg[30]_0 ;
  output \r0_data_reg[29]_0 ;
  output \r0_data_reg[28]_0 ;
  output \r0_data_reg[27]_0 ;
  output \r0_data_reg[26]_0 ;
  output \r0_data_reg[25]_0 ;
  output \r0_data_reg[24]_0 ;
  output \r0_data_reg[23]_0 ;
  output \r0_data_reg[22]_0 ;
  output \r0_data_reg[21]_0 ;
  output \r0_data_reg[20]_0 ;
  output \r0_data_reg[19]_0 ;
  output \r0_data_reg[18]_0 ;
  output \r0_data_reg[17]_0 ;
  output \r0_data_reg[16]_0 ;
  output \r0_data_reg[15]_0 ;
  output \r0_data_reg[14]_0 ;
  output \r0_data_reg[13]_0 ;
  output \r0_data_reg[12]_0 ;
  output \r0_data_reg[11]_0 ;
  output \r0_data_reg[10]_0 ;
  output \r0_data_reg[9]_0 ;
  output \r0_data_reg[8]_0 ;
  output \r0_data_reg[7]_0 ;
  output \r0_data_reg[6]_0 ;
  output \r0_data_reg[5]_0 ;
  input s_axi_wvalid;
  input count_is_zero;
  input \r0_out_sel_r_reg[0]_2 ;
  input areset_r;
  input aclk;
  input [36:0]D;

  wire [36:0]D;
  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire count_is_zero;
  wire last_out1;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire [36:0]p_0_in1_in;
  wire \r0_data_reg[10]_0 ;
  wire \r0_data_reg[11]_0 ;
  wire \r0_data_reg[12]_0 ;
  wire \r0_data_reg[13]_0 ;
  wire \r0_data_reg[14]_0 ;
  wire \r0_data_reg[15]_0 ;
  wire \r0_data_reg[16]_0 ;
  wire \r0_data_reg[17]_0 ;
  wire \r0_data_reg[18]_0 ;
  wire \r0_data_reg[19]_0 ;
  wire \r0_data_reg[20]_0 ;
  wire \r0_data_reg[21]_0 ;
  wire \r0_data_reg[22]_0 ;
  wire \r0_data_reg[23]_0 ;
  wire \r0_data_reg[24]_0 ;
  wire \r0_data_reg[25]_0 ;
  wire \r0_data_reg[26]_0 ;
  wire \r0_data_reg[27]_0 ;
  wire \r0_data_reg[28]_0 ;
  wire \r0_data_reg[29]_0 ;
  wire \r0_data_reg[30]_0 ;
  wire \r0_data_reg[31]_0 ;
  wire \r0_data_reg[5]_0 ;
  wire \r0_data_reg[6]_0 ;
  wire \r0_data_reg[7]_0 ;
  wire \r0_data_reg[8]_0 ;
  wire \r0_data_reg[9]_0 ;
  wire \r0_data_reg_n_0_[32] ;
  wire \r0_data_reg_n_0_[33] ;
  wire \r0_data_reg_n_0_[34] ;
  wire \r0_data_reg_n_0_[35] ;
  wire \r0_data_reg_n_0_[36] ;
  wire r0_load;
  wire \r0_out_sel_r[0]_i_1__0_n_0 ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r0_out_sel_r_reg[0]_1 ;
  wire \r0_out_sel_r_reg[0]_2 ;
  wire \r0_out_sel_r_reg_n_0_[0] ;
  wire r1_load;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [2:0]state;
  wire \state_reg_n_0_[2] ;

  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[32]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(p_0_in1_in[0]),
        .O(m_int_tdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[10]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[10]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[11]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[11]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[12]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[12]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[13]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[13]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[14]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[14]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[15]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[15]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[16]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[16]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[17]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[18]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[18]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[19]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[19]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[33]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(p_0_in1_in[1]),
        .O(m_int_tdata[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[20]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[20]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[21]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[21]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[22]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[22]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[23]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[24]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[24]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[25]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[25]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[26]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[26]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[27]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[27]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[28]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[28]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[29]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[29]_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[34]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(p_0_in1_in[2]),
        .O(m_int_tdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[30]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[30]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[31]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[31]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_2 
       (.I0(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_out_sel_r_reg[0]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_2 
       (.I0(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_out_sel_r_reg[0]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_2 
       (.I0(\r0_out_sel_r_reg_n_0_[0] ),
        .O(m_int_tkeep));
  LUT3 #(
    .INIT(8'h60)) 
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(last_out1));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[35]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(p_0_in1_in[3]),
        .O(m_int_tdata[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[36]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(p_0_in1_in[4]),
        .O(m_int_tdata[4]));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[5]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[5]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[6]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[6]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[7]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[8]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[8]_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_2 
       (.I0(p_0_in1_in[9]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .O(\r0_data_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \r0_data[36]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(r0_load));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[0]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[10]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[11]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[12]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[13]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[14]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[15]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[16]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[17]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[18]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[19]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[1]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[20]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[21]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[22]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[23]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[24]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[25]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[26]),
        .Q(p_0_in1_in[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[27]),
        .Q(p_0_in1_in[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[28]),
        .Q(p_0_in1_in[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[29]),
        .Q(p_0_in1_in[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[2]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[30]),
        .Q(p_0_in1_in[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[31]),
        .Q(p_0_in1_in[31]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[32]),
        .Q(\r0_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[33]),
        .Q(\r0_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[34]),
        .Q(\r0_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[35]),
        .Q(\r0_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[36]),
        .Q(\r0_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[3]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[4]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[5]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[6]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[7]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[8]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[9]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000A6A684A6)) 
    \r0_out_sel_r[0]_i_1__0 
       (.I0(\r0_out_sel_r_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\r0_out_sel_r_reg[0]_2 ),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(areset_r),
        .O(\r0_out_sel_r[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_1__0_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \r1_data[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .O(r1_load));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[32] ),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[33] ),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[34] ),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[35] ),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[36] ),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_wready_INST_0
       (.I0(Q[0]),
        .I1(count_is_zero),
        .O(s_axi_wready));
  LUT6 #(
    .INIT(64'hFFF35555FFF355FF)) 
    \state[0]_i_1__4 
       (.I0(Q[1]),
        .I1(s_axi_wvalid),
        .I2(count_is_zero),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\r0_out_sel_r_reg[0]_2 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h08080F08AAAAAAAA)) 
    \state[1]_i_1__4 
       (.I0(Q[1]),
        .I1(\r0_out_sel_r_reg[0]_2 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axi_wvalid),
        .I4(count_is_zero),
        .I5(Q[0]),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0080208000800080)) 
    \state[2]_i_1__4 
       (.I0(\r0_out_sel_r_reg[0]_2 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(count_is_zero),
        .I5(s_axi_wvalid),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_downsizer" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_13
   (Q,
    s_axi_awready,
    \arb_sel_r_reg[0] ,
    \gen_data_bit[2].u_srl_fifo ,
    \r0_out_sel_r_reg[0]_0 ,
    \gen_data_bit[1].u_srl_fifo ,
    \gen_data_bit[0].u_srl_fifo ,
    \r1_data_reg[3]_0 ,
    \r1_data_reg[4]_0 ,
    \r1_data_reg[5]_0 ,
    \r1_data_reg[6]_0 ,
    \r1_data_reg[7]_0 ,
    \r1_data_reg[8]_0 ,
    \r1_data_reg[9]_0 ,
    \r1_data_reg[10]_0 ,
    \r1_data_reg[11]_0 ,
    \r1_data_reg[12]_0 ,
    \r1_data_reg[13]_0 ,
    \r1_data_reg[14]_0 ,
    \r1_data_reg[15]_0 ,
    \r1_data_reg[16]_0 ,
    \r1_data_reg[17]_0 ,
    \r1_data_reg[18]_0 ,
    \r1_data_reg[19]_0 ,
    \r1_data_reg[20]_0 ,
    \r1_data_reg[22]_0 ,
    \r1_data_reg[23]_0 ,
    \r1_data_reg[24]_0 ,
    \r1_data_reg[25]_0 ,
    \r0_data_reg[31]_0 ,
    s_axi_awvalid,
    count_is_max,
    \r0_out_sel_r_reg[0]_1 ,
    arb_sel_i,
    m_bpayload_i,
    SR,
    aclk,
    D);
  output [1:0]Q;
  output s_axi_awready;
  output \arb_sel_r_reg[0] ;
  output \gen_data_bit[2].u_srl_fifo ;
  output \r0_out_sel_r_reg[0]_0 ;
  output \gen_data_bit[1].u_srl_fifo ;
  output \gen_data_bit[0].u_srl_fifo ;
  output \r1_data_reg[3]_0 ;
  output \r1_data_reg[4]_0 ;
  output \r1_data_reg[5]_0 ;
  output \r1_data_reg[6]_0 ;
  output \r1_data_reg[7]_0 ;
  output \r1_data_reg[8]_0 ;
  output \r1_data_reg[9]_0 ;
  output \r1_data_reg[10]_0 ;
  output \r1_data_reg[11]_0 ;
  output \r1_data_reg[12]_0 ;
  output \r1_data_reg[13]_0 ;
  output \r1_data_reg[14]_0 ;
  output \r1_data_reg[15]_0 ;
  output \r1_data_reg[16]_0 ;
  output \r1_data_reg[17]_0 ;
  output \r1_data_reg[18]_0 ;
  output \r1_data_reg[19]_0 ;
  output \r1_data_reg[20]_0 ;
  output \r1_data_reg[22]_0 ;
  output \r1_data_reg[23]_0 ;
  output \r1_data_reg[24]_0 ;
  output \r1_data_reg[25]_0 ;
  output [6:0]\r0_data_reg[31]_0 ;
  input s_axi_awvalid;
  input count_is_max;
  input \r0_out_sel_r_reg[0]_1 ;
  input [1:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input [0:0]SR;
  input aclk;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire \arb_sel_r_reg[0] ;
  wire count_is_max;
  wire \gen_data_bit[0].u_srl_fifo ;
  wire \gen_data_bit[1].u_srl_fifo ;
  wire \gen_data_bit[2].u_srl_fifo ;
  wire [2:0]m_bpayload_i;
  wire [57:0]p_0_in1_in;
  wire [6:0]\r0_data_reg[31]_0 ;
  wire \r0_data_reg_n_0_[32] ;
  wire \r0_data_reg_n_0_[33] ;
  wire \r0_data_reg_n_0_[34] ;
  wire \r0_data_reg_n_0_[35] ;
  wire \r0_data_reg_n_0_[36] ;
  wire \r0_data_reg_n_0_[37] ;
  wire \r0_data_reg_n_0_[38] ;
  wire \r0_data_reg_n_0_[39] ;
  wire \r0_data_reg_n_0_[40] ;
  wire \r0_data_reg_n_0_[41] ;
  wire \r0_data_reg_n_0_[42] ;
  wire \r0_data_reg_n_0_[43] ;
  wire \r0_data_reg_n_0_[44] ;
  wire \r0_data_reg_n_0_[45] ;
  wire \r0_data_reg_n_0_[46] ;
  wire \r0_data_reg_n_0_[47] ;
  wire \r0_data_reg_n_0_[48] ;
  wire \r0_data_reg_n_0_[49] ;
  wire \r0_data_reg_n_0_[50] ;
  wire \r0_data_reg_n_0_[51] ;
  wire \r0_data_reg_n_0_[52] ;
  wire \r0_data_reg_n_0_[54] ;
  wire \r0_data_reg_n_0_[55] ;
  wire \r0_data_reg_n_0_[56] ;
  wire \r0_data_reg_n_0_[57] ;
  wire r0_load;
  wire \r0_out_sel_r[0]_i_1_n_0 ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r0_out_sel_r_reg[0]_1 ;
  wire \r1_data_reg[10]_0 ;
  wire \r1_data_reg[11]_0 ;
  wire \r1_data_reg[12]_0 ;
  wire \r1_data_reg[13]_0 ;
  wire \r1_data_reg[14]_0 ;
  wire \r1_data_reg[15]_0 ;
  wire \r1_data_reg[16]_0 ;
  wire \r1_data_reg[17]_0 ;
  wire \r1_data_reg[18]_0 ;
  wire \r1_data_reg[19]_0 ;
  wire \r1_data_reg[20]_0 ;
  wire \r1_data_reg[22]_0 ;
  wire \r1_data_reg[23]_0 ;
  wire \r1_data_reg[24]_0 ;
  wire \r1_data_reg[25]_0 ;
  wire \r1_data_reg[3]_0 ;
  wire \r1_data_reg[4]_0 ;
  wire \r1_data_reg[5]_0 ;
  wire \r1_data_reg[6]_0 ;
  wire \r1_data_reg[7]_0 ;
  wire \r1_data_reg[8]_0 ;
  wire \r1_data_reg[9]_0 ;
  wire r1_load;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [2:0]state;
  wire \state_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_3 
       (.I0(m_bpayload_i[0]),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[32]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\r0_out_sel_r_reg[0]_0 ),
        .O(\gen_data_bit[0].u_srl_fifo ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[42]),
        .I1(p_0_in1_in[10]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[10]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[43]),
        .I1(p_0_in1_in[11]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[11]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[44]),
        .I1(p_0_in1_in[12]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[12]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[45]),
        .I1(p_0_in1_in[13]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[46]),
        .I1(p_0_in1_in[14]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[14]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[47]),
        .I1(p_0_in1_in[15]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[15]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[48]),
        .I1(p_0_in1_in[16]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[16]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[49]),
        .I1(p_0_in1_in[17]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[17]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[50]),
        .I1(p_0_in1_in[18]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[18]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[51]),
        .I1(p_0_in1_in[19]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[19]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_3 
       (.I0(m_bpayload_i[1]),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[33]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\r0_out_sel_r_reg[0]_0 ),
        .O(\gen_data_bit[1].u_srl_fifo ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[52]),
        .I1(p_0_in1_in[20]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[20]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[54]),
        .I1(p_0_in1_in[22]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[22]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[55]),
        .I1(p_0_in1_in[23]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[23]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[56]),
        .I1(p_0_in1_in[24]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[24]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[57]),
        .I1(p_0_in1_in[25]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[25]_0 ));
  LUT6 #(
    .INIT(64'h00F000AA00CC00AA)) 
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_3 
       (.I0(m_bpayload_i[2]),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[34]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\r0_out_sel_r_reg[0]_0 ),
        .O(\gen_data_bit[2].u_srl_fifo ));
  LUT5 #(
    .INIT(32'h00005DD5)) 
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_3 
       (.I0(arb_sel_i[0]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(arb_sel_i[1]),
        .O(\arb_sel_r_reg[0] ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[35]),
        .I1(p_0_in1_in[3]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[36]),
        .I1(p_0_in1_in[4]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[4]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[37]),
        .I1(p_0_in1_in[5]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[5]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[38]),
        .I1(p_0_in1_in[6]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[6]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[39]),
        .I1(p_0_in1_in[7]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[7]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[40]),
        .I1(p_0_in1_in[8]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[8]_0 ));
  LUT5 #(
    .INIT(32'h0A000C00)) 
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_3 
       (.I0(p_0_in1_in[41]),
        .I1(p_0_in1_in[9]),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(\r1_data_reg[9]_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \r0_data[57]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(r0_load));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[0]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[10]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[11]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[12]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[13]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[14]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[15]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[16]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[17]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[18]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[19]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[1]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[20]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[21]),
        .Q(\r0_data_reg[31]_0 [0]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[22]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[23]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[24]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[25]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[26]),
        .Q(\r0_data_reg[31]_0 [1]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[27]),
        .Q(\r0_data_reg[31]_0 [2]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[28]),
        .Q(\r0_data_reg[31]_0 [3]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[29]),
        .Q(\r0_data_reg[31]_0 [4]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[2]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[30]),
        .Q(\r0_data_reg[31]_0 [5]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[31]),
        .Q(\r0_data_reg[31]_0 [6]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[32]),
        .Q(\r0_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[33]),
        .Q(\r0_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[34]),
        .Q(\r0_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[35]),
        .Q(\r0_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[36]),
        .Q(\r0_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[37]),
        .Q(\r0_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[38]),
        .Q(\r0_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[39]),
        .Q(\r0_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[3]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[40]),
        .Q(\r0_data_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[41]),
        .Q(\r0_data_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[42]),
        .Q(\r0_data_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[43]),
        .Q(\r0_data_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[44]),
        .Q(\r0_data_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[45]),
        .Q(\r0_data_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[46]),
        .Q(\r0_data_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[47]),
        .Q(\r0_data_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[48]),
        .Q(\r0_data_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[49]),
        .Q(\r0_data_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[4]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[50]),
        .Q(\r0_data_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[51]),
        .Q(\r0_data_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[52]),
        .Q(\r0_data_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[53]),
        .Q(\r0_data_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[54]),
        .Q(\r0_data_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[55]),
        .Q(\r0_data_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[56]),
        .Q(\r0_data_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[5]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[6]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[7]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[8]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[9]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000A6A684A6)) 
    \r0_out_sel_r[0]_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(Q[1]),
        .I2(\r0_out_sel_r_reg[0]_1 ),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(SR),
        .O(\r0_out_sel_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_1_n_0 ),
        .Q(\r0_out_sel_r_reg[0]_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \r1_data[25]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .O(r1_load));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[32] ),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r1_data_reg[10] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[42] ),
        .Q(p_0_in1_in[42]),
        .R(1'b0));
  FDRE \r1_data_reg[11] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[43] ),
        .Q(p_0_in1_in[43]),
        .R(1'b0));
  FDRE \r1_data_reg[12] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[44] ),
        .Q(p_0_in1_in[44]),
        .R(1'b0));
  FDRE \r1_data_reg[13] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[45] ),
        .Q(p_0_in1_in[45]),
        .R(1'b0));
  FDRE \r1_data_reg[14] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[46] ),
        .Q(p_0_in1_in[46]),
        .R(1'b0));
  FDRE \r1_data_reg[15] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[47] ),
        .Q(p_0_in1_in[47]),
        .R(1'b0));
  FDRE \r1_data_reg[16] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[48] ),
        .Q(p_0_in1_in[48]),
        .R(1'b0));
  FDRE \r1_data_reg[17] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[49] ),
        .Q(p_0_in1_in[49]),
        .R(1'b0));
  FDRE \r1_data_reg[18] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[50] ),
        .Q(p_0_in1_in[50]),
        .R(1'b0));
  FDRE \r1_data_reg[19] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[51] ),
        .Q(p_0_in1_in[51]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[33] ),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r1_data_reg[20] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[52] ),
        .Q(p_0_in1_in[52]),
        .R(1'b0));
  FDRE \r1_data_reg[22] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[54] ),
        .Q(p_0_in1_in[54]),
        .R(1'b0));
  FDRE \r1_data_reg[23] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[55] ),
        .Q(p_0_in1_in[55]),
        .R(1'b0));
  FDRE \r1_data_reg[24] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[56] ),
        .Q(p_0_in1_in[56]),
        .R(1'b0));
  FDRE \r1_data_reg[25] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[57] ),
        .Q(p_0_in1_in[57]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[34] ),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[35] ),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[36] ),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[37] ),
        .Q(p_0_in1_in[37]),
        .R(1'b0));
  FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[38] ),
        .Q(p_0_in1_in[38]),
        .R(1'b0));
  FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[39] ),
        .Q(p_0_in1_in[39]),
        .R(1'b0));
  FDRE \r1_data_reg[8] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[40] ),
        .Q(p_0_in1_in[40]),
        .R(1'b0));
  FDRE \r1_data_reg[9] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[41] ),
        .Q(p_0_in1_in[41]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(Q[0]),
        .I1(count_is_max),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'hFFF35555FFF355FF)) 
    \state[0]_i_1 
       (.I0(Q[1]),
        .I1(s_axi_awvalid),
        .I2(count_is_max),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\r0_out_sel_r_reg[0]_1 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h08080F08AAAAAAAA)) 
    \state[1]_i_1 
       (.I0(Q[1]),
        .I1(\r0_out_sel_r_reg[0]_1 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axi_awvalid),
        .I4(count_is_max),
        .I5(Q[0]),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0080208000800080)) 
    \state[2]_i_1 
       (.I0(\r0_out_sel_r_reg[0]_1 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(count_is_max),
        .I5(s_axi_awvalid),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_downsizer" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_downsizer_15
   (Q,
    s_axi_arready,
    f_mux4_return,
    s_axi_arvalid,
    \state_reg[0]_0 ,
    \r0_out_sel_r_reg[0]_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    arb_sel_i,
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output s_axi_arready;
  output [32:0]f_mux4_return;
  input s_axi_arvalid;
  input \state_reg[0]_0 ;
  input \r0_out_sel_r_reg[0]_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  input [1:0]arb_sel_i;
  input \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  input [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  input areset_r;
  input aclk;
  input [56:0]D;

  wire [56:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [1:0]arb_sel_i;
  wire areset_r;
  wire [32:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ;
  wire [6:0]\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  wire [57:0]p_0_in1_in;
  wire \r0_data_reg_n_0_[32] ;
  wire \r0_data_reg_n_0_[33] ;
  wire \r0_data_reg_n_0_[34] ;
  wire \r0_data_reg_n_0_[35] ;
  wire \r0_data_reg_n_0_[36] ;
  wire \r0_data_reg_n_0_[37] ;
  wire \r0_data_reg_n_0_[38] ;
  wire \r0_data_reg_n_0_[39] ;
  wire \r0_data_reg_n_0_[40] ;
  wire \r0_data_reg_n_0_[41] ;
  wire \r0_data_reg_n_0_[42] ;
  wire \r0_data_reg_n_0_[43] ;
  wire \r0_data_reg_n_0_[44] ;
  wire \r0_data_reg_n_0_[45] ;
  wire \r0_data_reg_n_0_[46] ;
  wire \r0_data_reg_n_0_[47] ;
  wire \r0_data_reg_n_0_[48] ;
  wire \r0_data_reg_n_0_[49] ;
  wire \r0_data_reg_n_0_[50] ;
  wire \r0_data_reg_n_0_[51] ;
  wire \r0_data_reg_n_0_[52] ;
  wire \r0_data_reg_n_0_[54] ;
  wire \r0_data_reg_n_0_[55] ;
  wire \r0_data_reg_n_0_[56] ;
  wire \r0_data_reg_n_0_[57] ;
  wire r0_load;
  wire \r0_out_sel_r[0]_i_1__1_n_0 ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r0_out_sel_r_reg_n_0_[0] ;
  wire r1_load;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [2:0]state;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[2] ;

  LUT6 #(
    .INIT(64'hAAFAAAAAAAEEAAAA)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst ),
        .I1(p_0_in1_in[0]),
        .I2(p_0_in1_in[32]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(\r0_out_sel_r_reg_n_0_[0] ),
        .O(f_mux4_return[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[42]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[10]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ),
        .O(f_mux4_return[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[43]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[11]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ),
        .O(f_mux4_return[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[44]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[12]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ),
        .O(f_mux4_return[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[45]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[13]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ),
        .O(f_mux4_return[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[46]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[14]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ),
        .O(f_mux4_return[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[47]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[15]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ),
        .O(f_mux4_return[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[48]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[16]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ),
        .O(f_mux4_return[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[49]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[17]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ),
        .O(f_mux4_return[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[50]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[18]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ),
        .O(f_mux4_return[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[51]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[19]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ),
        .O(f_mux4_return[19]));
  LUT6 #(
    .INIT(64'hAAFAAAAAAAEEAAAA)) 
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_1 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst ),
        .I1(p_0_in1_in[1]),
        .I2(p_0_in1_in[33]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(\r0_out_sel_r_reg_n_0_[0] ),
        .O(f_mux4_return[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[52]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[20]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ),
        .O(f_mux4_return[20]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[21]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [0]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[54]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[22]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ),
        .O(f_mux4_return[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[55]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[23]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ),
        .O(f_mux4_return[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[56]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[24]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ),
        .O(f_mux4_return[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[57]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[25]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ),
        .O(f_mux4_return[25]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[26]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [1]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[26]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[27]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [2]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[27]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[28]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [3]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[28]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[29]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [4]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[29]));
  LUT6 #(
    .INIT(64'hAAFAAAAAAAEEAAAA)) 
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_1 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst ),
        .I1(p_0_in1_in[2]),
        .I2(p_0_in1_in[34]),
        .I3(arb_sel_i[0]),
        .I4(arb_sel_i[1]),
        .I5(\r0_out_sel_r_reg_n_0_[0] ),
        .O(f_mux4_return[2]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[30]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [5]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[30]));
  LUT6 #(
    .INIT(64'h0000220000F02200)) 
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[31]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst [6]),
        .I3(arb_sel_i[1]),
        .I4(arb_sel_i[0]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .O(f_mux4_return[31]));
  LUT5 #(
    .INIT(32'hAAAAAEEA)) 
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_1 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(arb_sel_i[0]),
        .O(f_mux4_return[32]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[35]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[3]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst ),
        .O(f_mux4_return[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[36]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[4]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst ),
        .O(f_mux4_return[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[37]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[5]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ),
        .O(f_mux4_return[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[38]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[6]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ),
        .O(f_mux4_return[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[39]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[7]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ),
        .O(f_mux4_return[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[40]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[8]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ),
        .O(f_mux4_return[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00080)) 
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_1 
       (.I0(p_0_in1_in[41]),
        .I1(\r0_out_sel_r_reg_n_0_[0] ),
        .I2(arb_sel_i[1]),
        .I3(arb_sel_i[0]),
        .I4(p_0_in1_in[9]),
        .I5(\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ),
        .O(f_mux4_return[9]));
  LUT2 #(
    .INIT(4'h4)) 
    \r0_data[57]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(Q[0]),
        .O(r0_load));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[0]),
        .Q(p_0_in1_in[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[10]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[11]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[12]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[13]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[14]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[15]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[16]),
        .Q(p_0_in1_in[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[17]),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[18]),
        .Q(p_0_in1_in[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[19]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[1]),
        .Q(p_0_in1_in[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[20]),
        .Q(p_0_in1_in[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[21]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[22]),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[23]),
        .Q(p_0_in1_in[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[24]),
        .Q(p_0_in1_in[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[25]),
        .Q(p_0_in1_in[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[26]),
        .Q(p_0_in1_in[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[27]),
        .Q(p_0_in1_in[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[28]),
        .Q(p_0_in1_in[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[29]),
        .Q(p_0_in1_in[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[2]),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[30]),
        .Q(p_0_in1_in[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[31]),
        .Q(p_0_in1_in[31]),
        .R(1'b0));
  FDRE \r0_data_reg[32] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[32]),
        .Q(\r0_data_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \r0_data_reg[33] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[33]),
        .Q(\r0_data_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \r0_data_reg[34] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[34]),
        .Q(\r0_data_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \r0_data_reg[35] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[35]),
        .Q(\r0_data_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \r0_data_reg[36] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[36]),
        .Q(\r0_data_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \r0_data_reg[37] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[37]),
        .Q(\r0_data_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \r0_data_reg[38] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[38]),
        .Q(\r0_data_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \r0_data_reg[39] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[39]),
        .Q(\r0_data_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[3]),
        .Q(p_0_in1_in[3]),
        .R(1'b0));
  FDRE \r0_data_reg[40] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[40]),
        .Q(\r0_data_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \r0_data_reg[41] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[41]),
        .Q(\r0_data_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \r0_data_reg[42] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[42]),
        .Q(\r0_data_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \r0_data_reg[43] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[43]),
        .Q(\r0_data_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \r0_data_reg[44] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[44]),
        .Q(\r0_data_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \r0_data_reg[45] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[45]),
        .Q(\r0_data_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \r0_data_reg[46] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[46]),
        .Q(\r0_data_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \r0_data_reg[47] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[47]),
        .Q(\r0_data_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \r0_data_reg[48] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[48]),
        .Q(\r0_data_reg_n_0_[48] ),
        .R(1'b0));
  FDRE \r0_data_reg[49] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[49]),
        .Q(\r0_data_reg_n_0_[49] ),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[4]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  FDRE \r0_data_reg[50] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[50]),
        .Q(\r0_data_reg_n_0_[50] ),
        .R(1'b0));
  FDRE \r0_data_reg[51] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[51]),
        .Q(\r0_data_reg_n_0_[51] ),
        .R(1'b0));
  FDRE \r0_data_reg[52] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[52]),
        .Q(\r0_data_reg_n_0_[52] ),
        .R(1'b0));
  FDRE \r0_data_reg[54] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[53]),
        .Q(\r0_data_reg_n_0_[54] ),
        .R(1'b0));
  FDRE \r0_data_reg[55] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[54]),
        .Q(\r0_data_reg_n_0_[55] ),
        .R(1'b0));
  FDRE \r0_data_reg[56] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[55]),
        .Q(\r0_data_reg_n_0_[56] ),
        .R(1'b0));
  FDRE \r0_data_reg[57] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[56]),
        .Q(\r0_data_reg_n_0_[57] ),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[5]),
        .Q(p_0_in1_in[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[6]),
        .Q(p_0_in1_in[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[7]),
        .Q(p_0_in1_in[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[8]),
        .Q(p_0_in1_in[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(r0_load),
        .D(D[9]),
        .Q(p_0_in1_in[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000A6A684A6)) 
    \r0_out_sel_r[0]_i_1__1 
       (.I0(\r0_out_sel_r_reg_n_0_[0] ),
        .I1(Q[1]),
        .I2(\r0_out_sel_r_reg[0]_0 ),
        .I3(Q[0]),
        .I4(\state_reg_n_0_[2] ),
        .I5(areset_r),
        .O(\r0_out_sel_r[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_1__1_n_0 ),
        .Q(\r0_out_sel_r_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \r1_data[25]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .O(r1_load));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[32] ),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r1_data_reg[10] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[42] ),
        .Q(p_0_in1_in[42]),
        .R(1'b0));
  FDRE \r1_data_reg[11] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[43] ),
        .Q(p_0_in1_in[43]),
        .R(1'b0));
  FDRE \r1_data_reg[12] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[44] ),
        .Q(p_0_in1_in[44]),
        .R(1'b0));
  FDRE \r1_data_reg[13] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[45] ),
        .Q(p_0_in1_in[45]),
        .R(1'b0));
  FDRE \r1_data_reg[14] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[46] ),
        .Q(p_0_in1_in[46]),
        .R(1'b0));
  FDRE \r1_data_reg[15] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[47] ),
        .Q(p_0_in1_in[47]),
        .R(1'b0));
  FDRE \r1_data_reg[16] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[48] ),
        .Q(p_0_in1_in[48]),
        .R(1'b0));
  FDRE \r1_data_reg[17] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[49] ),
        .Q(p_0_in1_in[49]),
        .R(1'b0));
  FDRE \r1_data_reg[18] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[50] ),
        .Q(p_0_in1_in[50]),
        .R(1'b0));
  FDRE \r1_data_reg[19] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[51] ),
        .Q(p_0_in1_in[51]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[33] ),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r1_data_reg[20] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[52] ),
        .Q(p_0_in1_in[52]),
        .R(1'b0));
  FDRE \r1_data_reg[22] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[54] ),
        .Q(p_0_in1_in[54]),
        .R(1'b0));
  FDRE \r1_data_reg[23] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[55] ),
        .Q(p_0_in1_in[55]),
        .R(1'b0));
  FDRE \r1_data_reg[24] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[56] ),
        .Q(p_0_in1_in[56]),
        .R(1'b0));
  FDRE \r1_data_reg[25] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[57] ),
        .Q(p_0_in1_in[57]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[34] ),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  FDRE \r1_data_reg[3] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[35] ),
        .Q(p_0_in1_in[35]),
        .R(1'b0));
  FDRE \r1_data_reg[4] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[36] ),
        .Q(p_0_in1_in[36]),
        .R(1'b0));
  FDRE \r1_data_reg[5] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[37] ),
        .Q(p_0_in1_in[37]),
        .R(1'b0));
  FDRE \r1_data_reg[6] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[38] ),
        .Q(p_0_in1_in[38]),
        .R(1'b0));
  FDRE \r1_data_reg[7] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[39] ),
        .Q(p_0_in1_in[39]),
        .R(1'b0));
  FDRE \r1_data_reg[8] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[40] ),
        .Q(p_0_in1_in[40]),
        .R(1'b0));
  FDRE \r1_data_reg[9] 
       (.C(aclk),
        .CE(r1_load),
        .D(\r0_data_reg_n_0_[41] ),
        .Q(p_0_in1_in[41]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(Q[0]),
        .I1(\state_reg[0]_0 ),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hFFF35555FFF355FF)) 
    \state[0]_i_1__5 
       (.I0(Q[1]),
        .I1(s_axi_arvalid),
        .I2(\state_reg[0]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[0]),
        .I5(\r0_out_sel_r_reg[0]_0 ),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h08080F08AAAAAAAA)) 
    \state[1]_i_1__5 
       (.I0(Q[1]),
        .I1(\r0_out_sel_r_reg[0]_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(s_axi_arvalid),
        .I4(\state_reg[0]_0 ),
        .I5(Q[0]),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0080208000800080)) 
    \state[2]_i_1__5 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\state_reg[0]_0 ),
        .I5(s_axi_arvalid),
        .O(state[2]));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer
   (s_axis_tvalid_0,
    Q,
    aclk,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output s_axis_tvalid_0;
  output [0:0]Q;
  input aclk;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axis_tlast;
  input areset_r;

  wire [0:0]Q;
  wire aclk;
  wire areset_r;
  wire r0_last_i_1_n_0;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1__0_n_0 ;
  wire \r0_reg_sel[1]_i_1__0_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire s_axis_tvalid_0;
  wire [2:0]state;
  wire \state[1]_i_2__2_n_0 ;
  wire \state[2]_i_2__1_n_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;

  LUT3 #(
    .INIT(8'hB8)) 
    r0_last_i_1
       (.I0(s_axis_tlast),
        .I1(Q),
        .I2(r0_last_reg_n_0),
        .O(r0_last_i_1_n_0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r0_last_i_1_n_0),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF00)) 
    \r0_reg_sel[0]_i_1__0 
       (.I0(\state_reg_n_0_[1] ),
        .I1(Q),
        .I2(\state_reg_n_0_[2] ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(\r0_reg_sel[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    \r0_reg_sel[1]_i_1__0 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(Q),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(\r0_reg_sel[1]_i_1__0_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1__0_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .S(areset_r));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1__0_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(areset_r));
  LUT4 #(
    .INIT(16'hFFF7)) 
    s_axis_tready_INST_0_i_4
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tid[0]),
        .O(s_axis_tvalid_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFABFF0FF)) 
    \state[0]_i_1__3 
       (.I0(s_axis_tvalid_0),
        .I1(r0_last_reg_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h3388330033F83300)) 
    \state[1]_i_1__3 
       (.I0(r0_last_reg_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state[1]_i_2__2_n_0 ),
        .I3(\state_reg_n_0_[1] ),
        .I4(Q),
        .I5(s_axis_tvalid_0),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \state[1]_i_2__2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .O(\state[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0004000400040404)) 
    \state[2]_i_1__3 
       (.I0(s_axis_tvalid_0),
        .I1(\state[2]_i_2__1_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(r0_last_reg_n_0),
        .O(state[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[2]_i_2__1 
       (.I0(Q),
        .I1(\state_reg_n_0_[1] ),
        .O(\state[2]_i_2__1_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg_n_0_[1] ),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_upsizer" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_11
   (Q,
    s_axis_tid_1_sp_1,
    aclk,
    m_axi_arready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_1_sp_1;
  input aclk;
  input m_axi_arready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_arready_i;
  wire r0_last_i_1__1_n_0;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1__1_n_0 ;
  wire \r0_reg_sel[1]_i_1__1_n_0 ;
  wire \r0_reg_sel[1]_i_2__0_n_0 ;
  wire \r0_reg_sel[1]_i_3__0_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_1_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_2__1_n_0 ;
  wire \state[2]_i_2__2_n_0 ;
  wire \state_reg_n_0_[2] ;

  assign s_axis_tid_1_sp_1 = s_axis_tid_1_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    r0_last_i_1__1
       (.I0(s_axis_tlast),
        .I1(Q[0]),
        .I2(r0_last_reg_n_0),
        .O(r0_last_i_1__1_n_0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r0_last_i_1__1_n_0),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2AAA2A)) 
    \r0_reg_sel[0]_i_1__1 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m_axi_arready_i),
        .I5(areset_r),
        .O(\r0_reg_sel[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
    \r0_reg_sel[1]_i_1__1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel[1]_i_2__0_n_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel[1]_i_3__0_n_0 ),
        .I5(areset_r),
        .O(\r0_reg_sel[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r0_reg_sel[1]_i_2__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r0_reg_sel[1]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r0_reg_sel[1]_i_3__0 
       (.I0(Q[1]),
        .I1(m_axi_arready_i),
        .O(\r0_reg_sel[1]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1__1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1__1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    s_axis_tready_INST_0_i_5
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[0]),
        .O(s_axis_tid_1_sn_1));
  LUT6 #(
    .INIT(64'hFFFFEAEACFFFFFFF)) 
    \state[0]_i_1__2 
       (.I0(m_axi_arready_i),
        .I1(s_axis_tid_1_sn_1),
        .I2(Q[0]),
        .I3(r0_last_reg_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000F8800)) 
    \state[1]_i_1__2 
       (.I0(r0_last_reg_n_0),
        .I1(Q[0]),
        .I2(m_axi_arready_i),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\state[1]_i_2__1_n_0 ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0000000022222000)) 
    \state[1]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\state_reg_n_0_[2] ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .I5(s_axis_tid_1_sn_1),
        .O(\state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF004000C0)) 
    \state[2]_i_1__2 
       (.I0(Q[0]),
        .I1(m_axi_arready_i),
        .I2(Q[1]),
        .I3(\state_reg_n_0_[2] ),
        .I4(s_axis_tid_1_sn_1),
        .I5(\state[2]_i_2__2_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h0004000400040404)) 
    \state[2]_i_2__2 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(r0_last_reg_n_0),
        .O(\state[2]_i_2__2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_upsizer" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_7
   (s_axis_tready,
    Q,
    E,
    \acc_data_reg[34]_0 ,
    \acc_data_reg[34]_1 ,
    s_axi_rready_0,
    s_axi_rdata,
    s_axi_rresp,
    s_axis_tlast,
    aclk,
    s_axis_tready_0,
    s_axis_tready_1,
    s_axis_tready_2,
    s_axis_tready_3,
    s_axi_rready,
    s_axis_tready_4,
    s_axis_tready_5,
    s_axis_tid,
    s_axis_tvalid,
    s_axi_arvalid,
    \num_active_trans_reg[0] ,
    \num_active_trans_reg[0]_0 ,
    areset_r,
    s_axis_tdata);
  output s_axis_tready;
  output [0:0]Q;
  output [0:0]E;
  output \acc_data_reg[34]_0 ;
  output \acc_data_reg[34]_1 ;
  output s_axi_rready_0;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  input s_axis_tlast;
  input aclk;
  input [2:0]s_axis_tready_0;
  input s_axis_tready_1;
  input s_axis_tready_2;
  input s_axis_tready_3;
  input s_axi_rready;
  input s_axis_tready_4;
  input s_axis_tready_5;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axi_arvalid;
  input \num_active_trans_reg[0] ;
  input [0:0]\num_active_trans_reg[0]_0 ;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [0:0]E;
  wire [0:0]Q;
  wire \acc_data[32]_i_1_n_0 ;
  wire \acc_data[33]_i_1_n_0 ;
  wire \acc_data[34]_i_1_n_0 ;
  wire \acc_data_reg[34]_0 ;
  wire \acc_data_reg[34]_1 ;
  wire aclk;
  wire areset_r;
  wire \num_active_trans_reg[0] ;
  wire [0:0]\num_active_trans_reg[0]_0 ;
  wire p_0_in;
  wire [31:0]r0_data;
  wire r0_last_reg_n_0;
  wire r0_reg_sel0;
  wire \r0_reg_sel[0]_i_1__2_n_0 ;
  wire \r0_reg_sel[1]_i_1__2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire s_axi_arvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]s_axi_rresp;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tready_2;
  wire s_axis_tready_3;
  wire s_axis_tready_4;
  wire s_axis_tready_5;
  wire s_axis_tready_INST_0_i_1_n_0;
  wire s_axis_tvalid;
  wire [3:3]s_int_tready;
  wire [2:0]state;
  wire \state[1]_i_2__0_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[1]_i_4_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state_reg_n_0_[2] ;

  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[31]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(s_int_tready),
        .I2(Q),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data[32]_i_1 
       (.I0(s_axis_tdata[0]),
        .I1(s_int_tready),
        .I2(Q),
        .I3(s_axi_rresp[0]),
        .O(\acc_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data[33]_i_1 
       (.I0(s_axis_tdata[1]),
        .I1(s_int_tready),
        .I2(Q),
        .I3(s_axi_rresp[1]),
        .O(\acc_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \acc_data[34]_i_1 
       (.I0(s_axis_tdata[2]),
        .I1(s_int_tready),
        .I2(Q),
        .I3(\acc_data_reg[34]_0 ),
        .O(\acc_data[34]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(s_axi_rdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(s_axi_rdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(s_axi_rdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(s_axi_rdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(s_axi_rdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(s_axi_rdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(s_axi_rdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[16]),
        .Q(s_axi_rdata[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[17]),
        .Q(s_axi_rdata[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[18]),
        .Q(s_axi_rdata[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[19]),
        .Q(s_axi_rdata[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(s_axi_rdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[20]),
        .Q(s_axi_rdata[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[21]),
        .Q(s_axi_rdata[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[22]),
        .Q(s_axi_rdata[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[23]),
        .Q(s_axi_rdata[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[24]),
        .Q(s_axi_rdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[25]),
        .Q(s_axi_rdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[26]),
        .Q(s_axi_rdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[27]),
        .Q(s_axi_rdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[28]),
        .Q(s_axi_rdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[29]),
        .Q(s_axi_rdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(s_axi_rdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[30]),
        .Q(s_axi_rdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[31]),
        .Q(s_axi_rdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[32] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_data[32]_i_1_n_0 ),
        .Q(s_axi_rresp[0]),
        .R(1'b0));
  FDRE \acc_data_reg[33] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_data[33]_i_1_n_0 ),
        .Q(s_axi_rresp[1]),
        .R(1'b0));
  FDRE \acc_data_reg[34] 
       (.C(aclk),
        .CE(1'b1),
        .D(\acc_data[34]_i_1_n_0 ),
        .Q(\acc_data_reg[34]_0 ),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(s_axi_rdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(s_axi_rdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(s_axi_rdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(s_axi_rdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(s_axi_rdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(s_axi_rdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(s_axi_rdata[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h7F)) 
    count_is_max_i_4
       (.I0(s_axi_rready),
        .I1(Q),
        .I2(\acc_data_reg[34]_0 ),
        .O(s_axi_rready_0));
  LUT6 #(
    .INIT(64'hDF20202020202020)) 
    \num_active_trans[3]_i_1__1 
       (.I0(s_axi_arvalid),
        .I1(\num_active_trans_reg[0] ),
        .I2(\num_active_trans_reg[0]_0 ),
        .I3(s_axi_rready),
        .I4(Q),
        .I5(\acc_data_reg[34]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h7F7FFF7F7F7F7F7F)) 
    \num_active_trans[3]_i_3__1 
       (.I0(\acc_data_reg[34]_0 ),
        .I1(Q),
        .I2(s_axi_rready),
        .I3(\num_active_trans_reg[0]_0 ),
        .I4(\num_active_trans_reg[0] ),
        .I5(s_axi_arvalid),
        .O(\acc_data_reg[34]_1 ));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(s_int_tready),
        .D(s_axis_tlast),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2AAA2A)) 
    \r0_reg_sel[0]_i_1__2 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_int_tready),
        .I3(Q),
        .I4(s_axi_rready),
        .I5(areset_r),
        .O(\r0_reg_sel[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000E2E2E2)) 
    \r0_reg_sel[1]_i_1__2 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(r0_reg_sel0),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(Q),
        .I4(s_axi_rready),
        .I5(areset_r),
        .O(\r0_reg_sel[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \r0_reg_sel[1]_i_2 
       (.I0(Q),
        .I1(s_int_tready),
        .I2(\state_reg_n_0_[2] ),
        .O(r0_reg_sel0));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1__2_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1__2_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAEFF)) 
    s_axis_tready_INST_0
       (.I0(s_axis_tready_INST_0_i_1_n_0),
        .I1(s_axis_tready_0[0]),
        .I2(s_axis_tready_1),
        .I3(s_axis_tready_2),
        .I4(s_axis_tready_3),
        .O(s_axis_tready));
  LUT6 #(
    .INIT(64'h22F2FFFF22F222F2)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_int_tready),
        .I1(\state[1]_i_3_n_0 ),
        .I2(s_axis_tready_0[2]),
        .I3(s_axis_tready_4),
        .I4(s_axis_tready_5),
        .I5(s_axis_tready_0[1]),
        .O(s_axis_tready_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFCFCFCFF77FFFF)) 
    \state[0]_i_1__1 
       (.I0(r0_last_reg_n_0),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_axi_rready),
        .I3(\state[1]_i_3_n_0 ),
        .I4(s_int_tready),
        .I5(Q),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hFFAEAAAAAEAEAAAA)) 
    \state[1]_i_1__1 
       (.I0(\state[1]_i_2__0_n_0 ),
        .I1(\r0_reg_sel_reg_n_0_[1] ),
        .I2(\state[1]_i_3_n_0 ),
        .I3(r0_last_reg_n_0),
        .I4(\state[1]_i_4_n_0 ),
        .I5(\state_reg_n_0_[2] ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h004000000040FF00)) 
    \state[1]_i_2__0 
       (.I0(\state[1]_i_3_n_0 ),
        .I1(s_int_tready),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(Q),
        .I4(\state_reg_n_0_[2] ),
        .I5(s_axi_rready),
        .O(\state[1]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \state[1]_i_3 
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[2]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[0]),
        .O(\state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \state[1]_i_4 
       (.I0(s_int_tready),
        .I1(Q),
        .O(\state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0040FFFF004000C0)) 
    \state[2]_i_1__1 
       (.I0(s_int_tready),
        .I1(s_axi_rready),
        .I2(Q),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state[1]_i_3_n_0 ),
        .I5(\state[2]_i_2__0_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h0004000400040404)) 
    \state[2]_i_2__0 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(s_int_tready),
        .I2(Q),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(r0_last_reg_n_0),
        .O(\state[2]_i_2__0_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(s_int_tready),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_upsizer" *) 
module design_1_axi_mm2s_mapper_1_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_9
   (Q,
    s_axis_tid_0_sp_1,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tlast,
    areset_r);
  output [1:0]Q;
  output s_axis_tid_0_sp_1;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input s_axis_tlast;
  input areset_r;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire m_axi_awready_i;
  wire r0_last_i_1__0_n_0;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_2__1_n_0 ;
  wire \r0_reg_sel[1]_i_3_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_0_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state_reg_n_0_[2] ;

  assign s_axis_tid_0_sp_1 = s_axis_tid_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    r0_last_i_1__0
       (.I0(s_axis_tlast),
        .I1(Q[0]),
        .I2(r0_last_reg_n_0),
        .O(r0_last_i_1__0_n_0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r0_last_i_1__0_n_0),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF2AAA2A)) 
    \r0_reg_sel[0]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(m_axi_awready_i),
        .I5(areset_r),
        .O(\r0_reg_sel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EA2A0000)) 
    \r0_reg_sel[1]_i_1 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(\r0_reg_sel[1]_i_2__1_n_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel[1]_i_3_n_0 ),
        .I5(areset_r),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \r0_reg_sel[1]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\r0_reg_sel[1]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \r0_reg_sel[1]_i_3 
       (.I0(Q[1]),
        .I1(m_axi_awready_i),
        .O(\r0_reg_sel[1]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    s_axis_tready_INST_0_i_2
       (.I0(s_axis_tid[0]),
        .I1(s_axis_tid[1]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[2]),
        .O(s_axis_tid_0_sn_1));
  LUT6 #(
    .INIT(64'hFFFFEAEACFFFFFFF)) 
    \state[0]_i_1__0 
       (.I0(m_axi_awready_i),
        .I1(s_axis_tid_0_sn_1),
        .I2(Q[0]),
        .I3(r0_last_reg_n_0),
        .I4(\state_reg_n_0_[2] ),
        .I5(Q[1]),
        .O(state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF000F8800)) 
    \state[1]_i_1__0 
       (.I0(r0_last_reg_n_0),
        .I1(Q[0]),
        .I2(m_axi_awready_i),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\state[1]_i_2_n_0 ),
        .O(state[1]));
  LUT6 #(
    .INIT(64'h0404040004000400)) 
    \state[1]_i_2 
       (.I0(s_axis_tid_0_sn_1),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\r0_reg_sel_reg_n_0_[1] ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(\state_reg_n_0_[2] ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00007000)) 
    \state[2]_i_1__0 
       (.I0(s_axis_tid_0_sn_1),
        .I1(Q[0]),
        .I2(m_axi_awready_i),
        .I3(Q[1]),
        .I4(\state_reg_n_0_[2] ),
        .I5(\state[2]_i_2_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h0004000400040404)) 
    \state[2]_i_2 
       (.I0(s_axis_tid_0_sn_1),
        .I1(\r0_reg_sel[1]_i_2__1_n_0 ),
        .I2(\r0_reg_sel_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(r0_last_reg_n_0),
        .O(\state[2]_i_2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[0]),
        .Q(Q[0]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(Q[1]),
        .R(areset_r));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[2]),
        .Q(\state_reg_n_0_[2] ),
        .R(areset_r));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc
   (m_axis_tdata,
    m_axis_tkeep,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ,
    m_axis_tid,
    arb_busy_r_reg,
    m_axis_tready_0,
    \gen_tdest_routing.busy_ns ,
    \gen_tdest_routing.busy_ns_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    m_axis_tready_1,
    arb_sel_i,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 ,
    m_int_tdata,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1 ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1 ,
    f_mux4_return,
    m_int_tkeep,
    last_out1,
    \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 ,
    \arb_gnt_r_reg[2] ,
    arb_busy_r,
    m_int_tvalid,
    \gen_tdest_routing.busy_r_reg[0] ,
    arb_gnt_i,
    m_axis_tready,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    \gen_tdest_routing.busy_r_reg[0]_3 ,
    \busy_r_reg[4] ,
    areset_r);
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  output [2:0]m_axis_tid;
  output arb_busy_r_reg;
  output m_axis_tready_0;
  output \gen_tdest_routing.busy_ns ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output m_axis_tready_1;
  input [0:0]arb_sel_i;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 ;
  input [4:0]m_int_tdata;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1 ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1 ;
  input [0:0]f_mux4_return;
  input [0:0]m_int_tkeep;
  input last_out1;
  input [1:0]\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 ;
  input \arb_gnt_r_reg[2] ;
  input arb_busy_r;
  input [0:0]m_int_tvalid;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input [2:0]arb_gnt_i;
  input m_axis_tready;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input \gen_tdest_routing.busy_r_reg[0]_3 ;
  input \busy_r_reg[4] ;
  input areset_r;

  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r_reg[2] ;
  wire [0:0]arb_sel_i;
  wire areset_r;
  wire \busy_r_reg[4] ;
  wire [0:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 ;
  wire [1:0]\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0 ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire \gen_tdest_routing.busy_r_reg[0]_3 ;
  wire last_out1;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire m_axis_tready_1;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire [0:0]m_int_tvalid;

  LUT6 #(
    .INIT(64'h5F5F5F5F4F4F004F)) 
    \arb_gnt_r[2]_i_2 
       (.I0(m_axis_tready_0),
        .I1(\arb_gnt_r_reg[2] ),
        .I2(arb_busy_r),
        .I3(m_int_tvalid),
        .I4(\gen_tdest_routing.busy_r_reg[0] ),
        .I5(arb_gnt_i[0]),
        .O(arb_busy_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \arb_gnt_r[4]_i_5 
       (.I0(m_axis_tready),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .O(m_axis_tready_0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \busy_r[4]_i_2 
       (.I0(m_axis_tready),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(\busy_r_reg[4] ),
        .I4(areset_r),
        .O(m_axis_tready_1));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [0]),
        .I1(m_int_tdata[0]),
        .O(m_axis_tdata[0]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [10]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0 ),
        .O(m_axis_tdata[10]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [11]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0 ),
        .O(m_axis_tdata[11]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [12]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0 ),
        .O(m_axis_tdata[12]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [13]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0 ),
        .O(m_axis_tdata[13]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [14]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0 ),
        .O(m_axis_tdata[14]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [15]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0 ),
        .O(m_axis_tdata[15]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [16]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0 ),
        .O(m_axis_tdata[16]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [17]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0 ),
        .O(m_axis_tdata[17]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [18]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0 ),
        .O(m_axis_tdata[18]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [19]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0 ),
        .O(m_axis_tdata[19]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [1]),
        .I1(m_int_tdata[1]),
        .O(m_axis_tdata[1]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [20]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0 ),
        .O(m_axis_tdata[20]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [21]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0 ),
        .O(m_axis_tdata[21]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [22]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0 ),
        .O(m_axis_tdata[22]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [23]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0 ),
        .O(m_axis_tdata[23]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [24]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0 ),
        .O(m_axis_tdata[24]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [25]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0 ),
        .O(m_axis_tdata[25]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [26]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0 ),
        .O(m_axis_tdata[26]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [27]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0 ),
        .O(m_axis_tdata[27]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [28]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0 ),
        .O(m_axis_tdata[28]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [29]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0 ),
        .O(m_axis_tdata[29]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [2]),
        .I1(m_int_tdata[2]),
        .O(m_axis_tdata[2]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [30]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0 ),
        .O(m_axis_tdata[30]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [31]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0 ),
        .O(m_axis_tdata[31]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[32].mux_s2_inst 
       (.I0(1'b1),
        .I1(1'b1),
        .O(m_axis_tkeep[0]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1 ),
        .O(m_axis_tkeep[1]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1 ),
        .O(m_axis_tkeep[2]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst 
       (.I0(f_mux4_return),
        .I1(m_int_tkeep),
        .O(m_axis_tkeep[3]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [32]),
        .I1(last_out1),
        .O(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[37].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 [0]),
        .I1(1'b0),
        .O(m_axis_tid[0]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 [1]),
        .I1(1'b0),
        .O(m_axis_tid[1]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[39].mux_s2_inst 
       (.I0(1'b0),
        .I1(1'b1),
        .O(m_axis_tid[2]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [3]),
        .I1(m_int_tdata[3]),
        .O(m_axis_tdata[3]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [4]),
        .I1(m_int_tdata[4]),
        .O(m_axis_tdata[4]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [5]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0 ),
        .O(m_axis_tdata[5]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [6]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0 ),
        .O(m_axis_tdata[6]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [7]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0 ),
        .O(m_axis_tdata[7]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [8]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0 ),
        .O(m_axis_tdata[8]),
        .S(arb_sel_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 [9]),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0 ),
        .O(m_axis_tdata[9]),
        .S(arb_sel_i));
  LUT6 #(
    .INIT(64'hFFFF2AAA2AAA2AAA)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(arb_gnt_i[2]),
        .I1(m_axis_tready),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(\gen_tdest_routing.busy_r_reg[0]_1 ),
        .I5(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .O(\gen_tdest_routing.busy_ns ));
  LUT6 #(
    .INIT(64'hFFFF2AAA2AAA2AAA)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(arb_gnt_i[1]),
        .I1(m_axis_tready),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(\gen_tdest_routing.busy_r_reg[0]_3 ),
        .I5(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .O(\gen_tdest_routing.busy_ns_0 ));
  LUT6 #(
    .INIT(64'hFFFF2AAA2AAA2AAA)) 
    \gen_tdest_routing.busy_r[0]_i_1__1 
       (.I0(arb_gnt_i[0]),
        .I1(m_axis_tready),
        .I2(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .I3(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I4(\gen_tdest_routing.busy_r_reg[0] ),
        .I5(\gen_tdest_routing.busy_r_reg[0]_2 ),
        .O(\gen_tdest_routing.busy_ns_1 ));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_mux_enc" *) 
module design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0
   (o_i,
    arb_sel_i,
    f_mux40_return,
    m_int_tvalid);
  output o_i;
  input [0:0]arb_sel_i;
  input f_mux40_return;
  input [0:0]m_int_tvalid;

  wire [0:0]arb_sel_i;
  wire f_mux40_return;
  wire [0:0]m_int_tvalid;
  wire o_i;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst 
       (.I0(f_mux40_return),
        .I1(m_int_tvalid),
        .O(o_i),
        .S(arb_sel_i));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr
   (arb_busy_r,
    \arb_gnt_r_reg[1]_0 ,
    \arb_gnt_r_reg[4]_0 ,
    m_axis_tvalid,
    \arb_gnt_r_reg[4]_1 ,
    \arb_gnt_r_reg[2]_0 ,
    \arb_gnt_r_reg[2]_1 ,
    \arb_gnt_r_reg[4]_2 ,
    f_mux4_return,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[1]_0 ,
    f_mux40_return,
    \arb_sel_r_reg[0]_1 ,
    \arb_sel_r_reg[0]_2 ,
    arb_sel_i,
    areset_r,
    aclk,
    m_int_tvalid,
    arb_busy_r_reg_0,
    arb_busy_r_reg_1,
    \gen_tdest_router.busy_r ,
    o_i,
    \arb_sel_r_reg[0]_3 ,
    \arb_sel_r_reg[0]_4 ,
    \arb_sel_r_reg[1]_1 ,
    arb_busy_r_reg_2,
    arb_busy_r_reg_3,
    \arb_gnt_r_reg[4]_3 ,
    \arb_gnt_r_reg[2]_2 ,
    \arb_gnt_r_reg[1]_1 ,
    \arb_sel_r_reg[0]_5 ,
    \arb_sel_r_reg[2]_0 ,
    \arb_sel_r_reg[2]_1 ,
    \arb_sel_r_reg[0]_6 );
  output arb_busy_r;
  output \arb_gnt_r_reg[1]_0 ;
  output \arb_gnt_r_reg[4]_0 ;
  output m_axis_tvalid;
  output \arb_gnt_r_reg[4]_1 ;
  output \arb_gnt_r_reg[2]_0 ;
  output \arb_gnt_r_reg[2]_1 ;
  output \arb_gnt_r_reg[4]_2 ;
  output [0:0]f_mux4_return;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[1]_0 ;
  output f_mux40_return;
  output \arb_sel_r_reg[0]_1 ;
  output \arb_sel_r_reg[0]_2 ;
  output [0:0]arb_sel_i;
  input areset_r;
  input aclk;
  input [2:0]m_int_tvalid;
  input arb_busy_r_reg_0;
  input arb_busy_r_reg_1;
  input [2:0]\gen_tdest_router.busy_r ;
  input o_i;
  input \arb_sel_r_reg[0]_3 ;
  input \arb_sel_r_reg[0]_4 ;
  input \arb_sel_r_reg[1]_1 ;
  input arb_busy_r_reg_2;
  input arb_busy_r_reg_3;
  input \arb_gnt_r_reg[4]_3 ;
  input \arb_gnt_r_reg[2]_2 ;
  input \arb_gnt_r_reg[1]_1 ;
  input \arb_sel_r_reg[0]_5 ;
  input \arb_sel_r_reg[2]_0 ;
  input \arb_sel_r_reg[2]_1 ;
  input \arb_sel_r_reg[0]_6 ;

  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire arb_busy_r_reg_2;
  wire arb_busy_r_reg_3;
  wire \arb_gnt_r_reg[1]_0 ;
  wire \arb_gnt_r_reg[1]_1 ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[2]_1 ;
  wire \arb_gnt_r_reg[2]_2 ;
  wire \arb_gnt_r_reg[4]_0 ;
  wire \arb_gnt_r_reg[4]_1 ;
  wire \arb_gnt_r_reg[4]_2 ;
  wire \arb_gnt_r_reg[4]_3 ;
  wire [0:0]arb_sel_i;
  wire \arb_sel_r[0]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r[1]_i_2_n_0 ;
  wire \arb_sel_r[2]_i_1_n_0 ;
  wire \arb_sel_r[2]_i_6_n_0 ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[0]_1 ;
  wire \arb_sel_r_reg[0]_2 ;
  wire \arb_sel_r_reg[0]_3 ;
  wire \arb_sel_r_reg[0]_4 ;
  wire \arb_sel_r_reg[0]_5 ;
  wire \arb_sel_r_reg[0]_6 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[1]_1 ;
  wire \arb_sel_r_reg[2]_0 ;
  wire \arb_sel_r_reg[2]_1 ;
  wire areset_r;
  wire f_mux40_return;
  wire [0:0]f_mux4_return;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire m_axis_tvalid;
  wire [2:0]m_int_tvalid;
  wire o_i;

  LUT6 #(
    .INIT(64'hFFFFFF02FF02FF02)) 
    arb_busy_r_i_1
       (.I0(m_int_tvalid[0]),
        .I1(arb_busy_r_reg_0),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(\arb_gnt_r_reg[4]_0 ),
        .I4(arb_busy_r),
        .I5(arb_busy_r_reg_1),
        .O(arb_busy_ns));
  LUT6 #(
    .INIT(64'h040404FF04040404)) 
    arb_busy_r_i_2
       (.I0(\arb_gnt_r_reg[4]_2 ),
        .I1(m_int_tvalid[2]),
        .I2(arb_busy_r_reg_2),
        .I3(\arb_gnt_r_reg[2]_0 ),
        .I4(arb_busy_r_reg_3),
        .I5(m_int_tvalid[1]),
        .O(\arb_gnt_r_reg[4]_0 ));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(areset_r));
  FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r_reg[1]_1 ),
        .Q(\arb_gnt_r_reg[1]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r_reg[2]_2 ),
        .Q(\arb_gnt_r_reg[2]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r_reg[4]_3 ),
        .Q(\arb_gnt_r_reg[4]_2 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h333F3332)) 
    \arb_sel_r[0]_i_1 
       (.I0(\arb_sel_r_reg[0]_6 ),
        .I1(\arb_sel_r_reg[0]_5 ),
        .I2(\arb_sel_r[1]_i_2_n_0 ),
        .I3(\arb_sel_r[2]_i_6_n_0 ),
        .I4(\arb_sel_r_reg[0]_0 ),
        .O(\arb_sel_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h505050F350505000)) 
    \arb_sel_r[1]_i_1 
       (.I0(\arb_sel_r_reg[1]_1 ),
        .I1(\arb_sel_r_reg[0]_6 ),
        .I2(\arb_sel_r_reg[0]_5 ),
        .I3(\arb_sel_r[1]_i_2_n_0 ),
        .I4(\arb_sel_r[2]_i_6_n_0 ),
        .I5(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h5500FD00)) 
    \arb_sel_r[1]_i_2 
       (.I0(arb_busy_r),
        .I1(\arb_sel_r_reg[0]_3 ),
        .I2(\arb_gnt_r_reg[1]_0 ),
        .I3(\arb_gnt_r_reg[4]_0 ),
        .I4(\arb_sel_r_reg[0]_4 ),
        .O(\arb_sel_r[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h808080FF80808000)) 
    \arb_sel_r[2]_i_1 
       (.I0(\arb_sel_r_reg[0]_5 ),
        .I1(\arb_sel_r_reg[2]_0 ),
        .I2(\arb_sel_r_reg[1]_1 ),
        .I3(\arb_sel_r_reg[2]_1 ),
        .I4(\arb_sel_r[2]_i_6_n_0 ),
        .I5(arb_sel_i),
        .O(\arb_sel_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010131010101010)) 
    \arb_sel_r[2]_i_6 
       (.I0(\arb_sel_r_reg[1]_1 ),
        .I1(\arb_sel_r_reg[0]_4 ),
        .I2(\arb_gnt_r_reg[4]_2 ),
        .I3(\arb_gnt_r_reg[2]_0 ),
        .I4(arb_busy_r_reg_2),
        .I5(m_int_tvalid[2]),
        .O(\arb_sel_r[2]_i_6_n_0 ));
  FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[0]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[0]_0 ),
        .R(areset_r));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(areset_r));
  FDRE \arb_sel_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[2]_i_1_n_0 ),
        .Q(arb_sel_i),
        .R(areset_r));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \busy_r[4]_i_3 
       (.I0(\arb_gnt_r_reg[2]_0 ),
        .I1(\gen_tdest_router.busy_r [1]),
        .I2(\gen_tdest_router.busy_r [0]),
        .I3(\gen_tdest_router.busy_r [2]),
        .I4(\arb_gnt_r_reg[4]_2 ),
        .I5(\arb_gnt_r_reg[1]_0 ),
        .O(\arb_gnt_r_reg[2]_1 ));
  LUT4 #(
    .INIT(16'h0AC0)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1__0 
       (.I0(m_int_tvalid[1]),
        .I1(m_int_tvalid[0]),
        .I2(\arb_sel_r_reg[0]_0 ),
        .I3(\arb_sel_r_reg[1]_0 ),
        .O(f_mux40_return));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[0]_0 ),
        .I1(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r_reg[0]_1 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[0]_0 ),
        .I1(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r_reg[0]_2 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[0]_0 ),
        .I1(\arb_sel_r_reg[1]_0 ),
        .O(f_mux4_return));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
    m_axis_tvalid_INST_0
       (.I0(\arb_gnt_r_reg[1]_0 ),
        .I1(\arb_gnt_r_reg[4]_1 ),
        .I2(\gen_tdest_router.busy_r [0]),
        .I3(\gen_tdest_router.busy_r [1]),
        .I4(\arb_gnt_r_reg[2]_0 ),
        .I5(o_i),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tvalid_INST_0_i_1
       (.I0(\arb_gnt_r_reg[4]_2 ),
        .I1(\gen_tdest_router.busy_r [2]),
        .O(\arb_gnt_r_reg[4]_1 ));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch
   (m_axis_tdata,
    \arb_sel_r_reg[1] ,
    m_axis_tkeep,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    m_axis_tid,
    \busy_r_reg[1] ,
    \busy_r_reg[4] ,
    m_axis_tvalid,
    \busy_r_reg[2] ,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ,
    m_int_tdata,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ,
    m_int_tkeep,
    last_out1,
    m_int_tvalid,
    areset_r,
    aclk,
    m_axis_tready);
  output [31:0]m_axis_tdata;
  output [1:0]\arb_sel_r_reg[1] ;
  output [3:0]m_axis_tkeep;
  output \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  output [2:0]m_axis_tid;
  output \busy_r_reg[1] ;
  output \busy_r_reg[4] ;
  output m_axis_tvalid;
  output \busy_r_reg[2] ;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  input [4:0]m_int_tdata;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  input [0:0]m_int_tkeep;
  input last_out1;
  input [2:0]m_int_tvalid;
  input areset_r;
  input aclk;
  input m_axis_tready;

  wire aclk;
  wire [4:1]arb_gnt_i;
  wire [2:2]arb_sel_i;
  wire [1:0]\arb_sel_r_reg[1] ;
  wire areset_r;
  wire \busy_r_reg[1] ;
  wire \busy_r_reg[2] ;
  wire \busy_r_reg[4] ;
  wire \gen_decoder[1].axisc_decoder_0_n_0 ;
  wire \gen_decoder[1].axisc_decoder_0_n_1 ;
  wire \gen_decoder[1].axisc_decoder_0_n_2 ;
  wire \gen_decoder[2].axisc_decoder_0_n_0 ;
  wire \gen_decoder[2].axisc_decoder_0_n_1 ;
  wire \gen_decoder[2].axisc_decoder_0_n_2 ;
  wire \gen_decoder[2].axisc_decoder_0_n_3 ;
  wire \gen_decoder[4].axisc_decoder_0_n_0 ;
  wire \gen_decoder[4].axisc_decoder_0_n_1 ;
  wire \gen_decoder[4].axisc_decoder_0_n_2 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7 ;
  wire \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ;
  wire [4:1]\gen_tdest_router.busy_r ;
  wire [35:35]\gen_tdest_router.mux_enc_0/f_mux4_return ;
  wire \gen_tdest_router.mux_enc_1/f_mux40_return ;
  wire \gen_tdest_router.mux_enc_1/o_i ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_46 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_47 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_48 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_49 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_51 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_55 ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0_n_56 ;
  wire last_out1;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire [2:0]m_int_tvalid;

  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder \gen_decoder[1].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[1]),
        .\arb_gnt_r_reg[1] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_49 ),
        .areset_r(areset_r),
        .areset_r_reg(\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .m_int_tvalid(m_int_tvalid[0]),
        .\state_reg[1] (\gen_decoder[1].axisc_decoder_0_n_2 ));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4 \gen_decoder[2].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[2]),
        .\arb_gnt_r_reg[2] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_46 ),
        .areset_r(areset_r),
        .areset_r_reg(\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[2].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .m_int_tvalid(m_int_tvalid[1]),
        .\state_reg[1] (\gen_decoder[2].axisc_decoder_0_n_2 ));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5 \gen_decoder[4].axisc_decoder_0 
       (.aclk(aclk),
        .arb_gnt_i(arb_gnt_i[4]),
        .\arb_gnt_r_reg[4] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_55 ),
        .areset_r(areset_r),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[4].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[4].axisc_decoder_0_n_2 ),
        .m_int_tvalid(m_int_tvalid[2]),
        .\state_reg[1] (\gen_decoder[4].axisc_decoder_0_n_1 ));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter 
       (.aclk(aclk),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ),
        .arb_busy_r_reg(\gen_decoder[1].axisc_decoder_0_n_0 ),
        .arb_busy_r_reg_0(\gen_transfer_mux[0].axisc_transfer_mux_0_n_51 ),
        .arb_busy_r_reg_1(\gen_decoder[4].axisc_decoder_0_n_0 ),
        .arb_busy_r_reg_2(\gen_decoder[2].axisc_decoder_0_n_0 ),
        .arb_gnt_i({arb_gnt_i[4],arb_gnt_i[2:1]}),
        .\arb_gnt_r_reg[1] (\gen_decoder[1].axisc_decoder_0_n_1 ),
        .\arb_gnt_r_reg[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7 ),
        .\arb_gnt_r_reg[2]_0 (\gen_decoder[2].axisc_decoder_0_n_1 ),
        .\arb_gnt_r_reg[4] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4 ),
        .\arb_gnt_r_reg[4]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6 ),
        .\arb_gnt_r_reg[4]_1 (\gen_decoder[4].axisc_decoder_0_n_1 ),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[0] (\arb_sel_r_reg[1] [0]),
        .\arb_sel_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12 ),
        .\arb_sel_r_reg[0]_1 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13 ),
        .\arb_sel_r_reg[0]_2 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_56 ),
        .\arb_sel_r_reg[0]_3 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_47 ),
        .\arb_sel_r_reg[0]_4 (\gen_decoder[1].axisc_decoder_0_n_2 ),
        .\arb_sel_r_reg[0]_5 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_49 ),
        .\arb_sel_r_reg[1] (\arb_sel_r_reg[1] [1]),
        .\arb_sel_r_reg[1]_0 (\gen_decoder[2].axisc_decoder_0_n_2 ),
        .\arb_sel_r_reg[2] (\gen_decoder[4].axisc_decoder_0_n_2 ),
        .\arb_sel_r_reg[2]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_48 ),
        .areset_r(areset_r),
        .f_mux40_return(\gen_tdest_router.mux_enc_1/f_mux40_return ),
        .f_mux4_return(\gen_tdest_router.mux_enc_0/f_mux4_return ),
        .\gen_tdest_router.busy_r ({\gen_tdest_router.busy_r [4],\gen_tdest_router.busy_r [2:1]}),
        .m_axis_tvalid(m_axis_tvalid),
        .m_int_tvalid(m_int_tvalid),
        .o_i(\gen_tdest_router.mux_enc_1/o_i ));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.aclk(aclk),
        .arb_busy_r(\gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1/arb_busy_r ),
        .arb_busy_r_reg(\gen_transfer_mux[0].axisc_transfer_mux_0_n_46 ),
        .arb_busy_r_reg_0(\gen_transfer_mux[0].axisc_transfer_mux_0_n_48 ),
        .arb_busy_r_reg_1(\gen_transfer_mux[0].axisc_transfer_mux_0_n_55 ),
        .arb_gnt_i({arb_gnt_i[4],arb_gnt_i[2:1]}),
        .\arb_gnt_r_reg[2] (\gen_transfer_mux[0].axisc_transfer_mux_0_n_51 ),
        .\arb_gnt_r_reg[4] (\gen_decoder[1].axisc_decoder_0_n_2 ),
        .\arb_gnt_r_reg[4]_0 (\gen_decoder[2].axisc_decoder_0_n_3 ),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[2] (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_4 ),
        .areset_r(areset_r),
        .\busy_r_reg[1] (\busy_r_reg[1] ),
        .\busy_r_reg[1]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_49 ),
        .\busy_r_reg[2] (\busy_r_reg[2] ),
        .\busy_r_reg[2]_0 (\gen_transfer_mux[0].axisc_transfer_mux_0_n_56 ),
        .\busy_r_reg[4] (\busy_r_reg[4] ),
        .\busy_r_reg[4]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_7 ),
        .f_mux40_return(\gen_tdest_router.mux_enc_1/f_mux40_return ),
        .f_mux4_return(\gen_tdest_router.mux_enc_0/f_mux4_return ),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_12 ),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_13 ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst (\arb_sel_r_reg[1] ),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ),
        .\gen_tdest_router.busy_r ({\gen_tdest_router.busy_r [4],\gen_tdest_router.busy_r [2:1]}),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[1].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_6 ),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_decoder[4].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\gen_decoder[2].axisc_decoder_0_n_0 ),
        .last_out1(last_out1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0(\gen_transfer_mux[0].axisc_transfer_mux_0_n_47 ),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .m_int_tvalid({m_int_tvalid[2],m_int_tvalid[0]}),
        .o_i(\gen_tdest_router.mux_enc_1/o_i ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axis_switch" *) 
module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch__parameterized0
   (areset_r,
    \gen_tdest_routing.decode_err_r_reg ,
    SR,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output areset_r;
  output \gen_tdest_routing.decode_err_r_reg ;
  input [0:0]SR;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire [0:0]SR;
  wire aclk;
  wire areset_r;
  wire \gen_tdest_routing.decode_err_r_reg ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  FDRE areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SR),
        .Q(areset_r),
        .R(1'b0));
  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0 \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r(areset_r),
        .\gen_tdest_routing.decode_err_r_reg_0 (\gen_tdest_routing.decode_err_r_reg ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axis_switch_arbiter
   (arb_busy_r,
    arb_gnt_i,
    \arb_gnt_r_reg[4] ,
    m_axis_tvalid,
    \arb_gnt_r_reg[4]_0 ,
    \arb_gnt_r_reg[2] ,
    f_mux4_return,
    \arb_sel_r_reg[0] ,
    \arb_sel_r_reg[1] ,
    f_mux40_return,
    \arb_sel_r_reg[0]_0 ,
    \arb_sel_r_reg[0]_1 ,
    arb_sel_i,
    areset_r,
    aclk,
    m_int_tvalid,
    arb_busy_r_reg,
    arb_busy_r_reg_0,
    \gen_tdest_router.busy_r ,
    o_i,
    \arb_sel_r_reg[0]_2 ,
    \arb_sel_r_reg[0]_3 ,
    \arb_sel_r_reg[1]_0 ,
    arb_busy_r_reg_1,
    arb_busy_r_reg_2,
    \arb_gnt_r_reg[4]_1 ,
    \arb_gnt_r_reg[2]_0 ,
    \arb_gnt_r_reg[1] ,
    \arb_sel_r_reg[0]_4 ,
    \arb_sel_r_reg[2] ,
    \arb_sel_r_reg[2]_0 ,
    \arb_sel_r_reg[0]_5 );
  output arb_busy_r;
  output [2:0]arb_gnt_i;
  output \arb_gnt_r_reg[4] ;
  output m_axis_tvalid;
  output \arb_gnt_r_reg[4]_0 ;
  output \arb_gnt_r_reg[2] ;
  output [0:0]f_mux4_return;
  output \arb_sel_r_reg[0] ;
  output \arb_sel_r_reg[1] ;
  output f_mux40_return;
  output \arb_sel_r_reg[0]_0 ;
  output \arb_sel_r_reg[0]_1 ;
  output [0:0]arb_sel_i;
  input areset_r;
  input aclk;
  input [2:0]m_int_tvalid;
  input arb_busy_r_reg;
  input arb_busy_r_reg_0;
  input [2:0]\gen_tdest_router.busy_r ;
  input o_i;
  input \arb_sel_r_reg[0]_2 ;
  input \arb_sel_r_reg[0]_3 ;
  input \arb_sel_r_reg[1]_0 ;
  input arb_busy_r_reg_1;
  input arb_busy_r_reg_2;
  input \arb_gnt_r_reg[4]_1 ;
  input \arb_gnt_r_reg[2]_0 ;
  input \arb_gnt_r_reg[1] ;
  input \arb_sel_r_reg[0]_4 ;
  input \arb_sel_r_reg[2] ;
  input \arb_sel_r_reg[2]_0 ;
  input \arb_sel_r_reg[0]_5 ;

  wire aclk;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire arb_busy_r_reg_2;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r_reg[1] ;
  wire \arb_gnt_r_reg[2] ;
  wire \arb_gnt_r_reg[2]_0 ;
  wire \arb_gnt_r_reg[4] ;
  wire \arb_gnt_r_reg[4]_0 ;
  wire \arb_gnt_r_reg[4]_1 ;
  wire [0:0]arb_sel_i;
  wire \arb_sel_r_reg[0] ;
  wire \arb_sel_r_reg[0]_0 ;
  wire \arb_sel_r_reg[0]_1 ;
  wire \arb_sel_r_reg[0]_2 ;
  wire \arb_sel_r_reg[0]_3 ;
  wire \arb_sel_r_reg[0]_4 ;
  wire \arb_sel_r_reg[0]_5 ;
  wire \arb_sel_r_reg[1] ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[2] ;
  wire \arb_sel_r_reg[2]_0 ;
  wire areset_r;
  wire f_mux40_return;
  wire [0:0]f_mux4_return;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire m_axis_tvalid;
  wire [2:0]m_int_tvalid;
  wire o_i;

  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1 
       (.aclk(aclk),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg_0(arb_busy_r_reg),
        .arb_busy_r_reg_1(arb_busy_r_reg_0),
        .arb_busy_r_reg_2(arb_busy_r_reg_1),
        .arb_busy_r_reg_3(arb_busy_r_reg_2),
        .\arb_gnt_r_reg[1]_0 (arb_gnt_i[0]),
        .\arb_gnt_r_reg[1]_1 (\arb_gnt_r_reg[1] ),
        .\arb_gnt_r_reg[2]_0 (arb_gnt_i[1]),
        .\arb_gnt_r_reg[2]_1 (\arb_gnt_r_reg[2] ),
        .\arb_gnt_r_reg[2]_2 (\arb_gnt_r_reg[2]_0 ),
        .\arb_gnt_r_reg[4]_0 (\arb_gnt_r_reg[4] ),
        .\arb_gnt_r_reg[4]_1 (\arb_gnt_r_reg[4]_0 ),
        .\arb_gnt_r_reg[4]_2 (arb_gnt_i[2]),
        .\arb_gnt_r_reg[4]_3 (\arb_gnt_r_reg[4]_1 ),
        .arb_sel_i(arb_sel_i),
        .\arb_sel_r_reg[0]_0 (\arb_sel_r_reg[0] ),
        .\arb_sel_r_reg[0]_1 (\arb_sel_r_reg[0]_0 ),
        .\arb_sel_r_reg[0]_2 (\arb_sel_r_reg[0]_1 ),
        .\arb_sel_r_reg[0]_3 (\arb_sel_r_reg[0]_2 ),
        .\arb_sel_r_reg[0]_4 (\arb_sel_r_reg[0]_3 ),
        .\arb_sel_r_reg[0]_5 (\arb_sel_r_reg[0]_4 ),
        .\arb_sel_r_reg[0]_6 (\arb_sel_r_reg[0]_5 ),
        .\arb_sel_r_reg[1]_0 (\arb_sel_r_reg[1] ),
        .\arb_sel_r_reg[1]_1 (\arb_sel_r_reg[1]_0 ),
        .\arb_sel_r_reg[2]_0 (\arb_sel_r_reg[2] ),
        .\arb_sel_r_reg[2]_1 (\arb_sel_r_reg[2]_0 ),
        .areset_r(areset_r),
        .f_mux40_return(f_mux40_return),
        .f_mux4_return(f_mux4_return),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tvalid(m_axis_tvalid),
        .m_int_tvalid(m_int_tvalid),
        .o_i(o_i));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder
   (\busy_r_reg[1]_0 ,
    \busy_r_reg[1]_1 ,
    \busy_r_reg[4]_0 ,
    \busy_r_reg[4]_1 ,
    arb_busy_r_reg,
    \busy_r_reg[1]_2 ,
    \busy_r_reg[2]_0 ,
    \busy_r_reg[2]_1 ,
    \busy_r_reg[2]_2 ,
    arb_busy_r_reg_0,
    \busy_r_reg[2]_3 ,
    \arb_gnt_r_reg[2] ,
    arb_gnt_i,
    m_axis_tready,
    \arb_sel_r_reg[2] ,
    \arb_gnt_r_reg[4] ,
    \arb_gnt_r_reg[4]_0 ,
    arb_busy_r,
    \gen_tdest_routing.busy_r_reg[0] ,
    \arb_gnt_r_reg[4]_1 ,
    \arb_gnt_r[4]_i_2_0 ,
    m_int_tvalid,
    \busy_r_reg[4]_2 ,
    aclk);
  output \busy_r_reg[1]_0 ;
  output \busy_r_reg[1]_1 ;
  output \busy_r_reg[4]_0 ;
  output \busy_r_reg[4]_1 ;
  output arb_busy_r_reg;
  output \busy_r_reg[1]_2 ;
  output \busy_r_reg[2]_0 ;
  output \busy_r_reg[2]_1 ;
  output \busy_r_reg[2]_2 ;
  output arb_busy_r_reg_0;
  output \busy_r_reg[2]_3 ;
  output \arb_gnt_r_reg[2] ;
  input [2:0]arb_gnt_i;
  input m_axis_tready;
  input \arb_sel_r_reg[2] ;
  input \arb_gnt_r_reg[4] ;
  input \arb_gnt_r_reg[4]_0 ;
  input arb_busy_r;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \arb_gnt_r_reg[4]_1 ;
  input \arb_gnt_r[4]_i_2_0 ;
  input [0:0]m_int_tvalid;
  input \busy_r_reg[4]_2 ;
  input aclk;

  wire aclk;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r[4]_i_2_0 ;
  wire \arb_gnt_r[4]_i_3_n_0 ;
  wire \arb_gnt_r_reg[2] ;
  wire \arb_gnt_r_reg[4] ;
  wire \arb_gnt_r_reg[4]_0 ;
  wire \arb_gnt_r_reg[4]_1 ;
  wire \arb_sel_r[2]_i_7_n_0 ;
  wire \arb_sel_r[2]_i_8_n_0 ;
  wire \arb_sel_r_reg[2] ;
  wire \busy_r[1]_i_1_n_0 ;
  wire \busy_r[2]_i_1_n_0 ;
  wire \busy_r[4]_i_1_n_0 ;
  wire \busy_r_reg[1]_0 ;
  wire \busy_r_reg[1]_1 ;
  wire \busy_r_reg[1]_2 ;
  wire \busy_r_reg[2]_0 ;
  wire \busy_r_reg[2]_1 ;
  wire \busy_r_reg[2]_2 ;
  wire \busy_r_reg[2]_3 ;
  wire \busy_r_reg[4]_0 ;
  wire \busy_r_reg[4]_1 ;
  wire \busy_r_reg[4]_2 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire m_axis_tready;
  wire [0:0]m_int_tvalid;

  LUT6 #(
    .INIT(64'h55555554FFFFFFFF)) 
    \arb_gnt_r[1]_i_2 
       (.I0(\arb_gnt_r_reg[4]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .I2(\busy_r_reg[1]_1 ),
        .I3(\busy_r_reg[2]_0 ),
        .I4(arb_gnt_i[1]),
        .I5(arb_busy_r),
        .O(\busy_r_reg[1]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arb_gnt_r[2]_i_3 
       (.I0(\busy_r_reg[2]_0 ),
        .I1(\busy_r_reg[1]_1 ),
        .I2(\busy_r_reg[4]_1 ),
        .I3(arb_gnt_i[2]),
        .O(\busy_r_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0C0CEECC0C00AE00)) 
    \arb_gnt_r[4]_i_2 
       (.I0(\arb_gnt_r[4]_i_3_n_0 ),
        .I1(\arb_gnt_r_reg[4] ),
        .I2(arb_busy_r),
        .I3(\arb_gnt_r_reg[4]_1 ),
        .I4(\arb_gnt_r_reg[4]_0 ),
        .I5(arb_gnt_i[1]),
        .O(arb_busy_r_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBBBBBBB0)) 
    \arb_gnt_r[4]_i_3 
       (.I0(\arb_gnt_r[4]_i_2_0 ),
        .I1(m_int_tvalid),
        .I2(\busy_r_reg[2]_0 ),
        .I3(\busy_r_reg[1]_1 ),
        .I4(\busy_r_reg[4]_1 ),
        .I5(arb_gnt_i[0]),
        .O(\arb_gnt_r[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \arb_sel_r[1]_i_3 
       (.I0(\busy_r_reg[2]_0 ),
        .I1(\busy_r_reg[1]_1 ),
        .I2(\busy_r_reg[4]_1 ),
        .O(\busy_r_reg[2]_3 ));
  LUT6 #(
    .INIT(64'h008F0088AFAFAFAF)) 
    \arb_sel_r[2]_i_5 
       (.I0(\arb_sel_r_reg[2] ),
        .I1(\arb_sel_r[2]_i_7_n_0 ),
        .I2(\arb_gnt_r_reg[4] ),
        .I3(\arb_gnt_r_reg[4]_0 ),
        .I4(\arb_sel_r[2]_i_8_n_0 ),
        .I5(arb_busy_r),
        .O(arb_busy_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \arb_sel_r[2]_i_7 
       (.I0(\busy_r_reg[4]_1 ),
        .I1(\busy_r_reg[1]_1 ),
        .I2(\busy_r_reg[2]_0 ),
        .I3(arb_gnt_i[0]),
        .O(\arb_sel_r[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \arb_sel_r[2]_i_8 
       (.I0(arb_gnt_i[2]),
        .I1(\busy_r_reg[4]_1 ),
        .I2(\busy_r_reg[1]_1 ),
        .I3(\busy_r_reg[2]_0 ),
        .I4(arb_gnt_i[1]),
        .O(\arb_sel_r[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \busy_r[1]_i_1 
       (.I0(\busy_r_reg[1]_1 ),
        .I1(arb_gnt_i[0]),
        .I2(\busy_r_reg[4]_2 ),
        .O(\busy_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \busy_r[2]_i_1 
       (.I0(\busy_r_reg[2]_0 ),
        .I1(arb_gnt_i[1]),
        .I2(\busy_r_reg[4]_2 ),
        .O(\busy_r[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \busy_r[4]_i_1 
       (.I0(\busy_r_reg[4]_1 ),
        .I1(arb_gnt_i[2]),
        .I2(\busy_r_reg[4]_2 ),
        .O(\busy_r[4]_i_1_n_0 ));
  FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[1]_i_1_n_0 ),
        .Q(\busy_r_reg[1]_1 ),
        .R(1'b0));
  FDRE \busy_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[2]_i_1_n_0 ),
        .Q(\busy_r_reg[2]_0 ),
        .R(1'b0));
  FDRE \busy_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[4]_i_1_n_0 ),
        .Q(\busy_r_reg[4]_1 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAB)) 
    \gen_tdest_routing.busy_r[0]_i_2 
       (.I0(\arb_gnt_r_reg[4]_0 ),
        .I1(arb_gnt_i[1]),
        .I2(\busy_r_reg[2]_0 ),
        .I3(\busy_r_reg[1]_1 ),
        .I4(\gen_tdest_routing.busy_r_reg[0] ),
        .I5(arb_gnt_i[0]),
        .O(\arb_gnt_r_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \r0_out_sel_r[0]_i_2 
       (.I0(\busy_r_reg[1]_1 ),
        .I1(arb_gnt_i[0]),
        .I2(m_axis_tready),
        .O(\busy_r_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \r0_out_sel_r[0]_i_2__0 
       (.I0(\busy_r_reg[4]_1 ),
        .I1(arb_gnt_i[2]),
        .I2(m_axis_tready),
        .O(\busy_r_reg[4]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \r0_out_sel_r[0]_i_2__1 
       (.I0(\busy_r_reg[2]_0 ),
        .I1(arb_gnt_i[1]),
        .I2(m_axis_tready),
        .O(\busy_r_reg[2]_2 ));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    \state_reg[1] ,
    areset_r,
    \gen_tdest_routing.busy_ns ,
    aclk,
    m_int_tvalid,
    arb_gnt_i,
    \arb_gnt_r_reg[1] );
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output areset_r_reg;
  output \state_reg[1] ;
  input areset_r;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]m_int_tvalid;
  input [0:0]arb_gnt_i;
  input \arb_gnt_r_reg[1] ;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r_reg[1] ;
  wire areset_r;
  wire areset_r_reg;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire [0:0]m_int_tvalid;
  wire \state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \arb_gnt_r[1]_i_1 
       (.I0(areset_r),
        .I1(m_int_tvalid),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(arb_gnt_i),
        .I4(\arb_gnt_r_reg[1] ),
        .O(areset_r_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \arb_sel_r[2]_i_2 
       (.I0(m_int_tvalid),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(arb_gnt_i),
        .O(\state_reg[1] ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_4
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r_reg,
    \state_reg[1] ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    areset_r,
    \gen_tdest_routing.busy_ns ,
    aclk,
    m_int_tvalid,
    arb_gnt_i,
    \arb_gnt_r_reg[2] );
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output areset_r_reg;
  output \state_reg[1] ;
  output \gen_tdest_routing.busy_r_reg[0]_1 ;
  input areset_r;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]m_int_tvalid;
  input [0:0]arb_gnt_i;
  input \arb_gnt_r_reg[2] ;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r_reg[2] ;
  wire areset_r;
  wire areset_r_reg;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire [0:0]m_int_tvalid;
  wire \state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \arb_gnt_r[2]_i_1 
       (.I0(areset_r),
        .I1(m_int_tvalid),
        .I2(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I3(arb_gnt_i),
        .I4(\arb_gnt_r_reg[2] ),
        .O(areset_r_reg));
  LUT2 #(
    .INIT(4'hB)) 
    \arb_gnt_r[4]_i_4 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(m_int_tvalid),
        .O(\gen_tdest_routing.busy_r_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \arb_sel_r[2]_i_4 
       (.I0(m_int_tvalid),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(arb_gnt_i),
        .O(\state_reg[1] ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder_5
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    \state_reg[1] ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    areset_r,
    \gen_tdest_routing.busy_ns ,
    aclk,
    m_int_tvalid,
    arb_gnt_i,
    \arb_gnt_r_reg[4] );
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  output \state_reg[1] ;
  output \gen_tdest_routing.busy_r_reg[0]_1 ;
  input areset_r;
  input \gen_tdest_routing.busy_ns ;
  input aclk;
  input [0:0]m_int_tvalid;
  input [0:0]arb_gnt_i;
  input \arb_gnt_r_reg[4] ;

  wire aclk;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r_reg[4] ;
  wire areset_r;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire [0:0]m_int_tvalid;
  wire \state_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \arb_gnt_r[4]_i_1 
       (.I0(m_int_tvalid),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(arb_gnt_i),
        .I3(areset_r),
        .I4(\arb_gnt_r_reg[4] ),
        .O(\state_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \arb_sel_r[2]_i_3 
       (.I0(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I1(m_int_tvalid),
        .I2(arb_gnt_i),
        .O(\gen_tdest_routing.busy_r_reg[0]_1 ));
  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_decoder__parameterized0
   (\gen_tdest_routing.decode_err_r_reg_0 ,
    areset_r,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output \gen_tdest_routing.decode_err_r_reg_0 ;
  input areset_r;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire aclk;
  wire areset_r;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_reg_0 ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT5 #(
    .INIT(32'h54000000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(\gen_tdest_routing.decode_err_r_reg_0 ),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[1]),
        .I3(s_axis_tvalid),
        .I4(s_axis_tid[2]),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(\gen_tdest_routing.decode_err_r_reg_0 ),
        .R(areset_r));
endmodule

module design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_transfer_mux
   (m_axis_tdata,
    m_axis_tkeep,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    m_axis_tid,
    o_i,
    \busy_r_reg[1] ,
    \gen_tdest_router.busy_r ,
    \busy_r_reg[4] ,
    arb_busy_r_reg,
    m_axis_tready_0,
    arb_busy_r_reg_0,
    \busy_r_reg[1]_0 ,
    \gen_tdest_routing.busy_ns ,
    \arb_gnt_r_reg[2] ,
    \gen_tdest_routing.busy_ns_0 ,
    \gen_tdest_routing.busy_ns_1 ,
    \busy_r_reg[2] ,
    arb_busy_r_reg_1,
    \busy_r_reg[2]_0 ,
    arb_sel_i,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ,
    m_int_tdata,
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ,
    f_mux4_return,
    m_int_tkeep,
    last_out1,
    \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst ,
    f_mux40_return,
    m_int_tvalid,
    arb_gnt_i,
    m_axis_tready,
    arb_busy_r,
    \gen_tdest_routing.busy_r_reg[0] ,
    \arb_sel_r_reg[2] ,
    \arb_gnt_r_reg[4] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    \gen_tdest_routing.busy_r_reg[0]_1 ,
    \gen_tdest_routing.busy_r_reg[0]_2 ,
    \busy_r_reg[4]_0 ,
    areset_r,
    \arb_gnt_r_reg[4]_0 ,
    aclk);
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  output [2:0]m_axis_tid;
  output o_i;
  output \busy_r_reg[1] ;
  output [2:0]\gen_tdest_router.busy_r ;
  output \busy_r_reg[4] ;
  output arb_busy_r_reg;
  output m_axis_tready_0;
  output arb_busy_r_reg_0;
  output \busy_r_reg[1]_0 ;
  output \gen_tdest_routing.busy_ns ;
  output \arb_gnt_r_reg[2] ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \gen_tdest_routing.busy_ns_1 ;
  output \busy_r_reg[2] ;
  output arb_busy_r_reg_1;
  output \busy_r_reg[2]_0 ;
  input [0:0]arb_sel_i;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  input [4:0]m_int_tdata;
  input \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  input [0:0]f_mux4_return;
  input [0:0]m_int_tkeep;
  input last_out1;
  input [1:0]\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst ;
  input f_mux40_return;
  input [1:0]m_int_tvalid;
  input [2:0]arb_gnt_i;
  input m_axis_tready;
  input arb_busy_r;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \arb_sel_r_reg[2] ;
  input \arb_gnt_r_reg[4] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input \gen_tdest_routing.busy_r_reg[0]_1 ;
  input \gen_tdest_routing.busy_r_reg[0]_2 ;
  input \busy_r_reg[4]_0 ;
  input areset_r;
  input \arb_gnt_r_reg[4]_0 ;
  input aclk;

  wire aclk;
  wire arb_busy_r;
  wire arb_busy_r_reg;
  wire arb_busy_r_reg_0;
  wire arb_busy_r_reg_1;
  wire [2:0]arb_gnt_i;
  wire \arb_gnt_r_reg[2] ;
  wire \arb_gnt_r_reg[4] ;
  wire \arb_gnt_r_reg[4]_0 ;
  wire [0:0]arb_sel_i;
  wire \arb_sel_r_reg[2] ;
  wire areset_r;
  wire \busy_r_reg[1] ;
  wire \busy_r_reg[1]_0 ;
  wire \busy_r_reg[2] ;
  wire \busy_r_reg[2]_0 ;
  wire \busy_r_reg[4] ;
  wire \busy_r_reg[4]_0 ;
  wire f_mux40_return;
  wire [0:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  wire [1:0]\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ;
  wire \gen_tdest_router.axisc_arb_responder_n_7 ;
  wire [2:0]\gen_tdest_router.busy_r ;
  wire \gen_tdest_router.mux_enc_0_n_45 ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_ns_1 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire \gen_tdest_routing.busy_r_reg[0]_1 ;
  wire \gen_tdest_routing.busy_r_reg[0]_2 ;
  wire last_out1;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tready;
  wire m_axis_tready_0;
  wire [4:0]m_int_tdata;
  wire [0:0]m_int_tkeep;
  wire [1:0]m_int_tvalid;
  wire o_i;

  design_1_axi_mm2s_mapper_1_1_axis_switch_v1_1_26_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.aclk(aclk),
        .arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg_0),
        .arb_busy_r_reg_0(arb_busy_r_reg_1),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r[4]_i_2_0 (\gen_tdest_routing.busy_r_reg[0] ),
        .\arb_gnt_r_reg[2] (\arb_gnt_r_reg[2] ),
        .\arb_gnt_r_reg[4] (\arb_gnt_r_reg[4] ),
        .\arb_gnt_r_reg[4]_0 (m_axis_tready_0),
        .\arb_gnt_r_reg[4]_1 (\arb_gnt_r_reg[4]_0 ),
        .\arb_sel_r_reg[2] (\arb_sel_r_reg[2] ),
        .\busy_r_reg[1]_0 (\busy_r_reg[1] ),
        .\busy_r_reg[1]_1 (\gen_tdest_router.busy_r [0]),
        .\busy_r_reg[1]_2 (\busy_r_reg[1]_0 ),
        .\busy_r_reg[2]_0 (\gen_tdest_router.busy_r [1]),
        .\busy_r_reg[2]_1 (\gen_tdest_router.axisc_arb_responder_n_7 ),
        .\busy_r_reg[2]_2 (\busy_r_reg[2] ),
        .\busy_r_reg[2]_3 (\busy_r_reg[2]_0 ),
        .\busy_r_reg[4]_0 (\busy_r_reg[4] ),
        .\busy_r_reg[4]_1 (\gen_tdest_router.busy_r [2]),
        .\busy_r_reg[4]_2 (\gen_tdest_router.mux_enc_0_n_45 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .m_axis_tready(m_axis_tready),
        .m_int_tvalid(m_int_tvalid[0]));
  design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc \gen_tdest_router.mux_enc_0 
       (.arb_busy_r(arb_busy_r),
        .arb_busy_r_reg(arb_busy_r_reg),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[2] (\gen_tdest_router.axisc_arb_responder_n_7 ),
        .arb_sel_i(arb_sel_i),
        .areset_r(areset_r),
        .\busy_r_reg[4] (\busy_r_reg[4]_0 ),
        .f_mux4_return(f_mux4_return),
        .\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_1 (\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_1 (\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_1 (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ),
        .\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_1 (\gen_tdest_routing.busy_ns_1 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (o_i),
        .\gen_tdest_routing.busy_r_reg[0]_1 (\gen_tdest_routing.busy_r_reg[0]_1 ),
        .\gen_tdest_routing.busy_r_reg[0]_2 (\arb_gnt_r_reg[2] ),
        .\gen_tdest_routing.busy_r_reg[0]_3 (\gen_tdest_routing.busy_r_reg[0]_2 ),
        .last_out1(last_out1),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tready(m_axis_tready),
        .m_axis_tready_0(m_axis_tready_0),
        .m_axis_tready_1(\gen_tdest_router.mux_enc_0_n_45 ),
        .m_int_tdata(m_int_tdata),
        .m_int_tkeep(m_int_tkeep),
        .m_int_tvalid(m_int_tvalid[0]));
  design_1_axi_mm2s_mapper_1_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0 \gen_tdest_router.mux_enc_1 
       (.arb_sel_i(arb_sel_i),
        .f_mux40_return(f_mux40_return),
        .m_int_tvalid(m_int_tvalid[1]),
        .o_i(o_i));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_axi_mm2s_mapper_0_1,axi_mm2s_mapper_v1_1_25_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mm2s_mapper_v1_1_25_top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_axi_mm2s_mapper_1_1
   (aclk,
    aresetn,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS:M_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TKEEP" *) input [3:0]s_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [2:0]s_axis_tid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TKEEP" *) output [3:0]m_axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [2:0]m_axis_tid;

  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_m_axi_arvalid_UNCONNECTED;
  wire NLW_inst_m_axi_awvalid_UNCONNECTED;
  wire NLW_inst_m_axi_bready_UNCONNECTED;
  wire NLW_inst_m_axi_rready_UNCONNECTED;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire NLW_inst_m_axi_wvalid_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [31:0]NLW_inst_m_axi_wdata_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXIS_TDATA_WIDTH = "32" *) 
  (* C_AXIS_TID_WIDTH = "3" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_REGION_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "zynq" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* G_AXI_ARADDR_INDEX = "0" *) 
  (* G_AXI_ARADDR_WIDTH = "32" *) 
  (* G_AXI_ARBURST_INDEX = "38" *) 
  (* G_AXI_ARBURST_WIDTH = "2" *) 
  (* G_AXI_ARCACHE_INDEX = "40" *) 
  (* G_AXI_ARCACHE_WIDTH = "4" *) 
  (* G_AXI_ARID_INDEX = "53" *) 
  (* G_AXI_ARID_WIDTH = "1" *) 
  (* G_AXI_ARLEN_INDEX = "44" *) 
  (* G_AXI_ARLEN_WIDTH = "8" *) 
  (* G_AXI_ARLOCK_INDEX = "52" *) 
  (* G_AXI_ARLOCK_WIDTH = "1" *) 
  (* G_AXI_ARPAYLOAD_WIDTH = "58" *) 
  (* G_AXI_ARPROT_INDEX = "32" *) 
  (* G_AXI_ARPROT_WIDTH = "3" *) 
  (* G_AXI_ARQOS_INDEX = "54" *) 
  (* G_AXI_ARQOS_WIDTH = "4" *) 
  (* G_AXI_ARREGION_INDEX = "58" *) 
  (* G_AXI_ARREGION_WIDTH = "0" *) 
  (* G_AXI_ARSIZE_INDEX = "35" *) 
  (* G_AXI_ARSIZE_WIDTH = "3" *) 
  (* G_AXI_ARUSER_INDEX = "58" *) 
  (* G_AXI_ARUSER_WIDTH = "0" *) 
  (* G_AXI_AWADDR_INDEX = "0" *) 
  (* G_AXI_AWADDR_WIDTH = "32" *) 
  (* G_AXI_AWBURST_INDEX = "38" *) 
  (* G_AXI_AWBURST_WIDTH = "2" *) 
  (* G_AXI_AWCACHE_INDEX = "40" *) 
  (* G_AXI_AWCACHE_WIDTH = "4" *) 
  (* G_AXI_AWID_INDEX = "53" *) 
  (* G_AXI_AWID_WIDTH = "1" *) 
  (* G_AXI_AWLEN_INDEX = "44" *) 
  (* G_AXI_AWLEN_WIDTH = "8" *) 
  (* G_AXI_AWLOCK_INDEX = "52" *) 
  (* G_AXI_AWLOCK_WIDTH = "1" *) 
  (* G_AXI_AWPAYLOAD_WIDTH = "58" *) 
  (* G_AXI_AWPROT_INDEX = "32" *) 
  (* G_AXI_AWPROT_WIDTH = "3" *) 
  (* G_AXI_AWQOS_INDEX = "54" *) 
  (* G_AXI_AWQOS_WIDTH = "4" *) 
  (* G_AXI_AWREGION_INDEX = "58" *) 
  (* G_AXI_AWREGION_WIDTH = "0" *) 
  (* G_AXI_AWSIZE_INDEX = "35" *) 
  (* G_AXI_AWSIZE_WIDTH = "3" *) 
  (* G_AXI_AWUSER_INDEX = "58" *) 
  (* G_AXI_AWUSER_WIDTH = "0" *) 
  (* G_AXI_BID_INDEX = "2" *) 
  (* G_AXI_BID_WIDTH = "1" *) 
  (* G_AXI_BPAYLOAD_WIDTH = "3" *) 
  (* G_AXI_BRESP_INDEX = "0" *) 
  (* G_AXI_BRESP_WIDTH = "2" *) 
  (* G_AXI_BUSER_INDEX = "3" *) 
  (* G_AXI_BUSER_WIDTH = "0" *) 
  (* G_AXI_RDATA_INDEX = "0" *) 
  (* G_AXI_RDATA_WIDTH = "32" *) 
  (* G_AXI_RID_INDEX = "35" *) 
  (* G_AXI_RID_WIDTH = "1" *) 
  (* G_AXI_RLAST_INDEX = "34" *) 
  (* G_AXI_RLAST_WIDTH = "1" *) 
  (* G_AXI_RPAYLOAD_WIDTH = "36" *) 
  (* G_AXI_RRESP_INDEX = "32" *) 
  (* G_AXI_RRESP_WIDTH = "2" *) 
  (* G_AXI_RUSER_INDEX = "36" *) 
  (* G_AXI_RUSER_WIDTH = "0" *) 
  (* G_AXI_WDATA_INDEX = "0" *) 
  (* G_AXI_WDATA_WIDTH = "32" *) 
  (* G_AXI_WID_INDEX = "37" *) 
  (* G_AXI_WID_WIDTH = "0" *) 
  (* G_AXI_WLAST_INDEX = "36" *) 
  (* G_AXI_WLAST_WIDTH = "1" *) 
  (* G_AXI_WPAYLOAD_WIDTH = "37" *) 
  (* G_AXI_WSTRB_INDEX = "32" *) 
  (* G_AXI_WSTRB_WIDTH = "4" *) 
  (* G_AXI_WUSER_INDEX = "37" *) 
  (* G_AXI_WUSER_WIDTH = "0" *) 
  (* LP_AR_TDEST = "3'b010" *) 
  (* LP_AW_TDEST = "3'b001" *) 
  (* LP_B_TDEST = "3'b000" *) 
  (* LP_LOG_M_AX_FIFO_DEPTH = "4" *) 
  (* LP_M_AX_FIFO_DEPTH = "16" *) 
  (* LP_R_TDEST = "3'b011" *) 
  (* LP_W_TDEST = "3'b100" *) 
  design_1_axi_mm2s_mapper_1_1_axi_mm2s_mapper_v1_1_25_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(NLW_inst_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_inst_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_inst_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_inst_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_inst_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_inst_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_inst_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b1),
        .m_axi_rready(NLW_inst_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_inst_m_axi_wdata_UNCONNECTED[31:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_inst_m_axi_wstrb_UNCONNECTED[3:0]),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_inst_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(1'b0),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(1'b0),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
