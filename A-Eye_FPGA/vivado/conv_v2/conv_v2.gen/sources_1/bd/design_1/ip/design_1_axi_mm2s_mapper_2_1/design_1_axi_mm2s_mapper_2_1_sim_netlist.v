// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Mon Jul 18 13:46:48 2022
// Host        : L-C5H16J3 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/rolland/Documents/GIT/A-Eye/A-Eye_FPGA/vivado_project/conv_v2/conv_v2.gen/sources_1/bd/design_1/ip/design_1_axi_mm2s_mapper_2_1/design_1_axi_mm2s_mapper_2_1_sim_netlist.v
// Design      : design_1_axi_mm2s_mapper_2_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_mm2s_mapper_2_1,axi_mm2s_mapper_v1_1_25_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mm2s_mapper_v1_1_25_top,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module design_1_axi_mm2s_mapper_2_1
   (aclk,
    aresetn,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF M_AXIS:S_AXIS:M_AXI:S_AXI, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_2_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;
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
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_s_axi_arready_UNCONNECTED;
  wire NLW_inst_s_axi_awready_UNCONNECTED;
  wire NLW_inst_s_axi_bvalid_UNCONNECTED;
  wire NLW_inst_s_axi_rlast_UNCONNECTED;
  wire NLW_inst_s_axi_rvalid_UNCONNECTED;
  wire NLW_inst_s_axi_wready_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [31:0]NLW_inst_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_rresp_UNCONNECTED;
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
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(1'b0),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(1'b0),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_inst_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_inst_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_inst_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_inst_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_inst_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_inst_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_inst_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_inst_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_inst_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_inst_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b1),
        .s_axi_wready(NLW_inst_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tkeep({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo
   (m_bpayload_i,
    areset_r1,
    SS,
    m_axi_bvalid_i,
    s_ready_reg_0,
    m_axi_bresp,
    aclk,
    m_axis_tready,
    \gen_tdest_router.busy_r ,
    arb_gnt_i,
    m_axi_bvalid,
    fifo_index25_out,
    aresetn);
  output [2:0]m_bpayload_i;
  output areset_r1;
  output [0:0]SS;
  output m_axi_bvalid_i;
  output s_ready_reg_0;
  input [1:0]m_axi_bresp;
  input aclk;
  input m_axis_tready;
  input [0:0]\gen_tdest_router.busy_r ;
  input [0:0]arb_gnt_i;
  input m_axi_bvalid;
  input fifo_index25_out;
  input aresetn;

  wire [0:0]SS;
  wire aclk;
  wire [0:0]arb_gnt_i;
  wire areset_r1;
  wire aresetn;
  wire fifo_index1__0;
  wire fifo_index25_out;
  wire \fifo_index[0]_i_1_n_0 ;
  wire \fifo_index[1]_i_1_n_0 ;
  wire \fifo_index[2]_i_1_n_0 ;
  wire \fifo_index[3]_i_1_n_0 ;
  wire \fifo_index[3]_i_2_n_0 ;
  wire [3:0]fifo_index_reg;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_bvalid_i;
  wire m_axis_tready;
  wire [2:0]m_bpayload_i;
  wire m_valid_i_1_n_0;
  wire m_valid_i_2_n_0;
  wire push;
  wire s_ready_i_1_n_0;
  wire s_ready_i_2_n_0;
  wire s_ready_reg_0;

  LUT1 #(
    .INIT(2'h1)) 
    areset_r1_i_1
       (.I0(aresetn),
        .O(SS));
  FDRE areset_r1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SS),
        .Q(areset_r1),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1 
       (.I0(fifo_index_reg[0]),
        .O(\fifo_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \fifo_index[1]_i_1 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index25_out),
        .O(\fifo_index[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \fifo_index[2]_i_1 
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .O(\fifo_index[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h777F888088808880)) 
    \fifo_index[3]_i_1 
       (.I0(m_axis_tready),
        .I1(m_axi_bvalid_i),
        .I2(\gen_tdest_router.busy_r ),
        .I3(arb_gnt_i),
        .I4(m_axi_bvalid),
        .I5(s_ready_reg_0),
        .O(\fifo_index[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \fifo_index[3]_i_2 
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .I4(fifo_index_reg[2]),
        .O(\fifo_index[3]_i_2_n_0 ));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[0]_i_1_n_0 ),
        .Q(fifo_index_reg[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[1]_i_1_n_0 ),
        .Q(fifo_index_reg[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[2]_i_1_n_0 ),
        .Q(fifo_index_reg[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1_n_0 ),
        .D(\fifo_index[3]_i_2_n_0 ),
        .Q(fifo_index_reg[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_bresp[0]),
        .Q(m_bpayload_i[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_data_bit[0].u_srl_fifo_i_1 
       (.I0(s_ready_reg_0),
        .I1(m_axi_bvalid),
        .O(push));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_axi_bresp[1]),
        .Q(m_bpayload_i[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_b/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(1'b0),
        .Q(m_bpayload_i[2]));
  LUT6 #(
    .INIT(64'hFF00FE00FF00FF00)) 
    m_valid_i_1
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(m_valid_i_2_n_0),
        .I4(fifo_index_reg[2]),
        .I5(fifo_index1__0),
        .O(m_valid_i_1_n_0));
  LUT3 #(
    .INIT(8'hE0)) 
    m_valid_i_2
       (.I0(m_axi_bvalid_i),
        .I1(fifo_index25_out),
        .I2(aresetn),
        .O(m_valid_i_2_n_0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1_n_0),
        .Q(m_axi_bvalid_i),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF3FFA200000000)) 
    s_ready_i_1
       (.I0(s_ready_reg_0),
        .I1(fifo_index_reg[2]),
        .I2(s_ready_i_2_n_0),
        .I3(areset_r1),
        .I4(fifo_index1__0),
        .I5(aresetn),
        .O(s_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    s_ready_i_2
       (.I0(fifo_index25_out),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(fifo_index_reg[3]),
        .O(s_ready_i_2_n_0));
  LUT6 #(
    .INIT(64'h7770000000000000)) 
    s_ready_i_3
       (.I0(s_ready_reg_0),
        .I1(m_axi_bvalid),
        .I2(arb_gnt_i),
        .I3(\gen_tdest_router.busy_r ),
        .I4(m_axi_bvalid_i),
        .I5(m_axis_tready),
        .O(fifo_index1__0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1_n_0),
        .Q(s_ready_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0
   (m_axi_araddr,
    m_axi_arprot,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arcache,
    m_axi_arlen,
    m_axi_arlock,
    m_axi_arqos,
    m_valid_reg_0,
    m_axi_arready_i,
    m_arpayload_i,
    aclk,
    m_axi_arready,
    Q,
    aresetn,
    areset_r1,
    SS);
  output [31:0]m_axi_araddr;
  output [2:0]m_axi_arprot;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [3:0]m_axi_arcache;
  output [7:0]m_axi_arlen;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arqos;
  output m_valid_reg_0;
  output m_axi_arready_i;
  input [56:0]m_arpayload_i;
  input aclk;
  input m_axi_arready;
  input [0:0]Q;
  input aresetn;
  input areset_r1;
  input [0:0]SS;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_r1;
  wire aresetn;
  wire fifo_index1__0;
  wire fifo_index25_out;
  wire \fifo_index[0]_i_1__1_n_0 ;
  wire \fifo_index[1]_i_1__1_n_0 ;
  wire \fifo_index[2]_i_1__1_n_0 ;
  wire \fifo_index[3]_i_1__1_n_0 ;
  wire \fifo_index[3]_i_2__1_n_0 ;
  wire [3:0]fifo_index_reg;
  wire [56:0]m_arpayload_i;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire m_axi_arready_i;
  wire [2:0]m_axi_arsize;
  wire m_valid_i_1__1_n_0;
  wire m_valid_i_2__1_n_0;
  wire m_valid_reg_0;
  wire push;
  wire s_ready_i_1__1_n_0;
  wire s_ready_i_2__1_n_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1__1 
       (.I0(fifo_index_reg[0]),
        .O(\fifo_index[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h9999699969996999)) 
    \fifo_index[1]_i_1__1 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .I2(Q),
        .I3(m_axi_arready_i),
        .I4(m_valid_reg_0),
        .I5(m_axi_arready),
        .O(\fifo_index[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \fifo_index[2]_i_1__1 
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .O(\fifo_index[2]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \fifo_index[3]_i_1__1 
       (.I0(m_valid_reg_0),
        .I1(m_axi_arready),
        .I2(Q),
        .I3(m_axi_arready_i),
        .O(\fifo_index[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \fifo_index[3]_i_2__1 
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .I4(fifo_index_reg[2]),
        .O(\fifo_index[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \fifo_index[3]_i_3__1 
       (.I0(m_axi_arready),
        .I1(m_valid_reg_0),
        .I2(m_axi_arready_i),
        .I3(Q),
        .O(fifo_index25_out));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[0]_i_1__1_n_0 ),
        .Q(fifo_index_reg[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[1]_i_1__1_n_0 ),
        .Q(fifo_index_reg[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[2]_i_1__1_n_0 ),
        .Q(fifo_index_reg[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__1_n_0 ),
        .D(\fifo_index[3]_i_2__1_n_0 ),
        .Q(fifo_index_reg[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[0]),
        .Q(m_axi_araddr[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[10].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[10].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[10]),
        .Q(m_axi_araddr[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[11].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[11].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[11]),
        .Q(m_axi_araddr[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[12].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[12].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[12]),
        .Q(m_axi_araddr[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[13].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[13].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[13]),
        .Q(m_axi_araddr[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[14].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[14].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[14]),
        .Q(m_axi_araddr[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[15].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[15].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[15]),
        .Q(m_axi_araddr[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[16].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[16].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[16]),
        .Q(m_axi_araddr[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[17].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[17].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[17]),
        .Q(m_axi_araddr[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[18].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[18].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[18]),
        .Q(m_axi_araddr[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[19].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[19].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[19]),
        .Q(m_axi_araddr[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[1]),
        .Q(m_axi_araddr[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[20].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[20].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[20]),
        .Q(m_axi_araddr[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[21].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[21].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[21]),
        .Q(m_axi_araddr[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[22].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[22].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[22]),
        .Q(m_axi_araddr[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[23].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[23].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[23]),
        .Q(m_axi_araddr[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[24].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[24].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[24]),
        .Q(m_axi_araddr[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[25].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[25].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[25]),
        .Q(m_axi_araddr[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[26].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[26].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[26]),
        .Q(m_axi_araddr[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[27].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[27].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[27]),
        .Q(m_axi_araddr[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[28].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[28].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[28]),
        .Q(m_axi_araddr[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[29].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[29].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[29]),
        .Q(m_axi_araddr[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[2]),
        .Q(m_axi_araddr[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[30].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[30].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[30]),
        .Q(m_axi_araddr[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[31].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[31].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[31]),
        .Q(m_axi_araddr[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_data_bit[31].u_srl_fifo_i_1__0 
       (.I0(m_axi_arready_i),
        .I1(Q),
        .O(push));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[32].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[32].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[32]),
        .Q(m_axi_arprot[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[33].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[33].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[33]),
        .Q(m_axi_arprot[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[34].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[34].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[34]),
        .Q(m_axi_arprot[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[35].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[35].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[35]),
        .Q(m_axi_arsize[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[36].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[36].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[36]),
        .Q(m_axi_arsize[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[37].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[37].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[37]),
        .Q(m_axi_arsize[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[38].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[38].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[38]),
        .Q(m_axi_arburst[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[39].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[39].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[39]),
        .Q(m_axi_arburst[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[3].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[3].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[3]),
        .Q(m_axi_araddr[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[40].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[40].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[40]),
        .Q(m_axi_arcache[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[41].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[41].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[41]),
        .Q(m_axi_arcache[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[42].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[42].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[42]),
        .Q(m_axi_arcache[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[43].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[43].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[43]),
        .Q(m_axi_arcache[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[44].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[44].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[44]),
        .Q(m_axi_arlen[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[45].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[45].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[45]),
        .Q(m_axi_arlen[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[46].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[46].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[46]),
        .Q(m_axi_arlen[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[47].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[47].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[47]),
        .Q(m_axi_arlen[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[48].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[48].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[48]),
        .Q(m_axi_arlen[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[49].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[49].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[49]),
        .Q(m_axi_arlen[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[4].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[4].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[4]),
        .Q(m_axi_araddr[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[50].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[50].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[50]),
        .Q(m_axi_arlen[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[51].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[51].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[51]),
        .Q(m_axi_arlen[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[52].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[52].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[52]),
        .Q(m_axi_arlock));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[54].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[54].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[53]),
        .Q(m_axi_arqos[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[55].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[55].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[54]),
        .Q(m_axi_arqos[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[56].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[56].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[55]),
        .Q(m_axi_arqos[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[57].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[57].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[56]),
        .Q(m_axi_arqos[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[5].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[5].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[5]),
        .Q(m_axi_araddr[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[6].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[6].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[6]),
        .Q(m_axi_araddr[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[7].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[7].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[7]),
        .Q(m_axi_araddr[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[8].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[8].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[8]),
        .Q(m_axi_araddr[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar/gen_data_bit[9].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[9].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_arpayload_i[9]),
        .Q(m_axi_araddr[9]));
  LUT6 #(
    .INIT(64'hFF00FE00FF00FF00)) 
    m_valid_i_1__1
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(m_valid_i_2__1_n_0),
        .I4(fifo_index_reg[2]),
        .I5(fifo_index1__0),
        .O(m_valid_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hEA00)) 
    m_valid_i_2__1
       (.I0(m_valid_reg_0),
        .I1(m_axi_arready_i),
        .I2(Q),
        .I3(aresetn),
        .O(m_valid_i_2__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    m_valid_i_3__0
       (.I0(m_axi_arready_i),
        .I1(Q),
        .I2(m_axi_arready),
        .I3(m_valid_reg_0),
        .O(fifo_index1__0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1__1_n_0),
        .Q(m_valid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF3FFA200000000)) 
    s_ready_i_1__1
       (.I0(m_axi_arready_i),
        .I1(fifo_index_reg[2]),
        .I2(s_ready_i_2__1_n_0),
        .I3(areset_r1),
        .I4(fifo_index1__0),
        .I5(aresetn),
        .O(s_ready_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    s_ready_i_2__1
       (.I0(fifo_index25_out),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(fifo_index_reg[3]),
        .O(s_ready_i_2__1_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1__1_n_0),
        .Q(m_axi_arready_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_infrastructure_v1_1_0_axic_srl_fifo" *) 
module design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0
   (m_axi_awaddr,
    m_axi_awprot,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awcache,
    m_axi_awlen,
    m_axi_awlock,
    m_axi_awqos,
    m_valid_reg_0,
    m_axi_awready_i,
    m_awpayload_i,
    aclk,
    m_axi_awready,
    Q,
    aresetn,
    areset_r1,
    SS);
  output [31:0]m_axi_awaddr;
  output [2:0]m_axi_awprot;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [3:0]m_axi_awcache;
  output [7:0]m_axi_awlen;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awqos;
  output m_valid_reg_0;
  output m_axi_awready_i;
  input [56:0]m_awpayload_i;
  input aclk;
  input m_axi_awready;
  input [0:0]Q;
  input aresetn;
  input areset_r1;
  input [0:0]SS;

  wire [0:0]Q;
  wire [0:0]SS;
  wire aclk;
  wire areset_r1;
  wire aresetn;
  wire fifo_index1__0;
  wire fifo_index25_out;
  wire \fifo_index[0]_i_1__0_n_0 ;
  wire \fifo_index[1]_i_1__0_n_0 ;
  wire \fifo_index[2]_i_1__0_n_0 ;
  wire \fifo_index[3]_i_1__0_n_0 ;
  wire \fifo_index[3]_i_2__0_n_0 ;
  wire [3:0]fifo_index_reg;
  wire [56:0]m_awpayload_i;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire m_axi_awready_i;
  wire [2:0]m_axi_awsize;
  wire m_valid_i_1__0_n_0;
  wire m_valid_i_2__0_n_0;
  wire m_valid_reg_0;
  wire push;
  wire s_ready_i_1__0_n_0;
  wire s_ready_i_2__0_n_0;

  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \fifo_index[0]_i_1__0 
       (.I0(fifo_index_reg[0]),
        .O(\fifo_index[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9999699969996999)) 
    \fifo_index[1]_i_1__0 
       (.I0(fifo_index_reg[1]),
        .I1(fifo_index_reg[0]),
        .I2(Q),
        .I3(m_axi_awready_i),
        .I4(m_valid_reg_0),
        .I5(m_axi_awready),
        .O(\fifo_index[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \fifo_index[2]_i_1__0 
       (.I0(fifo_index_reg[2]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .O(\fifo_index[2]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7888)) 
    \fifo_index[3]_i_1__0 
       (.I0(m_valid_reg_0),
        .I1(m_axi_awready),
        .I2(Q),
        .I3(m_axi_awready_i),
        .O(\fifo_index[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \fifo_index[3]_i_2__0 
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[1]),
        .I2(fifo_index_reg[0]),
        .I3(fifo_index25_out),
        .I4(fifo_index_reg[2]),
        .O(\fifo_index[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    \fifo_index[3]_i_3__0 
       (.I0(m_axi_awready),
        .I1(m_valid_reg_0),
        .I2(m_axi_awready_i),
        .I3(Q),
        .O(fifo_index25_out));
  FDSE \fifo_index_reg[0] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[0]_i_1__0_n_0 ),
        .Q(fifo_index_reg[0]),
        .S(SS));
  FDSE \fifo_index_reg[1] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[1]_i_1__0_n_0 ),
        .Q(fifo_index_reg[1]),
        .S(SS));
  FDSE \fifo_index_reg[2] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[2]_i_1__0_n_0 ),
        .Q(fifo_index_reg[2]),
        .S(SS));
  FDSE \fifo_index_reg[3] 
       (.C(aclk),
        .CE(\fifo_index[3]_i_1__0_n_0 ),
        .D(\fifo_index[3]_i_2__0_n_0 ),
        .Q(fifo_index_reg[3]),
        .S(SS));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[0].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[0].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[0]),
        .Q(m_axi_awaddr[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[10].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[10].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[10]),
        .Q(m_axi_awaddr[10]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[11].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[11].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[11]),
        .Q(m_axi_awaddr[11]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[12].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[12].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[12]),
        .Q(m_axi_awaddr[12]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[13].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[13].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[13]),
        .Q(m_axi_awaddr[13]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[14].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[14].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[14]),
        .Q(m_axi_awaddr[14]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[15].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[15].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[15]),
        .Q(m_axi_awaddr[15]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[16].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[16].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[16]),
        .Q(m_axi_awaddr[16]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[17].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[17].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[17]),
        .Q(m_axi_awaddr[17]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[18].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[18].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[18]),
        .Q(m_axi_awaddr[18]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[19].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[19].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[19]),
        .Q(m_axi_awaddr[19]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[1].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[1].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[1]),
        .Q(m_axi_awaddr[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[20].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[20].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[20]),
        .Q(m_axi_awaddr[20]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[21].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[21].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[21]),
        .Q(m_axi_awaddr[21]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[22].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[22].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[22]),
        .Q(m_axi_awaddr[22]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[23].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[23].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[23]),
        .Q(m_axi_awaddr[23]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[24].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[24].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[24]),
        .Q(m_axi_awaddr[24]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[25].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[25].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[25]),
        .Q(m_axi_awaddr[25]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[26].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[26].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[26]),
        .Q(m_axi_awaddr[26]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[27].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[27].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[27]),
        .Q(m_axi_awaddr[27]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[28].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[28].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[28]),
        .Q(m_axi_awaddr[28]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[29].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[29].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[29]),
        .Q(m_axi_awaddr[29]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[2].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[2].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[2]),
        .Q(m_axi_awaddr[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[30].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[30].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[30]),
        .Q(m_axi_awaddr[30]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[31].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[31].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[31]),
        .Q(m_axi_awaddr[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_data_bit[31].u_srl_fifo_i_1 
       (.I0(m_axi_awready_i),
        .I1(Q),
        .O(push));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[32].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[32].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[32]),
        .Q(m_axi_awprot[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[33].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[33].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[33]),
        .Q(m_axi_awprot[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[34].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[34].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[34]),
        .Q(m_axi_awprot[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[35].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[35].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[35]),
        .Q(m_axi_awsize[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[36].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[36].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[36]),
        .Q(m_axi_awsize[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[37].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[37].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[37]),
        .Q(m_axi_awsize[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[38].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[38].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[38]),
        .Q(m_axi_awburst[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[39].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[39].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[39]),
        .Q(m_axi_awburst[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[3].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[3].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[3]),
        .Q(m_axi_awaddr[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[40].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[40].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[40]),
        .Q(m_axi_awcache[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[41].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[41].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[41]),
        .Q(m_axi_awcache[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[42].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[42].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[42]),
        .Q(m_axi_awcache[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[43].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[43].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[43]),
        .Q(m_axi_awcache[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[44].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[44].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[44]),
        .Q(m_axi_awlen[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[45].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[45].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[45]),
        .Q(m_axi_awlen[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[46].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[46].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[46]),
        .Q(m_axi_awlen[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[47].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[47].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[47]),
        .Q(m_axi_awlen[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[48].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[48].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[48]),
        .Q(m_axi_awlen[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[49].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[49].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[49]),
        .Q(m_axi_awlen[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[4].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[4].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[4]),
        .Q(m_axi_awaddr[4]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[50].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[50].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[50]),
        .Q(m_axi_awlen[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[51].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[51].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[51]),
        .Q(m_axi_awlen[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[52].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[52].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[52]),
        .Q(m_axi_awlock));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[54].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[54].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[53]),
        .Q(m_axi_awqos[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[55].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[55].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[54]),
        .Q(m_axi_awqos[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[56].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[56].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[55]),
        .Q(m_axi_awqos[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[57].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[57].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[56]),
        .Q(m_axi_awqos[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[5].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[5].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[5]),
        .Q(m_axi_awaddr[5]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[6].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[6].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[6]),
        .Q(m_axi_awaddr[6]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[7].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[7].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[7]),
        .Q(m_axi_awaddr[7]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[8].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[8].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[8]),
        .Q(m_axi_awaddr[8]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit " *) 
  (* srl_name = "inst/\u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw/gen_data_bit[9].u_srl_fifo " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \gen_data_bit[9].u_srl_fifo 
       (.A0(fifo_index_reg[0]),
        .A1(fifo_index_reg[1]),
        .A2(fifo_index_reg[2]),
        .A3(fifo_index_reg[3]),
        .CE(push),
        .CLK(aclk),
        .D(m_awpayload_i[9]),
        .Q(m_axi_awaddr[9]));
  LUT6 #(
    .INIT(64'hFF00FE00FF00FF00)) 
    m_valid_i_1__0
       (.I0(fifo_index_reg[3]),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(m_valid_i_2__0_n_0),
        .I4(fifo_index_reg[2]),
        .I5(fifo_index1__0),
        .O(m_valid_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hEA00)) 
    m_valid_i_2__0
       (.I0(m_valid_reg_0),
        .I1(m_axi_awready_i),
        .I2(Q),
        .I3(aresetn),
        .O(m_valid_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7000)) 
    m_valid_i_3
       (.I0(m_axi_awready_i),
        .I1(Q),
        .I2(m_axi_awready),
        .I3(m_valid_reg_0),
        .O(fifo_index1__0));
  FDRE m_valid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_1__0_n_0),
        .Q(m_valid_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFF3FFA200000000)) 
    s_ready_i_1__0
       (.I0(m_axi_awready_i),
        .I1(fifo_index_reg[2]),
        .I2(s_ready_i_2__0_n_0),
        .I3(areset_r1),
        .I4(fifo_index1__0),
        .I5(aresetn),
        .O(s_ready_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    s_ready_i_2__0
       (.I0(fifo_index25_out),
        .I1(fifo_index_reg[0]),
        .I2(fifo_index_reg[1]),
        .I3(fifo_index_reg[3]),
        .O(s_ready_i_2__0_n_0));
  FDRE s_ready_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_1__0_n_0),
        .Q(m_axi_awready_i),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_encapsulator" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3
   (Q,
    f_mux4_return,
    \r0_out_sel_r_reg[0] ,
    f_mux40_return,
    m_axi_rvalid,
    r0_out_sel_r04_out,
    arb_sel_i,
    m_bpayload_i,
    m_axi_bvalid_i,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output [32:0]f_mux4_return;
  output \r0_out_sel_r_reg[0] ;
  output f_mux40_return;
  input m_axi_rvalid;
  input r0_out_sel_r04_out;
  input [0:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input m_axi_bvalid_i;
  input areset_r;
  input aclk;
  input [34:0]D;

  wire [34:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [0:0]arb_sel_i;
  wire areset_r;
  wire f_mux40_return;
  wire [32:0]f_mux4_return;
  wire m_axi_bvalid_i;
  wire m_axi_rvalid;
  wire [2:0]m_bpayload_i;
  wire r0_out_sel_r04_out;
  wire \r0_out_sel_r_reg[0] ;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter \gen_dwidth_converter.axis_dwidth_converter_0 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(areset_r),
        .f_mux40_return(f_mux40_return),
        .f_mux4_return(f_mux4_return),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axi_rvalid(m_axi_rvalid),
        .m_bpayload_i(m_bpayload_i),
        .r0_out_sel_r04_out(r0_out_sel_r04_out),
        .\r0_out_sel_r_reg[0] (\r0_out_sel_r_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander
   (Q,
    m_arpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_arready_i,
    s_axis_tvalid,
    s_axis_tid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output [56:0]m_arpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_arready_i;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire [56:0]m_arpayload_i;
  wire m_axi_arready_i;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_arpayload_i(m_arpayload_i),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander_1
   (Q,
    mux_tvalid_1,
    m_awpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output mux_tvalid_1;
  output [56:0]m_awpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire [56:0]m_awpayload_i;
  wire m_axi_awready_i;
  wire mux_tvalid_1;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_awpayload_i(m_awpayload_i),
        .m_axi_awready_i(m_axi_awready_i),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_1_sp_1(mux_tvalid_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0
   (areset_r,
    s_axis_tready,
    \state_reg[1] ,
    m_axi_wdata,
    \acc_data_reg[36] ,
    Q,
    s_axis_tlast,
    aclk,
    SS,
    mux_tvalid_1,
    s_axis_tready_0,
    s_axis_tready_1,
    m_axi_wready,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tdata);
  output areset_r;
  output s_axis_tready;
  output [0:0]\state_reg[1] ;
  output [31:0]m_axi_wdata;
  output [4:0]\acc_data_reg[36] ;
  input [0:0]Q;
  input s_axis_tlast;
  input aclk;
  input [0:0]SS;
  input mux_tvalid_1;
  input s_axis_tready_0;
  input s_axis_tready_1;
  input m_axi_wready;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;

  wire [0:0]Q;
  wire [0:0]SS;
  wire [4:0]\acc_data_reg[36] ;
  wire aclk;
  wire areset_r;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire mux_tvalid_1;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tvalid;
  wire [0:0]\state_reg[1] ;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .SR(areset_r),
        .SS(SS),
        .\acc_data_reg[36] (\acc_data_reg[36] ),
        .aclk(aclk),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .mux_tvalid_1(mux_tvalid_1),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0(s_axis_tready_0),
        .s_axis_tready_1(s_axis_tready_1),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1] (\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_stream_expander" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2
   (\state_reg[0] ,
    aclk,
    Q,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output \state_reg[0] ;
  input aclk;
  input [0:0]Q;
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
  wire \state_reg[0] ;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3 \gen_dwidth_converter.axis_dwidth_converter_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0] (\state_reg[0] ));
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
(* LP_W_TDEST = "3'b100" *) (* ORIG_REF_NAME = "axi_mm2s_mapper_v1_1_25_top" *) 
module design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_top
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
  wire [0:0]arb_gnt_i;
  wire [1:1]arb_sel_i;
  wire areset_r1;
  wire aresetn;
  wire clear;
  wire fifo_index25_out;
  wire \gen_dwidth_converter.axis_dwidth_converter_0/areset_r ;
  wire \gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out ;
  wire [0:0]\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r ;
  wire [36:0]\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return ;
  wire \gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return ;
  wire [57:0]m_arpayload_i;
  wire [57:0]m_awpayload_i;
  wire [31:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire m_axi_arready_i;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire m_axi_arvalid_i;
  wire [31:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire m_axi_awready_i;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire m_axi_awvalid_i;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_bvalid_i;
  wire [31:0]m_axi_rdata;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [2:0]m_bpayload_i;
  wire [3:3]m_int_tvalid;
  wire mux_tvalid_1;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [2:1]s_int_tready;
  wire u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35;
  wire u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0;
  wire u_axis_switch_v1_1_26_axis_switch_1x5_n_0;

  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0 u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar
       (.Q(m_axi_arvalid_i),
        .SS(clear),
        .aclk(aclk),
        .areset_r1(areset_r1),
        .aresetn(aresetn),
        .m_arpayload_i({m_arpayload_i[57:54],m_arpayload_i[52:0]}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_i(m_axi_arready_i),
        .m_axi_arsize(m_axi_arsize),
        .m_valid_reg_0(m_axi_arvalid));
  design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo__parameterized0_0 u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw
       (.Q(m_axi_awvalid_i),
        .SS(clear),
        .aclk(aclk),
        .areset_r1(areset_r1),
        .aresetn(aresetn),
        .m_awpayload_i({m_awpayload_i[57:54],m_awpayload_i[52:0]}),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_i(m_axi_awready_i),
        .m_axi_awsize(m_axi_awsize),
        .m_valid_reg_0(m_axi_awvalid));
  design_1_axi_mm2s_mapper_2_1_axi_infrastructure_v1_1_0_axic_srl_fifo u_axi_infrastructure_v1_1_0_axic_srl_fifo_b
       (.SS(clear),
        .aclk(aclk),
        .arb_gnt_i(arb_gnt_i),
        .areset_r1(areset_r1),
        .aresetn(aresetn),
        .fifo_index25_out(fifo_index25_out),
        .\gen_tdest_router.busy_r (\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r ),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axis_tready(m_axis_tready),
        .m_bpayload_i(m_bpayload_i),
        .s_ready_reg_0(m_axi_bready));
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_encapsulator__parameterized3 u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r
       (.D({m_axi_rlast,m_axi_rresp,m_axi_rdata}),
        .Q({m_int_tvalid,m_axi_rready}),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .f_mux40_return(\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return ),
        .f_mux4_return({\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [36],\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [31:0]}),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axi_rvalid(m_axi_rvalid),
        .m_bpayload_i(m_bpayload_i),
        .r0_out_sel_r04_out(\gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out ),
        .\r0_out_sel_r_reg[0] (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35));
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander u_axi_mm2s_mapper_v1_1_25_stream_expander_ar
       (.Q({m_axi_arvalid_i,s_int_tready[2]}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .m_arpayload_i({m_arpayload_i[57:54],m_arpayload_i[52:0]}),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander_1 u_axi_mm2s_mapper_v1_1_25_stream_expander_aw
       (.Q({m_axi_awvalid_i,s_int_tready[1]}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .m_awpayload_i({m_awpayload_i[57:54],m_awpayload_i[52:0]}),
        .m_axi_awready_i(m_axi_awready_i),
        .mux_tvalid_1(mux_tvalid_1),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized2 u_axi_mm2s_mapper_v1_1_25_stream_expander_r
       (.Q(s_int_tready[2]),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0] (u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0));
  design_1_axi_mm2s_mapper_2_1_axi_mm2s_mapper_v1_1_25_stream_expander__parameterized0 u_axi_mm2s_mapper_v1_1_25_stream_expander_w
       (.Q(s_int_tready[1]),
        .SS(clear),
        .\acc_data_reg[36] ({m_axi_wlast,m_axi_wstrb}),
        .aclk(aclk),
        .areset_r(\gen_dwidth_converter.axis_dwidth_converter_0/areset_r ),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .mux_tvalid_1(mux_tvalid_1),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0(u_axis_switch_v1_1_26_axis_switch_1x5_n_0),
        .s_axis_tready_1(u_axi_mm2s_mapper_v1_1_25_stream_expander_r_n_0),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1] (m_axi_wvalid));
  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch__parameterized0 u_axis_switch_v1_1_26_axis_switch_1x5
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.decode_err_r_reg (u_axis_switch_v1_1_26_axis_switch_1x5_n_0),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch u_axis_switch_v1_1_26_axis_switch_5x1
       (.Q(m_int_tvalid),
        .aclk(aclk),
        .\arb_gnt_r_reg[0] (arb_gnt_i),
        .arb_sel_i(arb_sel_i),
        .areset_r1(areset_r1),
        .\busy_r_reg[0] (\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.busy_r ),
        .f_mux40_return(\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_1/f_mux40_return ),
        .fifo_index25_out(fifo_index25_out),
        .\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst (u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r_n_35),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ({\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [36],\gen_transfer_mux[0].axisc_transfer_mux_0/gen_tdest_router.mux_enc_0/f_mux4_return [31:0]}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .r0_out_sel_r04_out(\gen_dwidth_converter.axis_dwidth_converter_0/gen_downsizer_conversion.axisc_downsizer_0/r0_out_sel_r04_out ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter
   (Q,
    f_mux4_return,
    \r0_out_sel_r_reg[0] ,
    f_mux40_return,
    m_axi_rvalid,
    r0_out_sel_r04_out,
    arb_sel_i,
    m_bpayload_i,
    m_axi_bvalid_i,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output [32:0]f_mux4_return;
  output \r0_out_sel_r_reg[0] ;
  output f_mux40_return;
  input m_axi_rvalid;
  input r0_out_sel_r04_out;
  input [0:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input m_axi_bvalid_i;
  input areset_r;
  input aclk;
  input [34:0]D;

  wire [34:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [0:0]arb_sel_i;
  wire areset_r;
  wire f_mux40_return;
  wire [32:0]f_mux4_return;
  wire m_axi_bvalid_i;
  wire m_axi_rvalid;
  wire [2:0]m_bpayload_i;
  wire r0_out_sel_r04_out;
  wire \r0_out_sel_r_reg[0] ;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_downsizer \gen_downsizer_conversion.axisc_downsizer_0 
       (.D(D),
        .Q(Q),
        .aclk(aclk),
        .arb_sel_i(arb_sel_i),
        .areset_r(areset_r),
        .f_mux40_return(f_mux40_return),
        .f_mux4_return(f_mux4_return),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axi_rvalid(m_axi_rvalid),
        .m_bpayload_i(m_bpayload_i),
        .r0_out_sel_r04_out(r0_out_sel_r04_out),
        .\r0_out_sel_r_reg[0]_0 (\r0_out_sel_r_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0
   (SR,
    s_axis_tready,
    \state_reg[1] ,
    m_axi_wdata,
    \acc_data_reg[36] ,
    s_axis_tlast,
    aclk,
    SS,
    Q,
    mux_tvalid_1,
    s_axis_tready_0,
    s_axis_tready_1,
    m_axi_wready,
    s_axis_tid,
    s_axis_tvalid,
    s_axis_tdata);
  output [0:0]SR;
  output s_axis_tready;
  output [0:0]\state_reg[1] ;
  output [31:0]m_axi_wdata;
  output [4:0]\acc_data_reg[36] ;
  input s_axis_tlast;
  input aclk;
  input [0:0]SS;
  input [0:0]Q;
  input mux_tvalid_1;
  input s_axis_tready_0;
  input s_axis_tready_1;
  input m_axi_wready;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input [31:0]s_axis_tdata;

  wire [0:0]Q;
  wire [0:0]SR;
  wire [0:0]SS;
  wire [4:0]\acc_data_reg[36] ;
  wire aclk;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire mux_tvalid_1;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tvalid;
  wire [0:0]\state_reg[1] ;

  FDRE #(
    .INIT(1'b0)) 
    areset_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(SS),
        .Q(SR),
        .R(1'b0));
  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .SR(SR),
        .\acc_data_reg[36]_0 (\acc_data_reg[36] ),
        .aclk(aclk),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wready(m_axi_wready),
        .mux_tvalid_1(mux_tvalid_1),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tready_0(s_axis_tready_0),
        .s_axis_tready_1(s_axis_tready_1),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[1]_0 (\state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_3
   (\state_reg[0] ,
    aclk,
    Q,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output \state_reg[0] ;
  input aclk;
  input [0:0]Q;
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
  wire \state_reg[0] ;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_4 \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .\state_reg[0]_0 (\state_reg[0] ));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_5
   (Q,
    s_axis_tid_1_sp_1,
    m_awpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output s_axis_tid_1_sp_1;
  output [56:0]m_awpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire [56:0]m_awpayload_i;
  wire m_axi_awready_i;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_1_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  assign s_axis_tid_1_sp_1 = s_axis_tid_1_sn_1;
  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_6 \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_awpayload_i(m_awpayload_i),
        .m_axi_awready_i(m_axi_awready_i),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tid_1_sp_1(s_axis_tid_1_sn_1),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axis_dwidth_converter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axis_dwidth_converter__parameterized0_7
   (Q,
    m_arpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_arready_i,
    s_axis_tvalid,
    s_axis_tid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output [56:0]m_arpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_arready_i;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire aclk;
  wire areset_r;
  wire [56:0]m_arpayload_i;
  wire m_axi_arready_i;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_8 \gen_upsizer_conversion.axisc_upsizer_0 
       (.Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_arpayload_i(m_arpayload_i),
        .m_axi_arready_i(m_axi_arready_i),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tid(s_axis_tid),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_downsizer" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_downsizer
   (Q,
    f_mux4_return,
    \r0_out_sel_r_reg[0]_0 ,
    f_mux40_return,
    m_axi_rvalid,
    r0_out_sel_r04_out,
    arb_sel_i,
    m_bpayload_i,
    m_axi_bvalid_i,
    areset_r,
    aclk,
    D);
  output [1:0]Q;
  output [32:0]f_mux4_return;
  output \r0_out_sel_r_reg[0]_0 ;
  output f_mux40_return;
  input m_axi_rvalid;
  input r0_out_sel_r04_out;
  input [0:0]arb_sel_i;
  input [2:0]m_bpayload_i;
  input m_axi_bvalid_i;
  input areset_r;
  input aclk;
  input [34:0]D;

  wire [34:0]D;
  wire [1:0]Q;
  wire aclk;
  wire [0:0]arb_sel_i;
  wire areset_r;
  wire f_mux40_return;
  wire [32:0]f_mux4_return;
  wire m_axi_bvalid_i;
  wire m_axi_rvalid;
  wire [2:0]m_bpayload_i;
  wire [34:0]p_0_in1_in;
  wire \r0_data_reg_n_0_[32] ;
  wire \r0_data_reg_n_0_[33] ;
  wire \r0_data_reg_n_0_[34] ;
  wire r0_load;
  wire r0_out_sel_r04_out;
  wire \r0_out_sel_r[0]_i_1_n_0 ;
  wire \r0_out_sel_r_reg[0]_0 ;
  wire \r1_data[0]_i_1_n_0 ;
  wire \r1_data[1]_i_1_n_0 ;
  wire \r1_data[2]_i_1_n_0 ;
  wire [2:0]state;
  wire \state_reg_n_0_[2] ;

  LUT5 #(
    .INIT(32'hFA0ACACA)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1 
       (.I0(m_bpayload_i[0]),
        .I1(p_0_in1_in[0]),
        .I2(arb_sel_i),
        .I3(p_0_in1_in[32]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(f_mux4_return[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst_i_1__0 
       (.I0(Q[1]),
        .I1(arb_sel_i),
        .I2(m_axi_bvalid_i),
        .O(f_mux40_return));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[10]),
        .O(f_mux4_return[10]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[11]),
        .O(f_mux4_return[11]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[12]),
        .O(f_mux4_return[12]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[13]),
        .O(f_mux4_return[13]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[14]),
        .O(f_mux4_return[14]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[15]),
        .O(f_mux4_return[15]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[16]),
        .O(f_mux4_return[16]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[17]),
        .O(f_mux4_return[17]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[18]),
        .O(f_mux4_return[18]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[19]),
        .O(f_mux4_return[19]));
  LUT5 #(
    .INIT(32'hFA0ACACA)) 
    \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst_i_1 
       (.I0(m_bpayload_i[1]),
        .I1(p_0_in1_in[1]),
        .I2(arb_sel_i),
        .I3(p_0_in1_in[33]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(f_mux4_return[1]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[20]),
        .O(f_mux4_return[20]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[21]),
        .O(f_mux4_return[21]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[22]),
        .O(f_mux4_return[22]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[23]),
        .O(f_mux4_return[23]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[24]),
        .O(f_mux4_return[24]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[25]),
        .O(f_mux4_return[25]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[26]),
        .O(f_mux4_return[26]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[27]),
        .O(f_mux4_return[27]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[28]),
        .O(f_mux4_return[28]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[29]),
        .O(f_mux4_return[29]));
  LUT5 #(
    .INIT(32'hFA0ACACA)) 
    \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst_i_1 
       (.I0(m_bpayload_i[2]),
        .I1(p_0_in1_in[2]),
        .I2(arb_sel_i),
        .I3(p_0_in1_in[34]),
        .I4(\r0_out_sel_r_reg[0]_0 ),
        .O(f_mux4_return[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[30]),
        .O(f_mux4_return[30]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[31]),
        .O(f_mux4_return[31]));
  LUT4 #(
    .INIT(16'h75D5)) 
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_i_1 
       (.I0(arb_sel_i),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\state_reg_n_0_[2] ),
        .O(f_mux4_return[32]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[3]),
        .O(f_mux4_return[3]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[4]),
        .O(f_mux4_return[4]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[5]),
        .O(f_mux4_return[5]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[6]),
        .O(f_mux4_return[6]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[7]),
        .O(f_mux4_return[7]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[8]),
        .O(f_mux4_return[8]));
  LUT3 #(
    .INIT(8'h40)) 
    \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(arb_sel_i),
        .I2(p_0_in1_in[9]),
        .O(f_mux4_return[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \r0_data[34]_i_1 
       (.I0(Q[0]),
        .I1(\state_reg_n_0_[2] ),
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
    .INIT(64'h0000000066666606)) 
    \r0_out_sel_r[0]_i_1 
       (.I0(\r0_out_sel_r_reg[0]_0 ),
        .I1(r0_out_sel_r04_out),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state_reg_n_0_[2] ),
        .I5(areset_r),
        .O(\r0_out_sel_r[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \r0_out_sel_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_out_sel_r[0]_i_1_n_0 ),
        .Q(\r0_out_sel_r_reg[0]_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \r1_data[0]_i_1 
       (.I0(\r0_data_reg_n_0_[32] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in1_in[32]),
        .O(\r1_data[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \r1_data[1]_i_1 
       (.I0(\r0_data_reg_n_0_[33] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in1_in[33]),
        .O(\r1_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    \r1_data[2]_i_1 
       (.I0(\r0_data_reg_n_0_[34] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(p_0_in1_in[34]),
        .O(\r1_data[2]_i_1_n_0 ));
  FDRE \r1_data_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r1_data[0]_i_1_n_0 ),
        .Q(p_0_in1_in[32]),
        .R(1'b0));
  FDRE \r1_data_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r1_data[1]_i_1_n_0 ),
        .Q(p_0_in1_in[33]),
        .R(1'b0));
  FDRE \r1_data_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r1_data[2]_i_1_n_0 ),
        .Q(p_0_in1_in[34]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC2F3CEFF)) 
    \state[0]_i_1 
       (.I0(r0_out_sel_r04_out),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(m_axi_rvalid),
        .O(state[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h3F0C3700)) 
    \state[1]_i_1 
       (.I0(r0_out_sel_r04_out),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[1]),
        .I4(m_axi_rvalid),
        .O(state[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000C80)) 
    \state[2]_i_1 
       (.I0(m_axi_rvalid),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(r0_out_sel_r04_out),
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

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_upsizer" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer
   (s_axis_tready,
    \state_reg[1]_0 ,
    m_axi_wdata,
    \acc_data_reg[36]_0 ,
    s_axis_tlast,
    aclk,
    Q,
    mux_tvalid_1,
    s_axis_tready_0,
    s_axis_tready_1,
    m_axi_wready,
    s_axis_tid,
    s_axis_tvalid,
    SR,
    s_axis_tdata);
  output s_axis_tready;
  output [0:0]\state_reg[1]_0 ;
  output [31:0]m_axi_wdata;
  output [4:0]\acc_data_reg[36]_0 ;
  input s_axis_tlast;
  input aclk;
  input [0:0]Q;
  input mux_tvalid_1;
  input s_axis_tready_0;
  input s_axis_tready_1;
  input m_axi_wready;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input [0:0]SR;
  input [31:0]s_axis_tdata;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \acc_data[35]_i_1_n_0 ;
  wire [4:0]\acc_data_reg[36]_0 ;
  wire aclk;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire mux_tvalid_1;
  wire next_xfer_is_end__1;
  wire p_0_in;
  wire [31:0]r0_data;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1__0_n_0 ;
  wire \r0_reg_sel[1]_i_1__0_n_0 ;
  wire \r0_reg_sel[1]_i_2__0_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tready_0;
  wire s_axis_tready_1;
  wire s_axis_tvalid;
  wire [4:4]s_int_tready;
  wire [2:1]state;
  wire \state[0]_i_1__3_n_0 ;
  wire \state[1]_i_3__0_n_0 ;
  wire \state[2]_i_2__2_n_0 ;
  wire [0:0]\state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;
  wire \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ;

  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[31]_i_1__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(\state_reg[1]_0 ),
        .I3(s_int_tready),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[35]_i_1 
       (.I0(s_int_tready),
        .I1(\state_reg[1]_0 ),
        .O(\acc_data[35]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_axi_wdata[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_axi_wdata[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_axi_wdata[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_axi_wdata[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_axi_wdata[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_axi_wdata[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_axi_wdata[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[16]),
        .Q(m_axi_wdata[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[17]),
        .Q(m_axi_wdata[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[18]),
        .Q(m_axi_wdata[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[19]),
        .Q(m_axi_wdata[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_axi_wdata[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[20]),
        .Q(m_axi_wdata[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[21]),
        .Q(m_axi_wdata[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[22]),
        .Q(m_axi_wdata[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[23]),
        .Q(m_axi_wdata[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[24]),
        .Q(m_axi_wdata[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[25]),
        .Q(m_axi_wdata[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[26]),
        .Q(m_axi_wdata[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[27]),
        .Q(m_axi_wdata[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[28]),
        .Q(m_axi_wdata[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[29]),
        .Q(m_axi_wdata[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_axi_wdata[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[30]),
        .Q(m_axi_wdata[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[31]),
        .Q(m_axi_wdata[31]),
        .R(1'b0));
  FDRE \acc_data_reg[32] 
       (.C(aclk),
        .CE(\acc_data[35]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(\acc_data_reg[36]_0 [0]),
        .R(1'b0));
  FDRE \acc_data_reg[33] 
       (.C(aclk),
        .CE(\acc_data[35]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(\acc_data_reg[36]_0 [1]),
        .R(1'b0));
  FDRE \acc_data_reg[34] 
       (.C(aclk),
        .CE(\acc_data[35]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(\acc_data_reg[36]_0 [2]),
        .R(1'b0));
  FDRE \acc_data_reg[35] 
       (.C(aclk),
        .CE(\acc_data[35]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(\acc_data_reg[36]_0 [3]),
        .R(1'b0));
  FDRE \acc_data_reg[36] 
       (.C(aclk),
        .CE(\acc_data[35]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(\acc_data_reg[36]_0 [4]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_axi_wdata[3]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_axi_wdata[4]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_axi_wdata[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_axi_wdata[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_axi_wdata[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_axi_wdata[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_axi_wdata[9]),
        .R(1'b0));
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
    .INIT(64'hFFFFFF2AFFAAFF2A)) 
    \r0_reg_sel[0]_i_1__0 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_int_tready),
        .I3(SR),
        .I4(\state_reg[1]_0 ),
        .I5(m_axi_wready),
        .O(\r0_reg_sel[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAEAAA2A)) 
    \r0_reg_sel[1]_i_1__0 
       (.I0(\r0_reg_sel_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[2] ),
        .I2(s_int_tready),
        .I3(\state_reg[1]_0 ),
        .I4(\r0_reg_sel_reg_n_0_[0] ),
        .I5(\r0_reg_sel[1]_i_2__0_n_0 ),
        .O(\r0_reg_sel[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \r0_reg_sel[1]_i_2__0 
       (.I0(m_axi_wready),
        .I1(\state_reg[1]_0 ),
        .I2(SR),
        .O(\r0_reg_sel[1]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1__0_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1__0_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    s_axis_tready_INST_0
       (.I0(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ),
        .I1(s_int_tready),
        .I2(Q),
        .I3(mux_tvalid_1),
        .I4(s_axis_tready_0),
        .I5(s_axis_tready_1),
        .O(s_axis_tready));
  LUT4 #(
    .INIT(16'h1000)) 
    s_axis_tready_INST_0_i_1
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[2]),
        .O(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ));
  LUT6 #(
    .INIT(64'hF5DFFFDFFFCFFFCF)) 
    \state[0]_i_1__3 
       (.I0(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ),
        .I1(m_axi_wready),
        .I2(\state_reg[1]_0 ),
        .I3(\state_reg_n_0_[2] ),
        .I4(r0_last_reg_n_0),
        .I5(s_int_tready),
        .O(\state[0]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \state[1]_i_1__0 
       (.I0(next_xfer_is_end__1),
        .I1(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ),
        .I2(s_int_tready),
        .I3(\state_reg[1]_0 ),
        .I4(\state[1]_i_3__0_n_0 ),
        .O(state[1]));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \state[1]_i_2__0 
       (.I0(s_int_tready),
        .I1(\state_reg[1]_0 ),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(next_xfer_is_end__1));
  LUT5 #(
    .INIT(32'h00800F80)) 
    \state[1]_i_3__0 
       (.I0(s_int_tready),
        .I1(r0_last_reg_n_0),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg[1]_0 ),
        .I4(m_axi_wready),
        .O(\state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A000200)) 
    \state[2]_i_1__3 
       (.I0(\state_reg[1]_0 ),
        .I1(s_int_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(m_axi_wready),
        .I4(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ),
        .I5(\state[2]_i_2__2_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h0000000004440000)) 
    \state[2]_i_2__2 
       (.I0(\state_reg[1]_0 ),
        .I1(s_int_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(r0_last_reg_n_0),
        .I4(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_4 ),
        .I5(next_xfer_is_end__1),
        .O(\state[2]_i_2__2_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\state[0]_i_1__3_n_0 ),
        .Q(s_int_tready),
        .R(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(state[1]),
        .Q(\state_reg[1]_0 ),
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

(* ORIG_REF_NAME = "axis_dwidth_converter_v1_1_25_axisc_upsizer" *) 
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_4
   (\state_reg[0]_0 ,
    aclk,
    Q,
    s_axis_tvalid,
    s_axis_tid,
    s_axis_tlast,
    areset_r);
  output \state_reg[0]_0 ;
  input aclk;
  input [0:0]Q;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input s_axis_tlast;
  input areset_r;

  wire [0:0]Q;
  wire aclk;
  wire areset_r;
  wire next_xfer_is_end__1;
  wire r0_last_i_1_n_0;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1__2_n_0 ;
  wire \r0_reg_sel[1]_i_1__2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [3:3]s_int_tready;
  wire [2:0]state;
  wire \state[1]_i_1__1_n_0 ;
  wire \state_reg[0]_0 ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3 ;

  LUT3 #(
    .INIT(8'hB8)) 
    r0_last_i_1
       (.I0(s_axis_tlast),
        .I1(s_int_tready),
        .I2(r0_last_reg_n_0),
        .O(r0_last_i_1_n_0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r0_last_i_1_n_0),
        .Q(r0_last_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF700)) 
    \r0_reg_sel[0]_i_1__2 
       (.I0(s_int_tready),
        .I1(\state_reg_n_0_[2] ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .O(\r0_reg_sel[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \r0_reg_sel[1]_i_1__2 
       (.I0(\r0_reg_sel_reg_n_0_[0] ),
        .I1(s_int_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(\r0_reg_sel[1]_i_1__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \r0_reg_sel_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[0]_i_1__2_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[0] ),
        .S(areset_r));
  FDRE #(
    .INIT(1'b0)) 
    \r0_reg_sel_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\r0_reg_sel[1]_i_1__2_n_0 ),
        .Q(\r0_reg_sel_reg_n_0_[1] ),
        .R(areset_r));
  LUT6 #(
    .INIT(64'h00000000A000C000)) 
    s_axis_tready_INST_0_i_3
       (.I0(s_int_tready),
        .I1(Q),
        .I2(s_axis_tvalid),
        .I3(s_axis_tid[1]),
        .I4(s_axis_tid[0]),
        .I5(s_axis_tid[2]),
        .O(\state_reg[0]_0 ));
  LUT5 #(
    .INIT(32'hD7F7F3F3)) 
    \state[0]_i_1__2 
       (.I0(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3 ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(r0_last_reg_n_0),
        .I4(s_int_tready),
        .O(state[0]));
  LUT6 #(
    .INIT(64'h0FF808F800F000F0)) 
    \state[1]_i_1__1 
       (.I0(next_xfer_is_end__1),
        .I1(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(r0_last_reg_n_0),
        .I5(s_int_tready),
        .O(\state[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004440000)) 
    \state[2]_i_1__2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(s_int_tready),
        .I2(\state_reg_n_0_[2] ),
        .I3(r0_last_reg_n_0),
        .I4(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3 ),
        .I5(next_xfer_is_end__1),
        .O(state[2]));
  LUT4 #(
    .INIT(16'h0800)) 
    \state[2]_i_2__1 
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .O(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_3 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFF0080)) 
    \state[2]_i_3__0 
       (.I0(\state_reg_n_0_[2] ),
        .I1(s_int_tready),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(next_xfer_is_end__1));
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
        .D(\state[1]_i_1__1_n_0 ),
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
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_6
   (Q,
    s_axis_tid_1_sp_1,
    m_awpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_awready_i,
    s_axis_tid,
    s_axis_tvalid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output s_axis_tid_1_sp_1;
  output [56:0]m_awpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_awready_i;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire \acc_data[57]_i_1_n_0 ;
  wire aclk;
  wire areset_r;
  wire [56:0]m_awpayload_i;
  wire m_axi_awready_i;
  wire next_xfer_is_end__1;
  wire p_0_in;
  wire [31:0]r0_data;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_1_n_0 ;
  wire \r0_reg_sel[1]_i_2_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tid_1_sn_1;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_1__2_n_0 ;
  wire \state[1]_i_3_n_0 ;
  wire \state[2]_i_2__0_n_0 ;
  wire \state_reg_n_0_[2] ;

  assign s_axis_tid_1_sp_1 = s_axis_tid_1_sn_1;
  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[31]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[57]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\acc_data[57]_i_1_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_awpayload_i[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_awpayload_i[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_awpayload_i[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_awpayload_i[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_awpayload_i[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_awpayload_i[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_awpayload_i[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[16]),
        .Q(m_awpayload_i[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[17]),
        .Q(m_awpayload_i[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[18]),
        .Q(m_awpayload_i[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[19]),
        .Q(m_awpayload_i[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_awpayload_i[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[20]),
        .Q(m_awpayload_i[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[21]),
        .Q(m_awpayload_i[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[22]),
        .Q(m_awpayload_i[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[23]),
        .Q(m_awpayload_i[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[24]),
        .Q(m_awpayload_i[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[25]),
        .Q(m_awpayload_i[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[26]),
        .Q(m_awpayload_i[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[27]),
        .Q(m_awpayload_i[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[28]),
        .Q(m_awpayload_i[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[29]),
        .Q(m_awpayload_i[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_awpayload_i[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[30]),
        .Q(m_awpayload_i[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[31]),
        .Q(m_awpayload_i[31]),
        .R(1'b0));
  FDRE \acc_data_reg[32] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_awpayload_i[32]),
        .R(1'b0));
  FDRE \acc_data_reg[33] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_awpayload_i[33]),
        .R(1'b0));
  FDRE \acc_data_reg[34] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_awpayload_i[34]),
        .R(1'b0));
  FDRE \acc_data_reg[35] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_awpayload_i[35]),
        .R(1'b0));
  FDRE \acc_data_reg[36] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_awpayload_i[36]),
        .R(1'b0));
  FDRE \acc_data_reg[37] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_awpayload_i[37]),
        .R(1'b0));
  FDRE \acc_data_reg[38] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_awpayload_i[38]),
        .R(1'b0));
  FDRE \acc_data_reg[39] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_awpayload_i[39]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_awpayload_i[3]),
        .R(1'b0));
  FDRE \acc_data_reg[40] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_awpayload_i[40]),
        .R(1'b0));
  FDRE \acc_data_reg[41] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_awpayload_i[41]),
        .R(1'b0));
  FDRE \acc_data_reg[42] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_awpayload_i[42]),
        .R(1'b0));
  FDRE \acc_data_reg[43] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_awpayload_i[43]),
        .R(1'b0));
  FDRE \acc_data_reg[44] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_awpayload_i[44]),
        .R(1'b0));
  FDRE \acc_data_reg[45] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_awpayload_i[45]),
        .R(1'b0));
  FDRE \acc_data_reg[46] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_awpayload_i[46]),
        .R(1'b0));
  FDRE \acc_data_reg[47] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_awpayload_i[47]),
        .R(1'b0));
  FDRE \acc_data_reg[48] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_awpayload_i[48]),
        .R(1'b0));
  FDRE \acc_data_reg[49] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_awpayload_i[49]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_awpayload_i[4]),
        .R(1'b0));
  FDRE \acc_data_reg[50] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_awpayload_i[50]),
        .R(1'b0));
  FDRE \acc_data_reg[51] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_awpayload_i[51]),
        .R(1'b0));
  FDRE \acc_data_reg[52] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_awpayload_i[52]),
        .R(1'b0));
  FDRE \acc_data_reg[54] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_awpayload_i[53]),
        .R(1'b0));
  FDRE \acc_data_reg[55] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_awpayload_i[54]),
        .R(1'b0));
  FDRE \acc_data_reg[56] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_awpayload_i[55]),
        .R(1'b0));
  FDRE \acc_data_reg[57] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_awpayload_i[56]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_awpayload_i[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_awpayload_i[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_awpayload_i[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_awpayload_i[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_awpayload_i[9]),
        .R(1'b0));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tlast),
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
        .I2(\acc_data[57]_i_1_n_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel[1]_i_2_n_0 ),
        .I5(areset_r),
        .O(\r0_reg_sel[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r0_reg_sel[1]_i_2 
       (.I0(Q[1]),
        .I1(m_axi_awready_i),
        .O(\r0_reg_sel[1]_i_2_n_0 ));
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
    .INIT(16'h0400)) 
    s_axis_tready_INST_0_i_2
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .O(s_axis_tid_1_sn_1));
  LUT6 #(
    .INIT(64'hDFFFDF73FFFFFF73)) 
    \state[0]_i_1__1 
       (.I0(s_axis_tid_1_sn_1),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axi_awready_i),
        .I5(r0_last_reg_n_0),
        .O(state[0]));
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \state[1]_i_1__2 
       (.I0(next_xfer_is_end__1),
        .I1(s_axis_tid_1_sn_1),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state[1]_i_3_n_0 ),
        .O(\state[1]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \state[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(next_xfer_is_end__1));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFCFC5FFF)) 
    \state[1]_i_3 
       (.I0(r0_last_reg_n_0),
        .I1(m_axi_awready_i),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A000200)) 
    \state[2]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(m_axi_awready_i),
        .I4(s_axis_tid_1_sn_1),
        .I5(\state[2]_i_2__0_n_0 ),
        .O(state[2]));
  LUT6 #(
    .INIT(64'h0000000004440000)) 
    \state[2]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(r0_last_reg_n_0),
        .I4(s_axis_tid_1_sn_1),
        .I5(next_xfer_is_end__1),
        .O(\state[2]_i_2__0_n_0 ));
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
        .D(\state[1]_i_1__2_n_0 ),
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
module design_1_axi_mm2s_mapper_2_1_axis_dwidth_converter_v1_1_25_axisc_upsizer_8
   (Q,
    m_arpayload_i,
    s_axis_tlast,
    aclk,
    m_axi_arready_i,
    s_axis_tvalid,
    s_axis_tid,
    areset_r,
    s_axis_tdata);
  output [1:0]Q;
  output [56:0]m_arpayload_i;
  input s_axis_tlast;
  input aclk;
  input m_axi_arready_i;
  input s_axis_tvalid;
  input [2:0]s_axis_tid;
  input areset_r;
  input [31:0]s_axis_tdata;

  wire [1:0]Q;
  wire \acc_data[57]_i_1__0_n_0 ;
  wire aclk;
  wire areset_r;
  wire [56:0]m_arpayload_i;
  wire m_axi_arready_i;
  wire next_xfer_is_end__1;
  wire p_0_in;
  wire [31:0]r0_data;
  wire r0_last_reg_n_0;
  wire \r0_reg_sel[0]_i_1__1_n_0 ;
  wire \r0_reg_sel[1]_i_1__1_n_0 ;
  wire \r0_reg_sel[1]_i_2__1_n_0 ;
  wire \r0_reg_sel_reg_n_0_[0] ;
  wire \r0_reg_sel_reg_n_0_[1] ;
  wire [31:0]s_axis_tdata;
  wire [2:0]s_axis_tid;
  wire s_axis_tlast;
  wire s_axis_tvalid;
  wire [2:0]state;
  wire \state[1]_i_1__3_n_0 ;
  wire \state[1]_i_3__1_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg_n_0_[2] ;
  wire \u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ;

  LUT4 #(
    .INIT(16'h0800)) 
    \acc_data[31]_i_1__1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\r0_reg_sel_reg_n_0_[0] ),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h2)) 
    \acc_data[57]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\acc_data[57]_i_1__0_n_0 ));
  FDRE \acc_data_reg[0] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[0]),
        .Q(m_arpayload_i[0]),
        .R(1'b0));
  FDRE \acc_data_reg[10] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[10]),
        .Q(m_arpayload_i[10]),
        .R(1'b0));
  FDRE \acc_data_reg[11] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[11]),
        .Q(m_arpayload_i[11]),
        .R(1'b0));
  FDRE \acc_data_reg[12] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[12]),
        .Q(m_arpayload_i[12]),
        .R(1'b0));
  FDRE \acc_data_reg[13] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[13]),
        .Q(m_arpayload_i[13]),
        .R(1'b0));
  FDRE \acc_data_reg[14] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[14]),
        .Q(m_arpayload_i[14]),
        .R(1'b0));
  FDRE \acc_data_reg[15] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[15]),
        .Q(m_arpayload_i[15]),
        .R(1'b0));
  FDRE \acc_data_reg[16] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[16]),
        .Q(m_arpayload_i[16]),
        .R(1'b0));
  FDRE \acc_data_reg[17] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[17]),
        .Q(m_arpayload_i[17]),
        .R(1'b0));
  FDRE \acc_data_reg[18] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[18]),
        .Q(m_arpayload_i[18]),
        .R(1'b0));
  FDRE \acc_data_reg[19] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[19]),
        .Q(m_arpayload_i[19]),
        .R(1'b0));
  FDRE \acc_data_reg[1] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[1]),
        .Q(m_arpayload_i[1]),
        .R(1'b0));
  FDRE \acc_data_reg[20] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[20]),
        .Q(m_arpayload_i[20]),
        .R(1'b0));
  FDRE \acc_data_reg[21] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[21]),
        .Q(m_arpayload_i[21]),
        .R(1'b0));
  FDRE \acc_data_reg[22] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[22]),
        .Q(m_arpayload_i[22]),
        .R(1'b0));
  FDRE \acc_data_reg[23] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[23]),
        .Q(m_arpayload_i[23]),
        .R(1'b0));
  FDRE \acc_data_reg[24] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[24]),
        .Q(m_arpayload_i[24]),
        .R(1'b0));
  FDRE \acc_data_reg[25] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[25]),
        .Q(m_arpayload_i[25]),
        .R(1'b0));
  FDRE \acc_data_reg[26] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[26]),
        .Q(m_arpayload_i[26]),
        .R(1'b0));
  FDRE \acc_data_reg[27] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[27]),
        .Q(m_arpayload_i[27]),
        .R(1'b0));
  FDRE \acc_data_reg[28] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[28]),
        .Q(m_arpayload_i[28]),
        .R(1'b0));
  FDRE \acc_data_reg[29] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[29]),
        .Q(m_arpayload_i[29]),
        .R(1'b0));
  FDRE \acc_data_reg[2] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[2]),
        .Q(m_arpayload_i[2]),
        .R(1'b0));
  FDRE \acc_data_reg[30] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[30]),
        .Q(m_arpayload_i[30]),
        .R(1'b0));
  FDRE \acc_data_reg[31] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[31]),
        .Q(m_arpayload_i[31]),
        .R(1'b0));
  FDRE \acc_data_reg[32] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[0]),
        .Q(m_arpayload_i[32]),
        .R(1'b0));
  FDRE \acc_data_reg[33] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[1]),
        .Q(m_arpayload_i[33]),
        .R(1'b0));
  FDRE \acc_data_reg[34] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[2]),
        .Q(m_arpayload_i[34]),
        .R(1'b0));
  FDRE \acc_data_reg[35] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[3]),
        .Q(m_arpayload_i[35]),
        .R(1'b0));
  FDRE \acc_data_reg[36] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[4]),
        .Q(m_arpayload_i[36]),
        .R(1'b0));
  FDRE \acc_data_reg[37] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[5]),
        .Q(m_arpayload_i[37]),
        .R(1'b0));
  FDRE \acc_data_reg[38] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[6]),
        .Q(m_arpayload_i[38]),
        .R(1'b0));
  FDRE \acc_data_reg[39] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[7]),
        .Q(m_arpayload_i[39]),
        .R(1'b0));
  FDRE \acc_data_reg[3] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[3]),
        .Q(m_arpayload_i[3]),
        .R(1'b0));
  FDRE \acc_data_reg[40] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[8]),
        .Q(m_arpayload_i[40]),
        .R(1'b0));
  FDRE \acc_data_reg[41] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[9]),
        .Q(m_arpayload_i[41]),
        .R(1'b0));
  FDRE \acc_data_reg[42] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[10]),
        .Q(m_arpayload_i[42]),
        .R(1'b0));
  FDRE \acc_data_reg[43] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[11]),
        .Q(m_arpayload_i[43]),
        .R(1'b0));
  FDRE \acc_data_reg[44] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[12]),
        .Q(m_arpayload_i[44]),
        .R(1'b0));
  FDRE \acc_data_reg[45] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[13]),
        .Q(m_arpayload_i[45]),
        .R(1'b0));
  FDRE \acc_data_reg[46] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[14]),
        .Q(m_arpayload_i[46]),
        .R(1'b0));
  FDRE \acc_data_reg[47] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[15]),
        .Q(m_arpayload_i[47]),
        .R(1'b0));
  FDRE \acc_data_reg[48] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[16]),
        .Q(m_arpayload_i[48]),
        .R(1'b0));
  FDRE \acc_data_reg[49] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[17]),
        .Q(m_arpayload_i[49]),
        .R(1'b0));
  FDRE \acc_data_reg[4] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[4]),
        .Q(m_arpayload_i[4]),
        .R(1'b0));
  FDRE \acc_data_reg[50] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[18]),
        .Q(m_arpayload_i[50]),
        .R(1'b0));
  FDRE \acc_data_reg[51] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[19]),
        .Q(m_arpayload_i[51]),
        .R(1'b0));
  FDRE \acc_data_reg[52] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[20]),
        .Q(m_arpayload_i[52]),
        .R(1'b0));
  FDRE \acc_data_reg[54] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[22]),
        .Q(m_arpayload_i[53]),
        .R(1'b0));
  FDRE \acc_data_reg[55] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[23]),
        .Q(m_arpayload_i[54]),
        .R(1'b0));
  FDRE \acc_data_reg[56] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[24]),
        .Q(m_arpayload_i[55]),
        .R(1'b0));
  FDRE \acc_data_reg[57] 
       (.C(aclk),
        .CE(\acc_data[57]_i_1__0_n_0 ),
        .D(s_axis_tdata[25]),
        .Q(m_arpayload_i[56]),
        .R(1'b0));
  FDRE \acc_data_reg[5] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[5]),
        .Q(m_arpayload_i[5]),
        .R(1'b0));
  FDRE \acc_data_reg[6] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[6]),
        .Q(m_arpayload_i[6]),
        .R(1'b0));
  FDRE \acc_data_reg[7] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[7]),
        .Q(m_arpayload_i[7]),
        .R(1'b0));
  FDRE \acc_data_reg[8] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[8]),
        .Q(m_arpayload_i[8]),
        .R(1'b0));
  FDRE \acc_data_reg[9] 
       (.C(aclk),
        .CE(p_0_in),
        .D(r0_data[9]),
        .Q(m_arpayload_i[9]),
        .R(1'b0));
  FDRE \r0_data_reg[0] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[0]),
        .Q(r0_data[0]),
        .R(1'b0));
  FDRE \r0_data_reg[10] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[10]),
        .Q(r0_data[10]),
        .R(1'b0));
  FDRE \r0_data_reg[11] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[11]),
        .Q(r0_data[11]),
        .R(1'b0));
  FDRE \r0_data_reg[12] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[12]),
        .Q(r0_data[12]),
        .R(1'b0));
  FDRE \r0_data_reg[13] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[13]),
        .Q(r0_data[13]),
        .R(1'b0));
  FDRE \r0_data_reg[14] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[14]),
        .Q(r0_data[14]),
        .R(1'b0));
  FDRE \r0_data_reg[15] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[15]),
        .Q(r0_data[15]),
        .R(1'b0));
  FDRE \r0_data_reg[16] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[16]),
        .Q(r0_data[16]),
        .R(1'b0));
  FDRE \r0_data_reg[17] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[17]),
        .Q(r0_data[17]),
        .R(1'b0));
  FDRE \r0_data_reg[18] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[18]),
        .Q(r0_data[18]),
        .R(1'b0));
  FDRE \r0_data_reg[19] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[19]),
        .Q(r0_data[19]),
        .R(1'b0));
  FDRE \r0_data_reg[1] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[1]),
        .Q(r0_data[1]),
        .R(1'b0));
  FDRE \r0_data_reg[20] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[20]),
        .Q(r0_data[20]),
        .R(1'b0));
  FDRE \r0_data_reg[21] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[21]),
        .Q(r0_data[21]),
        .R(1'b0));
  FDRE \r0_data_reg[22] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[22]),
        .Q(r0_data[22]),
        .R(1'b0));
  FDRE \r0_data_reg[23] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[23]),
        .Q(r0_data[23]),
        .R(1'b0));
  FDRE \r0_data_reg[24] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[24]),
        .Q(r0_data[24]),
        .R(1'b0));
  FDRE \r0_data_reg[25] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[25]),
        .Q(r0_data[25]),
        .R(1'b0));
  FDRE \r0_data_reg[26] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[26]),
        .Q(r0_data[26]),
        .R(1'b0));
  FDRE \r0_data_reg[27] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[27]),
        .Q(r0_data[27]),
        .R(1'b0));
  FDRE \r0_data_reg[28] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[28]),
        .Q(r0_data[28]),
        .R(1'b0));
  FDRE \r0_data_reg[29] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[29]),
        .Q(r0_data[29]),
        .R(1'b0));
  FDRE \r0_data_reg[2] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[2]),
        .Q(r0_data[2]),
        .R(1'b0));
  FDRE \r0_data_reg[30] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[30]),
        .Q(r0_data[30]),
        .R(1'b0));
  FDRE \r0_data_reg[31] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[31]),
        .Q(r0_data[31]),
        .R(1'b0));
  FDRE \r0_data_reg[3] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[3]),
        .Q(r0_data[3]),
        .R(1'b0));
  FDRE \r0_data_reg[4] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[4]),
        .Q(r0_data[4]),
        .R(1'b0));
  FDRE \r0_data_reg[5] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[5]),
        .Q(r0_data[5]),
        .R(1'b0));
  FDRE \r0_data_reg[6] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[6]),
        .Q(r0_data[6]),
        .R(1'b0));
  FDRE \r0_data_reg[7] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[7]),
        .Q(r0_data[7]),
        .R(1'b0));
  FDRE \r0_data_reg[8] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[8]),
        .Q(r0_data[8]),
        .R(1'b0));
  FDRE \r0_data_reg[9] 
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tdata[9]),
        .Q(r0_data[9]),
        .R(1'b0));
  FDRE r0_last_reg
       (.C(aclk),
        .CE(Q[0]),
        .D(s_axis_tlast),
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
        .I2(\acc_data[57]_i_1__0_n_0 ),
        .I3(\r0_reg_sel_reg_n_0_[0] ),
        .I4(\r0_reg_sel[1]_i_2__1_n_0 ),
        .I5(areset_r),
        .O(\r0_reg_sel[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r0_reg_sel[1]_i_2__1 
       (.I0(Q[1]),
        .I1(m_axi_arready_i),
        .O(\r0_reg_sel[1]_i_2__1_n_0 ));
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
  LUT6 #(
    .INIT(64'hDFFFDF73FFFFFF73)) 
    \state[0]_i_1__0 
       (.I0(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(\state_reg_n_0_[2] ),
        .I4(m_axi_arready_i),
        .I5(r0_last_reg_n_0),
        .O(state[0]));
  LUT5 #(
    .INIT(32'h0080FFFF)) 
    \state[1]_i_1__3 
       (.I0(next_xfer_is_end__1),
        .I1(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\state[1]_i_3__1_n_0 ),
        .O(\state[1]_i_1__3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \state[1]_i_2__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\r0_reg_sel_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\r0_reg_sel_reg_n_0_[1] ),
        .O(next_xfer_is_end__1));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFCFC5FFF)) 
    \state[1]_i_3__1 
       (.I0(r0_last_reg_n_0),
        .I1(m_axi_arready_i),
        .I2(\state_reg_n_0_[2] ),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00B00000)) 
    \state[2]_i_1__0 
       (.I0(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ),
        .I1(Q[0]),
        .I2(m_axi_arready_i),
        .I3(\state_reg_n_0_[2] ),
        .I4(Q[1]),
        .I5(\state[2]_i_3_n_0 ),
        .O(state[2]));
  LUT4 #(
    .INIT(16'h0008)) 
    \state[2]_i_2 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tid[1]),
        .I2(s_axis_tid[0]),
        .I3(s_axis_tid[2]),
        .O(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ));
  LUT6 #(
    .INIT(64'h0000000004440000)) 
    \state[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\state_reg_n_0_[2] ),
        .I3(r0_last_reg_n_0),
        .I4(\u_axis_switch_v1_1_26_axis_switch_1x5/mux_tvalid_2 ),
        .I5(next_xfer_is_end__1),
        .O(\state[2]_i_3_n_0 ));
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
        .D(\state[1]_i_1__3_n_0 ),
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

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_mux_enc" *) 
module design_1_axi_mm2s_mapper_2_1_axis_infrastructure_v1_1_0_mux_enc
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ,
    f_mux4_return,
    arb_sel_i);
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  input [0:0]f_mux4_return;
  input [0:0]arb_sel_i;

  wire [0:0]arb_sel_i;
  wire [0:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;

  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [0]),
        .I1(1'b0),
        .O(m_axis_tdata[0]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[10].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [10]),
        .I1(1'b0),
        .O(m_axis_tdata[10]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[11].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [11]),
        .I1(1'b0),
        .O(m_axis_tdata[11]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[12].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [12]),
        .I1(1'b0),
        .O(m_axis_tdata[12]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[13].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [13]),
        .I1(1'b0),
        .O(m_axis_tdata[13]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[14].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [14]),
        .I1(1'b0),
        .O(m_axis_tdata[14]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[15].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [15]),
        .I1(1'b0),
        .O(m_axis_tdata[15]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[16].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [16]),
        .I1(1'b0),
        .O(m_axis_tdata[16]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[17].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [17]),
        .I1(1'b0),
        .O(m_axis_tdata[17]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[18].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [18]),
        .I1(1'b0),
        .O(m_axis_tdata[18]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[19].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [19]),
        .I1(1'b0),
        .O(m_axis_tdata[19]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[1].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [1]),
        .I1(1'b0),
        .O(m_axis_tdata[1]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[20].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [20]),
        .I1(1'b0),
        .O(m_axis_tdata[20]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[21].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [21]),
        .I1(1'b0),
        .O(m_axis_tdata[21]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[22].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [22]),
        .I1(1'b0),
        .O(m_axis_tdata[22]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[23].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [23]),
        .I1(1'b0),
        .O(m_axis_tdata[23]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[24].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [24]),
        .I1(1'b0),
        .O(m_axis_tdata[24]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[25].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [25]),
        .I1(1'b0),
        .O(m_axis_tdata[25]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[26].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [26]),
        .I1(1'b0),
        .O(m_axis_tdata[26]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[27].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [27]),
        .I1(1'b0),
        .O(m_axis_tdata[27]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[28].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [28]),
        .I1(1'b0),
        .O(m_axis_tdata[28]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[29].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [29]),
        .I1(1'b0),
        .O(m_axis_tdata[29]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[2].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [2]),
        .I1(1'b0),
        .O(m_axis_tdata[2]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[30].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [30]),
        .I1(1'b0),
        .O(m_axis_tdata[30]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[31].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [31]),
        .I1(1'b0),
        .O(m_axis_tdata[31]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[32].mux_s2_inst 
       (.I0(1'b1),
        .I1(1'b1),
        .O(m_axis_tkeep[0]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 ),
        .I1(1'b1),
        .O(m_axis_tkeep[1]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 ),
        .I1(1'b1),
        .O(m_axis_tkeep[2]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst 
       (.I0(f_mux4_return),
        .I1(1'b1),
        .O(m_axis_tkeep[3]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [32]),
        .I1(1'b0),
        .O(m_axis_tlast),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[37].mux_s2_inst 
       (.I0(arb_sel_i),
        .I1(1'b0),
        .O(m_axis_tid[0]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[38].mux_s2_inst 
       (.I0(arb_sel_i),
        .I1(1'b0),
        .O(m_axis_tid[1]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[39].mux_s2_inst 
       (.I0(1'b0),
        .I1(1'b1),
        .O(m_axis_tid[2]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[3].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [3]),
        .I1(1'b0),
        .O(m_axis_tdata[3]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[4].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [4]),
        .I1(1'b0),
        .O(m_axis_tdata[4]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[5].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [5]),
        .I1(1'b0),
        .O(m_axis_tdata[5]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[6].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [6]),
        .I1(1'b0),
        .O(m_axis_tdata[6]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[7].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [7]),
        .I1(1'b0),
        .O(m_axis_tdata[7]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[8].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [8]),
        .I1(1'b0),
        .O(m_axis_tdata[8]),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[9].mux_s2_inst 
       (.I0(\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 [9]),
        .I1(1'b0),
        .O(m_axis_tdata[9]),
        .S(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_infrastructure_v1_1_0_mux_enc" *) 
module design_1_axi_mm2s_mapper_2_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0
   (o_i,
    arb_done_i,
    f_mux40_return,
    m_axis_tlast,
    m_axis_tready,
    \busy_r_reg[0] ,
    arb_gnt_i,
    \gen_tdest_router.busy_r );
  output o_i;
  output arb_done_i;
  input f_mux40_return;
  input m_axis_tlast;
  input m_axis_tready;
  input \busy_r_reg[0] ;
  input [0:0]arb_gnt_i;
  input [0:0]\gen_tdest_router.busy_r ;

  wire arb_done_i;
  wire [0:0]arb_gnt_i;
  wire \busy_r_reg[0] ;
  wire f_mux40_return;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire o_i;

  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \busy_r[3]_i_2 
       (.I0(o_i),
        .I1(m_axis_tlast),
        .I2(m_axis_tready),
        .I3(\busy_r_reg[0] ),
        .I4(arb_gnt_i),
        .I5(\gen_tdest_router.busy_r ),
        .O(arb_done_i));
  (* BOX_TYPE = "PRIMITIVE" *) 
  MUXF7 \gen_fpga.genblk2.gen_mux_5_8[0].mux_s2_inst 
       (.I0(f_mux40_return),
        .I1(1'b0),
        .O(o_i),
        .S(1'b0));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_arb_rr" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_arb_rr
   (fifo_index25_out,
    \arb_gnt_r_reg[0]_0 ,
    \gen_tdest_routing.busy_ns ,
    \arb_gnt_r_reg[3]_0 ,
    \gen_tdest_routing.busy_ns_0 ,
    \arb_gnt_r_reg[0]_1 ,
    f_mux4_return,
    \arb_sel_r_reg[1]_0 ,
    \arb_sel_r_reg[1]_1 ,
    \arb_sel_r_reg[1]_2 ,
    areset_r1,
    aclk,
    \fifo_index_reg[1] ,
    m_axi_bvalid_i,
    m_axis_tready,
    m_axi_bready,
    m_axi_bvalid,
    arb_done_i,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    Q,
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst );
  output fifo_index25_out;
  output \arb_gnt_r_reg[0]_0 ;
  output \gen_tdest_routing.busy_ns ;
  output \arb_gnt_r_reg[3]_0 ;
  output \gen_tdest_routing.busy_ns_0 ;
  output \arb_gnt_r_reg[0]_1 ;
  output [0:0]f_mux4_return;
  output \arb_sel_r_reg[1]_0 ;
  output \arb_sel_r_reg[1]_1 ;
  output \arb_sel_r_reg[1]_2 ;
  input areset_r1;
  input aclk;
  input \fifo_index_reg[1] ;
  input m_axi_bvalid_i;
  input m_axis_tready;
  input m_axi_bready;
  input m_axi_bvalid;
  input arb_done_i;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [0:0]Q;
  input \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;

  wire [0:0]Q;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire arb_done_i;
  wire \arb_gnt_r[0]_i_1_n_0 ;
  wire \arb_gnt_r[3]_i_1_n_0 ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_gnt_r_reg[0]_1 ;
  wire \arb_gnt_r_reg[3]_0 ;
  wire \arb_sel_r[1]_i_1_n_0 ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[1]_1 ;
  wire \arb_sel_r_reg[1]_2 ;
  wire areset_r1;
  wire [0:0]f_mux4_return;
  wire fifo_index25_out;
  wire \fifo_index_reg[1] ;
  wire \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_bvalid_i;
  wire m_axis_tready;
  wire [0:0]sel_i;
  wire valid_i;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAE)) 
    arb_busy_r_i_1
       (.I0(valid_i),
        .I1(arb_busy_r),
        .I2(arb_done_i),
        .O(arb_busy_ns));
  FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(areset_r1));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h02020002)) 
    \arb_gnt_r[0]_i_1 
       (.I0(valid_i),
        .I1(sel_i),
        .I2(areset_r1),
        .I3(arb_busy_r),
        .I4(arb_done_i),
        .O(\arb_gnt_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h08080008)) 
    \arb_gnt_r[3]_i_1 
       (.I0(valid_i),
        .I1(sel_i),
        .I2(areset_r1),
        .I3(arb_busy_r),
        .I4(arb_done_i),
        .O(\arb_gnt_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101010101010FF10)) 
    \arb_gnt_r[3]_i_2 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(\arb_gnt_r_reg[3]_0 ),
        .I2(Q),
        .I3(m_axi_bvalid_i),
        .I4(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I5(\arb_gnt_r_reg[0]_0 ),
        .O(valid_i));
  LUT6 #(
    .INIT(64'h1010101010100010)) 
    \arb_gnt_r[3]_i_3 
       (.I0(\gen_tdest_routing.busy_r_reg[0] ),
        .I1(\arb_gnt_r_reg[3]_0 ),
        .I2(Q),
        .I3(m_axi_bvalid_i),
        .I4(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I5(\arb_gnt_r_reg[0]_0 ),
        .O(sel_i));
  FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[0]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \arb_gnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_gnt_r[3]_i_1_n_0 ),
        .Q(\arb_gnt_r_reg[3]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hAEFFA200)) 
    \arb_sel_r[1]_i_1 
       (.I0(sel_i),
        .I1(arb_busy_r),
        .I2(arb_done_i),
        .I3(valid_i),
        .I4(\arb_sel_r_reg[1]_0 ),
        .O(\arb_sel_r[1]_i_1_n_0 ));
  FDRE \arb_sel_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\arb_sel_r[1]_i_1_n_0 ),
        .Q(\arb_sel_r_reg[1]_0 ),
        .R(areset_r1));
  LUT2 #(
    .INIT(4'hE)) 
    \busy_r[3]_i_3 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\fifo_index_reg[1] ),
        .O(\arb_gnt_r_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h1FFF000000000000)) 
    \fifo_index[3]_i_3 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\fifo_index_reg[1] ),
        .I2(m_axi_bvalid_i),
        .I3(m_axis_tready),
        .I4(m_axi_bready),
        .I5(m_axi_bvalid),
        .O(fifo_index25_out));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ),
        .O(\arb_sel_r_reg[1]_1 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ),
        .O(\arb_sel_r_reg[1]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst_i_1 
       (.I0(\arb_sel_r_reg[1]_0 ),
        .I1(\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ),
        .O(f_mux4_return));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1 
       (.I0(\arb_gnt_r_reg[3]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0] ),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \gen_tdest_routing.busy_r[0]_i_1__0 
       (.I0(\arb_gnt_r_reg[0]_0 ),
        .I1(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .I2(arb_done_i),
        .O(\gen_tdest_routing.busy_ns_0 ));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axis_switch" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    arb_sel_i,
    fifo_index25_out,
    \arb_gnt_r_reg[0] ,
    \busy_r_reg[0] ,
    m_axis_tvalid,
    r0_out_sel_r04_out,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    f_mux40_return,
    areset_r1,
    aclk,
    m_axi_bvalid_i,
    m_axis_tready,
    m_axi_bready,
    m_axi_bvalid,
    Q,
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst );
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  output [0:0]arb_sel_i;
  output fifo_index25_out;
  output [0:0]\arb_gnt_r_reg[0] ;
  output [0:0]\busy_r_reg[0] ;
  output m_axis_tvalid;
  output r0_out_sel_r04_out;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  input f_mux40_return;
  input areset_r1;
  input aclk;
  input m_axi_bvalid_i;
  input m_axis_tready;
  input m_axi_bready;
  input m_axi_bvalid;
  input [0:0]Q;
  input \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;

  wire [0:0]Q;
  wire aclk;
  wire arb_done_i;
  wire [3:3]arb_gnt_i;
  wire [0:0]\arb_gnt_r_reg[0] ;
  wire [0:0]arb_sel_i;
  wire areset_r1;
  wire [0:0]\busy_r_reg[0] ;
  wire f_mux40_return;
  wire fifo_index25_out;
  wire \gen_decoder[0].axisc_decoder_0_n_0 ;
  wire \gen_decoder[3].axisc_decoder_0_n_0 ;
  wire \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8 ;
  wire \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9 ;
  wire [35:35]\gen_tdest_router.mux_enc_0/f_mux4_return ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_bvalid_i;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire r0_out_sel_r04_out;

  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ));
  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder_2 \gen_decoder[3].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[3].axisc_decoder_0_n_0 ));
  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter 
       (.Q(Q),
        .aclk(aclk),
        .arb_done_i(arb_done_i),
        .arb_gnt_i(arb_gnt_i),
        .\arb_gnt_r_reg[0] (\arb_gnt_r_reg[0] ),
        .\arb_gnt_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5 ),
        .\arb_sel_r_reg[1] (arb_sel_i),
        .\arb_sel_r_reg[1]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8 ),
        .\arb_sel_r_reg[1]_1 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9 ),
        .areset_r1(areset_r1),
        .f_mux4_return(\gen_tdest_router.mux_enc_0/f_mux4_return ),
        .fifo_index25_out(fifo_index25_out),
        .\fifo_index_reg[1] (\busy_r_reg[0] ),
        .\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_decoder[3].axisc_decoder_0_n_0 ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_decoder[0].axisc_decoder_0_n_0 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axis_tready(m_axis_tready));
  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.Q(Q),
        .aclk(aclk),
        .arb_done_i(arb_done_i),
        .arb_gnt_i(arb_gnt_i),
        .arb_sel_i(arb_sel_i),
        .areset_r1(areset_r1),
        .\busy_r_reg[0] (\busy_r_reg[0] ),
        .\busy_r_reg[0]_0 (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_5 ),
        .\busy_r_reg[0]_1 (\arb_gnt_r_reg[0] ),
        .f_mux40_return(f_mux40_return),
        .f_mux4_return(\gen_tdest_router.mux_enc_0/f_mux4_return ),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_8 ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst (\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_26_axis_switch_arbiter_n_9 ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .r0_out_sel_r04_out(r0_out_sel_r04_out));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axis_switch" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch__parameterized0
   (\gen_tdest_routing.decode_err_r_reg ,
    areset_r1,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output \gen_tdest_routing.decode_err_r_reg ;
  input areset_r1;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire aclk;
  wire areset_r1;
  wire \gen_tdest_routing.decode_err_r_reg ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder__parameterized0 \gen_decoder[0].axisc_decoder_0 
       (.aclk(aclk),
        .areset_r1(areset_r1),
        .\gen_tdest_routing.decode_err_r_reg_0 (\gen_tdest_routing.decode_err_r_reg ),
        .s_axis_tid(s_axis_tid),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axis_switch_arbiter" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axis_switch_arbiter
   (fifo_index25_out,
    \arb_gnt_r_reg[0] ,
    \gen_tdest_routing.busy_ns ,
    arb_gnt_i,
    \gen_tdest_routing.busy_ns_0 ,
    \arb_gnt_r_reg[0]_0 ,
    f_mux4_return,
    \arb_sel_r_reg[1] ,
    \arb_sel_r_reg[1]_0 ,
    \arb_sel_r_reg[1]_1 ,
    areset_r1,
    aclk,
    \fifo_index_reg[1] ,
    m_axi_bvalid_i,
    m_axis_tready,
    m_axi_bready,
    m_axi_bvalid,
    arb_done_i,
    \gen_tdest_routing.busy_r_reg[0] ,
    \gen_tdest_routing.busy_r_reg[0]_0 ,
    Q,
    \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst );
  output fifo_index25_out;
  output \arb_gnt_r_reg[0] ;
  output \gen_tdest_routing.busy_ns ;
  output [0:0]arb_gnt_i;
  output \gen_tdest_routing.busy_ns_0 ;
  output \arb_gnt_r_reg[0]_0 ;
  output [0:0]f_mux4_return;
  output \arb_sel_r_reg[1] ;
  output \arb_sel_r_reg[1]_0 ;
  output \arb_sel_r_reg[1]_1 ;
  input areset_r1;
  input aclk;
  input \fifo_index_reg[1] ;
  input m_axi_bvalid_i;
  input m_axis_tready;
  input m_axi_bready;
  input m_axi_bvalid;
  input arb_done_i;
  input \gen_tdest_routing.busy_r_reg[0] ;
  input \gen_tdest_routing.busy_r_reg[0]_0 ;
  input [0:0]Q;
  input \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;

  wire [0:0]Q;
  wire aclk;
  wire arb_done_i;
  wire [0:0]arb_gnt_i;
  wire \arb_gnt_r_reg[0] ;
  wire \arb_gnt_r_reg[0]_0 ;
  wire \arb_sel_r_reg[1] ;
  wire \arb_sel_r_reg[1]_0 ;
  wire \arb_sel_r_reg[1]_1 ;
  wire areset_r1;
  wire [0:0]f_mux4_return;
  wire fifo_index25_out;
  wire \fifo_index_reg[1] ;
  wire \gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_ns_0 ;
  wire \gen_tdest_routing.busy_r_reg[0] ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire m_axi_bvalid_i;
  wire m_axis_tready;

  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_arb_rr \gen_mi_arb[0].gen_arb_algorithm.gen_fixed_priority.inst_arb_rr_1 
       (.Q(Q),
        .aclk(aclk),
        .arb_done_i(arb_done_i),
        .\arb_gnt_r_reg[0]_0 (\arb_gnt_r_reg[0] ),
        .\arb_gnt_r_reg[0]_1 (\arb_gnt_r_reg[0]_0 ),
        .\arb_gnt_r_reg[3]_0 (arb_gnt_i),
        .\arb_sel_r_reg[1]_0 (\arb_sel_r_reg[1] ),
        .\arb_sel_r_reg[1]_1 (\arb_sel_r_reg[1]_0 ),
        .\arb_sel_r_reg[1]_2 (\arb_sel_r_reg[1]_1 ),
        .areset_r1(areset_r1),
        .f_mux4_return(f_mux4_return),
        .fifo_index25_out(fifo_index25_out),
        .\fifo_index_reg[1] (\fifo_index_reg[1] ),
        .\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst (\gen_fpga.genblk2.gen_mux_5_8[35].mux_s2_inst ),
        .\gen_tdest_routing.busy_ns (\gen_tdest_routing.busy_ns ),
        .\gen_tdest_routing.busy_ns_0 (\gen_tdest_routing.busy_ns_0 ),
        .\gen_tdest_routing.busy_r_reg[0] (\gen_tdest_routing.busy_r_reg[0] ),
        .\gen_tdest_routing.busy_r_reg[0]_0 (\gen_tdest_routing.busy_r_reg[0]_0 ),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bvalid_i(m_axi_bvalid_i),
        .m_axis_tready(m_axis_tready));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_arb_responder" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_arb_responder
   (m_axis_tvalid,
    \busy_r_reg[0]_0 ,
    \gen_tdest_router.busy_r ,
    r0_out_sel_r04_out,
    \busy_r_reg[0]_1 ,
    arb_gnt_i,
    o_i,
    Q,
    m_axis_tready,
    arb_done_i,
    areset_r1,
    aclk);
  output m_axis_tvalid;
  output \busy_r_reg[0]_0 ;
  output [0:0]\gen_tdest_router.busy_r ;
  output r0_out_sel_r04_out;
  input [0:0]\busy_r_reg[0]_1 ;
  input [0:0]arb_gnt_i;
  input o_i;
  input [0:0]Q;
  input m_axis_tready;
  input arb_done_i;
  input areset_r1;
  input aclk;

  wire [0:0]Q;
  wire aclk;
  wire arb_done_i;
  wire [0:0]arb_gnt_i;
  wire areset_r1;
  wire \busy_r[0]_i_1_n_0 ;
  wire \busy_r[3]_i_1_n_0 ;
  wire \busy_r_reg[0]_0 ;
  wire [0:0]\busy_r_reg[0]_1 ;
  wire [0:0]\gen_tdest_router.busy_r ;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire o_i;
  wire r0_out_sel_r04_out;

  LUT4 #(
    .INIT(16'h000E)) 
    \busy_r[0]_i_1 
       (.I0(\busy_r_reg[0]_0 ),
        .I1(\busy_r_reg[0]_1 ),
        .I2(arb_done_i),
        .I3(areset_r1),
        .O(\busy_r[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h000E)) 
    \busy_r[3]_i_1 
       (.I0(\gen_tdest_router.busy_r ),
        .I1(arb_gnt_i),
        .I2(arb_done_i),
        .I3(areset_r1),
        .O(\busy_r[3]_i_1_n_0 ));
  FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[0]_i_1_n_0 ),
        .Q(\busy_r_reg[0]_0 ),
        .R(1'b0));
  FDRE \busy_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\busy_r[3]_i_1_n_0 ),
        .Q(\gen_tdest_router.busy_r ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    m_axis_tvalid_INST_0
       (.I0(\busy_r_reg[0]_1 ),
        .I1(\busy_r_reg[0]_0 ),
        .I2(arb_gnt_i),
        .I3(\gen_tdest_router.busy_r ),
        .I4(o_i),
        .O(m_axis_tvalid));
  LUT4 #(
    .INIT(16'h8880)) 
    \state[0]_i_2 
       (.I0(Q),
        .I1(m_axis_tready),
        .I2(\gen_tdest_router.busy_r ),
        .I3(arb_gnt_i),
        .O(r0_out_sel_r04_out));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r1,
    \gen_tdest_routing.busy_ns ,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r1;
  input \gen_tdest_routing.busy_ns ;
  input aclk;

  wire aclk;
  wire areset_r1;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r1));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder_2
   (\gen_tdest_routing.busy_r_reg[0]_0 ,
    areset_r1,
    \gen_tdest_routing.busy_ns ,
    aclk);
  output \gen_tdest_routing.busy_r_reg[0]_0 ;
  input areset_r1;
  input \gen_tdest_routing.busy_ns ;
  input aclk;

  wire aclk;
  wire areset_r1;
  wire \gen_tdest_routing.busy_ns ;
  wire \gen_tdest_routing.busy_r_reg[0]_0 ;

  FDRE \gen_tdest_routing.busy_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.busy_ns ),
        .Q(\gen_tdest_routing.busy_r_reg[0]_0 ),
        .R(areset_r1));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_decoder" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_decoder__parameterized0
   (\gen_tdest_routing.decode_err_r_reg_0 ,
    areset_r1,
    aclk,
    s_axis_tid,
    s_axis_tvalid);
  output \gen_tdest_routing.decode_err_r_reg_0 ;
  input areset_r1;
  input aclk;
  input [2:0]s_axis_tid;
  input s_axis_tvalid;

  wire aclk;
  wire areset_r1;
  wire \gen_tdest_routing.decode_err_r0 ;
  wire \gen_tdest_routing.decode_err_r_reg_0 ;
  wire [2:0]s_axis_tid;
  wire s_axis_tvalid;

  LUT5 #(
    .INIT(32'h0000E000)) 
    \gen_tdest_routing.decode_err_r_i_1 
       (.I0(s_axis_tid[1]),
        .I1(s_axis_tid[0]),
        .I2(s_axis_tid[2]),
        .I3(s_axis_tvalid),
        .I4(\gen_tdest_routing.decode_err_r_reg_0 ),
        .O(\gen_tdest_routing.decode_err_r0 ));
  FDRE \gen_tdest_routing.decode_err_r_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_tdest_routing.decode_err_r0 ),
        .Q(\gen_tdest_routing.decode_err_r_reg_0 ),
        .R(areset_r1));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_26_axisc_transfer_mux" *) 
module design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_transfer_mux
   (m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    arb_done_i,
    m_axis_tvalid,
    \busy_r_reg[0] ,
    r0_out_sel_r04_out,
    \gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ,
    \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ,
    f_mux4_return,
    arb_sel_i,
    f_mux40_return,
    m_axis_tready,
    \busy_r_reg[0]_0 ,
    arb_gnt_i,
    \busy_r_reg[0]_1 ,
    Q,
    areset_r1,
    aclk);
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [2:0]m_axis_tid;
  output arb_done_i;
  output m_axis_tvalid;
  output \busy_r_reg[0] ;
  output r0_out_sel_r04_out;
  input [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  input \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  input [0:0]f_mux4_return;
  input [0:0]arb_sel_i;
  input f_mux40_return;
  input m_axis_tready;
  input \busy_r_reg[0]_0 ;
  input [0:0]arb_gnt_i;
  input [0:0]\busy_r_reg[0]_1 ;
  input [0:0]Q;
  input areset_r1;
  input aclk;

  wire [0:0]Q;
  wire aclk;
  wire arb_done_i;
  wire [0:0]arb_gnt_i;
  wire [0:0]arb_sel_i;
  wire areset_r1;
  wire \busy_r_reg[0] ;
  wire \busy_r_reg[0]_0 ;
  wire [0:0]\busy_r_reg[0]_1 ;
  wire f_mux40_return;
  wire [0:0]f_mux4_return;
  wire \gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ;
  wire \gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ;
  wire [32:0]\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ;
  wire [3:3]\gen_tdest_router.busy_r ;
  wire [31:0]m_axis_tdata;
  wire [2:0]m_axis_tid;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire o_i;
  wire r0_out_sel_r04_out;

  design_1_axi_mm2s_mapper_2_1_axis_switch_v1_1_26_axisc_arb_responder \gen_tdest_router.axisc_arb_responder 
       (.Q(Q),
        .aclk(aclk),
        .arb_done_i(arb_done_i),
        .arb_gnt_i(arb_gnt_i),
        .areset_r1(areset_r1),
        .\busy_r_reg[0]_0 (\busy_r_reg[0] ),
        .\busy_r_reg[0]_1 (\busy_r_reg[0]_1 ),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .o_i(o_i),
        .r0_out_sel_r04_out(r0_out_sel_r04_out));
  design_1_axi_mm2s_mapper_2_1_axis_infrastructure_v1_1_0_mux_enc \gen_tdest_router.mux_enc_0 
       (.arb_sel_i(arb_sel_i),
        .f_mux4_return(f_mux4_return),
        .\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[33].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[34].mux_s2_inst ),
        .\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst_0 (\gen_fpga.genblk2.gen_mux_5_8[36].mux_s2_inst ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tid(m_axis_tid),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast));
  design_1_axi_mm2s_mapper_2_1_axis_infrastructure_v1_1_0_mux_enc__parameterized0 \gen_tdest_router.mux_enc_1 
       (.arb_done_i(arb_done_i),
        .arb_gnt_i(arb_gnt_i),
        .\busy_r_reg[0] (\busy_r_reg[0]_0 ),
        .f_mux40_return(f_mux40_return),
        .\gen_tdest_router.busy_r (\gen_tdest_router.busy_r ),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .o_i(o_i));
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
