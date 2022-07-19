//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_mm2s_mapper_v1_1_25_stream_expander #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter C_FAMILY                              = "virtex6",
  parameter integer C_PAYLOAD_WIDTH               = 61,
  parameter integer C_AXIS_TDATA_WIDTH            = 32,
  parameter integer C_AXIS_TDEST_WIDTH            = 3
  
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

                                                    
  // Input  AXI4-Stream
  input  wire                                       s_axis_tvalid,
  output wire                                       s_axis_tready,
  input  wire [C_AXIS_TDATA_WIDTH-1:0]               s_axis_tdata,
  input  wire [C_AXIS_TDATA_WIDTH/8-1:0]             s_axis_tkeep,
  input  wire                                       s_axis_tlast,
  input  wire [C_AXIS_TDEST_WIDTH-1:0]               s_axis_tdest,

  // input  AXI payload
  output wire                                       m_valid,
  input  wire                                       m_ready,
  output wire [C_PAYLOAD_WIDTH-1:0]                 m_payload
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function integer f_calc_next_common_multiple (
  input integer tdata, 
  input integer payload 
);
  integer s;
  begin
    s = tdata;
    while ( s < payload) begin
      s = s + tdata;
    end
    f_calc_next_common_multiple = s;
 end
endfunction // clogb2

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam LP_INT_TDATA_WIDTH = f_calc_next_common_multiple ( C_AXIS_TDATA_WIDTH, C_PAYLOAD_WIDTH ) ;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////

generate
if (LP_INT_TDATA_WIDTH != C_AXIS_TDATA_WIDTH) begin : gen_dwidth_converter
  wire [LP_INT_TDATA_WIDTH-1:0] int_tdata;

  axis_dwidth_converter_v1_1_25_axis_dwidth_converter #(
    .C_FAMILY             ( C_FAMILY           ) ,
    .C_S_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH ) ,
    .C_M_AXIS_TDATA_WIDTH ( LP_INT_TDATA_WIDTH ) ,
    .C_AXIS_TID_WIDTH     ( 1                  ) ,
    .C_AXIS_TDEST_WIDTH   ( 1                  ) ,
    .C_S_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_M_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_AXIS_SIGNAL_SET    ( 'B00011011         ) 
  ) axis_dwidth_converter_0 (
    .aclk          ( aclk          ) ,
    .aresetn       ( aresetn       ) ,
    .aclken        ( 1'b1          ) ,
    .s_axis_tvalid ( s_axis_tvalid ) ,
    .s_axis_tready ( s_axis_tready ) ,
    .s_axis_tdata  ( s_axis_tdata  ) ,
    .s_axis_tstrb  ( {C_AXIS_TDATA_WIDTH/8{1'b0}} ),
    .s_axis_tkeep  ( s_axis_tkeep  ) ,
    .s_axis_tlast  ( s_axis_tlast  ) ,
    .s_axis_tid    ( 1'b0          ) ,
    .s_axis_tdest  ( 1'b0          ) ,
    .s_axis_tuser  ( 1'b0          ) ,
    .m_axis_tvalid ( m_valid       ) ,
    .m_axis_tready ( m_ready       ) ,
    .m_axis_tdata  ( int_tdata     ) ,
    .m_axis_tkeep  ( ) ,
    .m_axis_tstrb  ( ) ,
    .m_axis_tlast  ( ) ,
    .m_axis_tid    ( ) ,
    .m_axis_tdest  ( ) ,
    .m_axis_tuser  ( )
  );

  assign m_payload = int_tdata[0+:C_PAYLOAD_WIDTH];
end
else begin : gen_no_dwidth_converter
  assign m_valid = s_axis_tvalid;
  assign s_axis_tready = m_ready;
  assign m_payload = s_axis_tdata[0+:C_PAYLOAD_WIDTH];
end
endgenerate

endmodule // axi_mm2s_mapper

`default_nettype wire


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axi_mm2s_mapper
//   Encapsulates/expands AXI Memory Mapped protocol on to AXI4-Stream.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   axi_mm2s_mapper
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_mm2s_mapper_v1_1_25_stream_encapsulator #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter C_FAMILY                              = "virtex6",
  parameter integer C_PAYLOAD_WIDTH               = 61,
  parameter integer C_AXIS_TDATA_WIDTH            = 32,
  parameter integer C_AXIS_TDEST_WIDTH            = 3, 
  parameter [C_AXIS_TDEST_WIDTH-1:0] C_AXIS_TDEST_VALUE = 3'b000
  
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

  // Input AXI payload
  input  wire                                       s_valid,
  output wire                                       s_ready,
  input  wire [C_PAYLOAD_WIDTH-1:0]                 s_payload,
                                                    
  // Output AXI4-Stream
  output wire                                       m_axis_tvalid,
  input  wire                                       m_axis_tready,
  output wire [C_AXIS_TDATA_WIDTH-1:0]              m_axis_tdata,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0]            m_axis_tkeep,
  output wire                                       m_axis_tlast,
  output wire [C_AXIS_TDEST_WIDTH-1:0]              m_axis_tdest
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////
function integer f_calc_next_common_multiple (
  input integer tdata, 
  input integer payload 
);
  integer s;
  begin
    s = tdata;
    while ( s < payload) begin
      s = s + tdata;
    end
    f_calc_next_common_multiple = s;
 end
endfunction // clogb2

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam LP_INT_TDATA_WIDTH = f_calc_next_common_multiple ( C_AXIS_TDATA_WIDTH, C_PAYLOAD_WIDTH ) ;

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
wire [LP_INT_TDATA_WIDTH-1:0] int_tdata;
wire [LP_INT_TDATA_WIDTH/8-1:0] int_tkeep;
wire                            int_tlast;

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////
generate
if (LP_INT_TDATA_WIDTH != C_AXIS_TDATA_WIDTH) begin : gen_dwidth_converter
  axis_dwidth_converter_v1_1_25_axis_dwidth_converter #(
    .C_FAMILY             ( C_FAMILY           ) ,
    .C_S_AXIS_TDATA_WIDTH ( LP_INT_TDATA_WIDTH ) ,
    .C_M_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH ) ,
    .C_AXIS_TID_WIDTH     ( 1                  ) ,
    .C_AXIS_TDEST_WIDTH   ( 1                  ) ,
    .C_S_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_M_AXIS_TUSER_WIDTH ( 1                  ) ,
    .C_AXIS_SIGNAL_SET    ( 'B00011011         ) 
  ) axis_dwidth_converter_0 (
    .aclk          ( aclk          ) ,
    .aresetn       ( aresetn       ) ,
    .aclken        ( 1'b1          ) ,
    .s_axis_tvalid ( s_valid       ) ,
    .s_axis_tready ( s_ready       ) ,
    .s_axis_tdata  ( int_tdata     ) ,
    .s_axis_tstrb  ( {LP_INT_TDATA_WIDTH/8{1'b0}} ),
    .s_axis_tkeep  ( int_tkeep     ) ,
    .s_axis_tlast  ( int_tlast     ) ,
    .s_axis_tid    ( 1'b0          ) ,
    .s_axis_tdest  ( 1'b0          ) ,
    .s_axis_tuser  ( 1'b0          ) ,
    .m_axis_tvalid ( m_axis_tvalid ) ,
    .m_axis_tready ( m_axis_tready ) ,
    .m_axis_tdata  ( m_axis_tdata  ) ,
    .m_axis_tkeep  ( m_axis_tkeep  ) ,
    .m_axis_tstrb  (               ) ,
    .m_axis_tlast  ( m_axis_tlast  ) ,
    .m_axis_tid    (               ) ,
    .m_axis_tdest  (               ) ,
    .m_axis_tuser  (               )
  );
end
else begin : gen_no_dwidth_converter
  assign m_axis_tvalid = s_valid;
  assign s_ready = m_axis_tready;
  assign m_axis_tdata = int_tdata;
  assign m_axis_tkeep = int_tkeep;
  assign m_axis_tlast = int_tlast;
end

// If the incoming payload width is not equal to the output axis tdata width.
// Expand the payload width by padding the upper bits with zeros such that the
// payload width becomes divisible evenly by the axis tdata width.  TKEEPs are
// added to indicates which bytes are padded. Partial bytes at the boundary
// may be padded, but TKEEP will indicate the whole byte is valid since it's
// granularity only covers bytes.
if (C_PAYLOAD_WIDTH != LP_INT_TDATA_WIDTH) begin : gen_payload_expansion
  assign int_tdata[0+:C_PAYLOAD_WIDTH] = s_payload;
  assign int_tdata[C_PAYLOAD_WIDTH+:(LP_INT_TDATA_WIDTH-C_PAYLOAD_WIDTH)] = {LP_INT_TDATA_WIDTH-C_PAYLOAD_WIDTH{1'b0}};

  if (C_PAYLOAD_WIDTH % 8 == 0) begin : gen_tkeep_no_partial_byte
    assign int_tkeep[0+:C_PAYLOAD_WIDTH/8] = {C_PAYLOAD_WIDTH/8{1'b1}};
    assign int_tkeep[C_PAYLOAD_WIDTH/8+:(LP_INT_TDATA_WIDTH/8-C_PAYLOAD_WIDTH/8)] 
        = {LP_INT_TDATA_WIDTH/8-C_PAYLOAD_WIDTH/8{1'b0}};
  end
  else begin : gen_tkeep_partial_byte
    assign int_tkeep[0+:(C_PAYLOAD_WIDTH/8)+1] = {((C_PAYLOAD_WIDTH/8)+1){1'b1}};
    if (((C_PAYLOAD_WIDTH/8)+1) < LP_INT_TDATA_WIDTH/8) begin : gen_pad_upper_tkeep_with_0
      assign int_tkeep[((C_PAYLOAD_WIDTH/8)+1)+:((LP_INT_TDATA_WIDTH/8)-((C_PAYLOAD_WIDTH/8)+1))] 
        = {((LP_INT_TDATA_WIDTH/8)-((C_PAYLOAD_WIDTH/8)+1)){1'b0}};
    end
    else begin : gen_no_pad_upper_tkeep_with_0
    end
  end
end
else begin : gen_no_payload_expansion
  assign int_tdata = s_payload;
  assign int_tkeep = {C_PAYLOAD_WIDTH/8{1'b1}};
end
  
endgenerate

assign int_tlast = 1'b1;
    
assign m_axis_tdest = C_AXIS_TDEST_VALUE[0+:C_AXIS_TDEST_WIDTH];

endmodule // axi_mm2s_mapper

`default_nettype wire


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axi_mm2s_mapper
//   Encapsulates/expands AXI Memory Mapped protocol on to AXI4-Stream.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   top
//     axi2vector
//     vector2axi
//     stream_encapsulator x 5
//       axis_dwidth_converter
//     stream_expander x 5
//       axis_dwidth_converter
//     axis_switch (5x1)
//     axis_switch (1x5)
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

module axi_mm2s_mapper_v1_1_25_transaction_counter #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter integer C_COUNTER_WIDTH           = 4
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

  input  wire                                       incr_trans,
  input  wire                                       decr_trans,

  output wire                                       zero_n,
  output wire                                       max_n
);

////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
////////////////////////////////////////////////////////////////////////////////
reg  [C_COUNTER_WIDTH-1:0]  num_active_trans;
reg                             count_is_zero;
reg                             count_is_max;

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////
assign max_n = ~count_is_max;

always @(posedge aclk) begin 
  if (~aresetn) begin 
    count_is_max <= 1'b0;
  end
  else begin 
    count_is_max <= incr_trans & ~decr_trans & (num_active_trans == {C_COUNTER_WIDTH{1'b1}}) ? 1'b1 :
                   ~incr_trans & decr_trans ? 1'b0 : 
                   count_is_max;
  end
end

assign zero_n = ~count_is_zero;

always @(posedge aclk) begin 
  if (~aresetn) begin 
    count_is_zero <= 1'b1;
  end
  else begin 
    count_is_zero <= ~incr_trans & decr_trans & (num_active_trans == ({C_COUNTER_WIDTH{1'b0}} + 1'b1)) ? 1'b1 :
                     incr_trans & ~decr_trans ? 1'b0 : 
                     count_is_zero;
  end
end

always @(posedge aclk) begin 
  if (~aresetn) begin 
    num_active_trans <= {C_COUNTER_WIDTH{1'b0}};
  end
  else begin 
    num_active_trans <= ~incr_trans & decr_trans ? num_active_trans - 1'b1 : 
                        incr_trans & ~decr_trans ? num_active_trans + 1'b1 : 
                        num_active_trans;
  end
end

endmodule // transaction_counter

`default_nettype wire


//  (c) Copyright 2012-2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and
//  international copyright and other intellectual property
//  laws.
//
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES. 
//-----------------------------------------------------------------------------
//
// axi_mm2s_mapper
//   Encapsulates/expands AXI Memory Mapped protocol on to AXI4-Stream.
//
// Verilog-standard:  Verilog 2001
//--------------------------------------------------------------------------
//
// Structure:
//   top
//     axi2vector
//     vector2axi
//     stream_encapsulator x 5
//       axis_dwidth_converter
//     stream_expander x 5
//       axis_dwidth_converter
//     axis_switch (5x1)
//     axis_switch (1x5)
//
//--------------------------------------------------------------------------

`timescale 1ps/1ps
`default_nettype none

(* DowngradeIPIdentifiedWarnings="yes" *)
module axi_mm2s_mapper_v1_1_25_top #
(
///////////////////////////////////////////////////////////////////////////////
// Parameter Definitions
///////////////////////////////////////////////////////////////////////////////
  parameter C_FAMILY                              = "virtex6",
  parameter integer C_AXI_ID_WIDTH                = 4,
  parameter integer C_AXI_ADDR_WIDTH              = 32,
  parameter integer C_AXI_DATA_WIDTH              = 32,
  parameter integer C_AXI_SUPPORTS_USER_SIGNALS   = 0,
  parameter integer C_AXI_SUPPORTS_REGION_SIGNALS = 0,
  parameter integer C_AXI_AWUSER_WIDTH            = 1,
  parameter integer C_AXI_ARUSER_WIDTH            = 1,
  parameter integer C_AXI_WUSER_WIDTH             = 1,
  parameter integer C_AXI_RUSER_WIDTH             = 1,
  parameter integer C_AXI_BUSER_WIDTH             = 1,
  parameter integer C_AXIS_TDATA_WIDTH            = 32,
  parameter integer C_AXIS_TID_WIDTH              = 3
)
(
///////////////////////////////////////////////////////////////////////////////
// Port Declarations
///////////////////////////////////////////////////////////////////////////////
  // Global System Signals
  input  wire                                       aclk,
  input  wire                                       aresetn,

  // AXI-MM Slave Interface Write Address Ports
  input  wire [C_AXI_ID_WIDTH-1:0]                  s_axi_awid,
  input  wire [C_AXI_ADDR_WIDTH-1:0]                s_axi_awaddr,
  input  wire [8-1:0]                               s_axi_awlen,
  input  wire [3-1:0]                               s_axi_awsize,
  input  wire [2-1:0]                               s_axi_awburst,
  input  wire [1-1:0]                               s_axi_awlock,
  input  wire [4-1:0]                               s_axi_awcache,
  input  wire [3-1:0]                               s_axi_awprot,
  input  wire [4-1:0]                               s_axi_awregion,
  input  wire [4-1:0]                               s_axi_awqos,
  input  wire [C_AXI_AWUSER_WIDTH-1:0]              s_axi_awuser,
  input  wire                                       s_axi_awvalid,
  output wire                                       s_axi_awready,
                                                    
  // AXI-MM Slave Interface Write Data Ports               
  input  wire [C_AXI_DATA_WIDTH-1:0]                s_axi_wdata,
  input  wire [C_AXI_DATA_WIDTH/8-1:0]              s_axi_wstrb,
  input  wire                                       s_axi_wlast,
  input  wire [C_AXI_WUSER_WIDTH-1:0]               s_axi_wuser,
  input  wire                                       s_axi_wvalid,
  output wire                                       s_axi_wready,

  // AXI-MM Slave Interface Write Response Ports
  output wire [C_AXI_ID_WIDTH-1:0]                  s_axi_bid,
  output wire [2-1:0]                               s_axi_bresp,
  output wire [C_AXI_BUSER_WIDTH-1:0]               s_axi_buser,
  output wire                                       s_axi_bvalid,
  input  wire                                       s_axi_bready,

  // AXI-MM Slave Interface Read Address Ports
  input  wire [C_AXI_ID_WIDTH-1:0]                  s_axi_arid,
  input  wire [C_AXI_ADDR_WIDTH-1:0]                s_axi_araddr,
  input  wire [8-1:0]                               s_axi_arlen,
  input  wire [3-1:0]                               s_axi_arsize,
  input  wire [2-1:0]                               s_axi_arburst,
  input  wire [1-1:0]                               s_axi_arlock,
  input  wire [4-1:0]                               s_axi_arcache,
  input  wire [3-1:0]                               s_axi_arprot,
  input  wire [4-1:0]                               s_axi_arregion,
  input  wire [4-1:0]                               s_axi_arqos,
  input  wire [C_AXI_ARUSER_WIDTH-1:0]              s_axi_aruser,
  input  wire                                       s_axi_arvalid,
  output wire                                       s_axi_arready,

  // AXI-MM Slave Interface Read Data Ports
  output wire [C_AXI_ID_WIDTH-1:0]                  s_axi_rid,
  output wire [C_AXI_DATA_WIDTH-1:0]                s_axi_rdata,
  output wire [2-1:0]                               s_axi_rresp,
  output wire                                       s_axi_rlast,
  output wire [C_AXI_RUSER_WIDTH-1:0]               s_axi_ruser,
  output wire                                       s_axi_rvalid,
  input  wire                                       s_axi_rready,
  
  // AXI-MM Master Interface Write Address Port
  output wire [C_AXI_ID_WIDTH-1:0]                  m_axi_awid,
  output wire [C_AXI_ADDR_WIDTH-1:0]                m_axi_awaddr,
  output wire [8-1:0] m_axi_awlen,
  output wire [3-1:0]                               m_axi_awsize,
  output wire [2-1:0]                               m_axi_awburst,
  output wire [1-1:0] m_axi_awlock,
  output wire [4-1:0]                               m_axi_awcache,
  output wire [3-1:0]                               m_axi_awprot,
  output wire [4-1:0]                               m_axi_awregion,
  output wire [4-1:0]                               m_axi_awqos,
  output wire [C_AXI_AWUSER_WIDTH-1:0]              m_axi_awuser,
  output wire                                       m_axi_awvalid,
  input  wire                                       m_axi_awready,
  
  // AXI-MM Master Interface Write Data Ports
  output wire [C_AXI_DATA_WIDTH-1:0]                m_axi_wdata,
  output wire [C_AXI_DATA_WIDTH/8-1:0]              m_axi_wstrb,
  output wire                                       m_axi_wlast,
  output wire [C_AXI_WUSER_WIDTH-1:0]               m_axi_wuser,
  output wire                                       m_axi_wvalid,
  input  wire                                       m_axi_wready,
  
  // AXI-MM Master Interface Write Response Ports
  input  wire [C_AXI_ID_WIDTH-1:0]                  m_axi_bid,
  input  wire [2-1:0]                               m_axi_bresp,
  input  wire [C_AXI_BUSER_WIDTH-1:0]               m_axi_buser,
  input  wire                                       m_axi_bvalid,
  output wire                                       m_axi_bready,
  
  // AXI-MM Master Interface Read Address Port
  output wire [C_AXI_ID_WIDTH-1:0]                  m_axi_arid,
  output wire [C_AXI_ADDR_WIDTH-1:0]                m_axi_araddr,
  output wire [8-1:0] m_axi_arlen,
  output wire [3-1:0]                               m_axi_arsize,
  output wire [2-1:0]                               m_axi_arburst,
  output wire [1-1:0] m_axi_arlock,
  output wire [4-1:0]                               m_axi_arcache,
  output wire [3-1:0]                               m_axi_arprot,
  output wire [4-1:0]                               m_axi_arregion,
  output wire [4-1:0]                               m_axi_arqos,
  output wire [C_AXI_ARUSER_WIDTH-1:0]              m_axi_aruser,
  output wire                                       m_axi_arvalid,
  input  wire                                       m_axi_arready,
  
  // AXI-MM Master Interface Read Data Ports
  input  wire [C_AXI_ID_WIDTH-1:0]                  m_axi_rid,
  input  wire [C_AXI_DATA_WIDTH-1:0]                m_axi_rdata,
  input  wire [2-1:0]                               m_axi_rresp,
  input  wire                                       m_axi_rlast,
  input  wire [C_AXI_RUSER_WIDTH-1:0]               m_axi_ruser,
  input  wire                                       m_axi_rvalid,
  output wire                                       m_axi_rready,

  // AXI4-Stream Slave Interface
  input  wire                                       s_axis_tvalid,
  output wire                                       s_axis_tready,
  input  wire [C_AXIS_TDATA_WIDTH-1:0]              s_axis_tdata,
  input  wire [C_AXIS_TDATA_WIDTH/8-1:0]            s_axis_tkeep,
  input  wire                                       s_axis_tlast,
  input  wire [C_AXIS_TID_WIDTH-1:0]                s_axis_tid,
                                                    
  // AXI4-Stream Master Interface                   
  output wire                                       m_axis_tvalid,
  input  wire                                       m_axis_tready,
  output wire [C_AXIS_TDATA_WIDTH-1:0]              m_axis_tdata,
  output wire [C_AXIS_TDATA_WIDTH/8-1:0]            m_axis_tkeep,
  output wire                                       m_axis_tlast,
  output wire [C_AXIS_TID_WIDTH-1:0]                m_axis_tid
);

localparam C_AXI_PROTOCOL = 0;
`include "axi_infrastructure_v1_1_0.vh"
////////////////////////////////////////////////////////////////////////////////
// Functions
////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////
// Local parameters
////////////////////////////////////////////////////////////////////////////////
localparam LP_M_AX_FIFO_DEPTH = 16;
localparam LP_LOG_M_AX_FIFO_DEPTH = 4;

// TDEST Value overloaded with priority, lower the number, higher the priority.
localparam LP_AW_TDEST = 3'd1;
localparam LP_W_TDEST  = 3'd4;
localparam LP_AR_TDEST = 3'd2;
localparam LP_B_TDEST  = 3'd0;
localparam LP_R_TDEST  = 3'd3;
        
////////////////////////////////////////////////////////////////////////////////
// Wires/Reg declarations
wire                                s_axi_awready_i;
wire                                s_axi_awvalid_i;
wire                                allow_awready;
wire                                s_axi_wready_i;
wire                                s_axi_wvalid_i;
wire                                allow_wready;
wire                                s_axi_arready_i;
wire                                s_axi_arvalid_i;
wire                                allow_arready;

wire                                m_axi_awready_i;
wire                                m_axi_awvalid_i;
wire [G_AXI_AWPAYLOAD_WIDTH-1:0]    m_awpayload_i;
wire                                m_axi_arready_i;
wire                                m_axi_arvalid_i;
wire [G_AXI_ARPAYLOAD_WIDTH-1:0]    m_arpayload_i;
wire                                m_axi_bready_i;
wire                                m_axi_bvalid_i;
wire [G_AXI_BPAYLOAD_WIDTH-1:0]     m_bpayload_i;

wire [G_AXI_AWPAYLOAD_WIDTH-1:0]    s_awpayload;
wire [G_AXI_AWPAYLOAD_WIDTH-1:0]    m_awpayload;
wire [G_AXI_WPAYLOAD_WIDTH-1:0]     s_wpayload;
wire [G_AXI_WPAYLOAD_WIDTH-1:0]     m_wpayload;
wire [G_AXI_BPAYLOAD_WIDTH-1:0]     s_bpayload;
wire [G_AXI_BPAYLOAD_WIDTH-1:0]     m_bpayload;
wire [G_AXI_ARPAYLOAD_WIDTH-1:0]    s_arpayload;
wire [G_AXI_ARPAYLOAD_WIDTH-1:0]    m_arpayload;
wire [G_AXI_RPAYLOAD_WIDTH-1:0]     s_rpayload;
wire [G_AXI_RPAYLOAD_WIDTH-1:0]     m_rpayload;


wire [5-1:0]                        m_int_tvalid;
wire [5-1:0]                        m_int_tready;
wire [5*C_AXIS_TDATA_WIDTH-1:0]     m_int_tdata;
wire [(5*C_AXIS_TDATA_WIDTH/8)-1:0] m_int_tkeep;
wire [5-1:0]                        m_int_tlast;
wire [5*C_AXIS_TID_WIDTH-1:0]       m_int_tdest;
wire [5-1:0]                        s_int_tvalid;
wire [5-1:0]                        s_int_tready;
wire [5*C_AXIS_TDATA_WIDTH-1:0]     s_int_tdata;
wire [(5*C_AXIS_TDATA_WIDTH/8)-1:0] s_int_tkeep;
wire [5-1:0]                        s_int_tlast;
wire [5*C_AXIS_TID_WIDTH-1:0]       s_int_tdest;

////////////////////////////////////////////////////////////////////////////////
// Begin RTL
////////////////////////////////////////////////////////////////////////////////

assign s_axi_awready = s_axi_awready_i & allow_awready;
assign s_axi_awvalid_i = s_axi_awvalid & allow_awready;


axi_mm2s_mapper_v1_1_25_transaction_counter #(
  .C_COUNTER_WIDTH ( LP_LOG_M_AX_FIFO_DEPTH )
)
u_transaction_counter_aw_to_b (
  .aclk       ( aclk                          ) ,
  .aresetn    ( aresetn                       ) ,
  .incr_trans ( s_axi_awvalid & s_axi_awready ) ,
  .decr_trans ( s_axi_bvalid & s_axi_bready   ) ,
  .zero_n     (                               ) ,
  .max_n      ( allow_awready                 ) 
);

assign s_axi_wready = s_axi_wready_i & allow_wready;
assign s_axi_wvalid_i = s_axi_wvalid & allow_wready;

axi_mm2s_mapper_v1_1_25_transaction_counter #(
  .C_COUNTER_WIDTH ( LP_LOG_M_AX_FIFO_DEPTH )
)
u_transaction_counter_aw_to_w (
  .aclk       ( aclk                                                               ) ,
  .aresetn    ( aresetn                                                            ) ,
  .incr_trans ( s_axi_awvalid & s_axi_awready                                      ) ,
  .decr_trans ( s_axi_wvalid & s_axi_wready & s_axi_wlast                          ) ,
  .zero_n     ( allow_wready                                                       ) ,
  .max_n      (                                                                    ) 
);

assign s_axi_arready = s_axi_arready_i & allow_arready;
assign s_axi_arvalid_i = s_axi_arvalid & allow_arready;

axi_mm2s_mapper_v1_1_25_transaction_counter #(
  .C_COUNTER_WIDTH ( LP_LOG_M_AX_FIFO_DEPTH )
)
u_transaction_counter_ar_to_r (
  .aclk       ( aclk                                                               ) ,
  .aresetn    ( aresetn                                                            ) ,
  .incr_trans ( s_axi_arvalid & s_axi_arready                                      ) ,
  .decr_trans ( s_axi_rvalid & s_axi_rready & s_axi_rlast                          ) ,
  .zero_n     (                                                                    ) ,
  .max_n      ( allow_arready                                                      ) 
);


axi_infrastructure_v1_1_0_axi2vector #( 
  .C_AXI_PROTOCOL                ( 0                             ) ,
  .C_AXI_ID_WIDTH                ( C_AXI_ID_WIDTH                ) ,
  .C_AXI_ADDR_WIDTH              ( C_AXI_ADDR_WIDTH              ) ,
  .C_AXI_DATA_WIDTH              ( C_AXI_DATA_WIDTH              ) ,
  .C_AXI_SUPPORTS_USER_SIGNALS   ( C_AXI_SUPPORTS_USER_SIGNALS   ) ,
  .C_AXI_SUPPORTS_REGION_SIGNALS ( C_AXI_SUPPORTS_REGION_SIGNALS ) ,
  .C_AXI_AWUSER_WIDTH            ( C_AXI_AWUSER_WIDTH            ) ,
  .C_AXI_ARUSER_WIDTH            ( C_AXI_ARUSER_WIDTH            ) ,
  .C_AXI_WUSER_WIDTH             ( C_AXI_WUSER_WIDTH             ) ,
  .C_AXI_RUSER_WIDTH             ( C_AXI_RUSER_WIDTH             ) ,
  .C_AXI_BUSER_WIDTH             ( C_AXI_BUSER_WIDTH             ) ,
  .C_AWPAYLOAD_WIDTH             ( G_AXI_AWPAYLOAD_WIDTH         ) ,
  .C_WPAYLOAD_WIDTH              ( G_AXI_WPAYLOAD_WIDTH          ) ,
  .C_BPAYLOAD_WIDTH              ( G_AXI_BPAYLOAD_WIDTH          ) ,
  .C_ARPAYLOAD_WIDTH             ( G_AXI_ARPAYLOAD_WIDTH         ) ,
  .C_RPAYLOAD_WIDTH              ( G_AXI_RPAYLOAD_WIDTH          ) 
)
axi_infrastructure_v1_1_0_axi2vector_0 ( 
  .s_axi_awid      ( s_axi_awid      ) ,
  .s_axi_awaddr    ( s_axi_awaddr    ) ,
  .s_axi_awlen     ( s_axi_awlen     ) ,
  .s_axi_awsize    ( s_axi_awsize    ) ,
  .s_axi_awburst   ( s_axi_awburst   ) ,
  .s_axi_awlock    ( s_axi_awlock    ) ,
  .s_axi_awcache   ( s_axi_awcache   ) ,
  .s_axi_awprot    ( s_axi_awprot    ) ,
  .s_axi_awqos     ( s_axi_awqos     ) ,
  .s_axi_awuser    ( s_axi_awuser    ) ,
  .s_axi_awregion  ( s_axi_awregion  ) ,
  .s_axi_wid       ( {C_AXI_ID_WIDTH{1'b0}}) ,
  .s_axi_wdata     ( s_axi_wdata     ) ,
  .s_axi_wstrb     ( s_axi_wstrb     ) ,
  .s_axi_wlast     ( s_axi_wlast     ) ,
  .s_axi_wuser     ( s_axi_wuser     ) ,
  .s_axi_bid       ( s_axi_bid       ) ,
  .s_axi_bresp     ( s_axi_bresp     ) ,
  .s_axi_buser     ( s_axi_buser     ) ,
  .s_axi_arid      ( s_axi_arid      ) ,
  .s_axi_araddr    ( s_axi_araddr    ) ,
  .s_axi_arlen     ( s_axi_arlen     ) ,
  .s_axi_arsize    ( s_axi_arsize    ) ,
  .s_axi_arburst   ( s_axi_arburst   ) ,
  .s_axi_arlock    ( s_axi_arlock    ) ,
  .s_axi_arcache   ( s_axi_arcache   ) ,
  .s_axi_arprot    ( s_axi_arprot    ) ,
  .s_axi_arqos     ( s_axi_arqos     ) ,
  .s_axi_aruser    ( s_axi_aruser    ) ,
  .s_axi_arregion  ( s_axi_arregion  ) ,
  .s_axi_rid       ( s_axi_rid       ) ,
  .s_axi_rdata     ( s_axi_rdata     ) ,
  .s_axi_rresp     ( s_axi_rresp     ) ,
  .s_axi_rlast     ( s_axi_rlast     ) ,
  .s_axi_ruser     ( s_axi_ruser     ) ,
  .s_awpayload ( s_awpayload ) ,
  .s_wpayload  ( s_wpayload  ) ,
  .s_bpayload  ( s_bpayload  ) ,
  .s_arpayload ( s_arpayload ) ,
  .s_rpayload  ( s_rpayload  ) 
);

axi_infrastructure_v1_1_0_vector2axi #( 
  .C_AXI_PROTOCOL                ( 0                             ) ,
  .C_AXI_ID_WIDTH                ( C_AXI_ID_WIDTH                ) ,
  .C_AXI_ADDR_WIDTH              ( C_AXI_ADDR_WIDTH              ) ,
  .C_AXI_DATA_WIDTH              ( C_AXI_DATA_WIDTH              ) ,
  .C_AXI_SUPPORTS_USER_SIGNALS   ( C_AXI_SUPPORTS_USER_SIGNALS   ) ,
  .C_AXI_SUPPORTS_REGION_SIGNALS ( C_AXI_SUPPORTS_REGION_SIGNALS ) ,
  .C_AXI_AWUSER_WIDTH            ( C_AXI_AWUSER_WIDTH            ) ,
  .C_AXI_ARUSER_WIDTH            ( C_AXI_ARUSER_WIDTH            ) ,
  .C_AXI_WUSER_WIDTH             ( C_AXI_WUSER_WIDTH             ) ,
  .C_AXI_RUSER_WIDTH             ( C_AXI_RUSER_WIDTH             ) ,
  .C_AXI_BUSER_WIDTH             ( C_AXI_BUSER_WIDTH             ) ,
  .C_AWPAYLOAD_WIDTH             ( G_AXI_AWPAYLOAD_WIDTH         ) ,
  .C_WPAYLOAD_WIDTH              ( G_AXI_WPAYLOAD_WIDTH          ) ,
  .C_BPAYLOAD_WIDTH              ( G_AXI_BPAYLOAD_WIDTH          ) ,
  .C_ARPAYLOAD_WIDTH             ( G_AXI_ARPAYLOAD_WIDTH         ) ,
  .C_RPAYLOAD_WIDTH              ( G_AXI_RPAYLOAD_WIDTH          ) 
)
u_axi_infrastructure_v1_1_0_vector2axi ( 
  .m_awpayload    ( m_awpayload    ) ,
  .m_wpayload     ( m_wpayload     ) ,
  .m_bpayload     ( m_bpayload     ) ,
  .m_arpayload    ( m_arpayload    ) ,
  .m_rpayload     ( m_rpayload     ) ,
  .m_axi_awid     ( m_axi_awid     ) ,
  .m_axi_awaddr   ( m_axi_awaddr   ) ,
  .m_axi_awlen    ( m_axi_awlen    ) ,
  .m_axi_awsize   ( m_axi_awsize   ) ,
  .m_axi_awburst  ( m_axi_awburst  ) ,
  .m_axi_awlock   ( m_axi_awlock   ) ,
  .m_axi_awcache  ( m_axi_awcache  ) ,
  .m_axi_awprot   ( m_axi_awprot   ) ,
  .m_axi_awqos    ( m_axi_awqos    ) ,
  .m_axi_awuser   ( m_axi_awuser   ) ,
  .m_axi_awregion ( m_axi_awregion ) ,
  .m_axi_wid      (       ) ,
  .m_axi_wdata    ( m_axi_wdata    ) ,
  .m_axi_wstrb    ( m_axi_wstrb    ) ,
  .m_axi_wlast    ( m_axi_wlast    ) ,
  .m_axi_wuser    ( m_axi_wuser    ) ,
  .m_axi_bid      ( m_axi_bid      ) ,
  .m_axi_bresp    ( m_axi_bresp    ) ,
  .m_axi_buser    ( m_axi_buser    ) ,
  .m_axi_arid     ( m_axi_arid     ) ,
  .m_axi_araddr   ( m_axi_araddr   ) ,
  .m_axi_arlen    ( m_axi_arlen    ) ,
  .m_axi_arsize   ( m_axi_arsize   ) ,
  .m_axi_arburst  ( m_axi_arburst  ) ,
  .m_axi_arlock   ( m_axi_arlock   ) ,
  .m_axi_arcache  ( m_axi_arcache  ) ,
  .m_axi_arprot   ( m_axi_arprot   ) ,
  .m_axi_arqos    ( m_axi_arqos    ) ,
  .m_axi_aruser   ( m_axi_aruser   ) ,
  .m_axi_arregion ( m_axi_arregion ) ,
  .m_axi_rid      ( m_axi_rid      ) ,
  .m_axi_rdata    ( m_axi_rdata    ) ,
  .m_axi_rresp    ( m_axi_rresp    ) ,
  .m_axi_rlast    ( m_axi_rlast    ) ,
  .m_axi_ruser    ( m_axi_ruser    ) 
);

axi_mm2s_mapper_v1_1_25_stream_encapsulator #( 
  .C_FAMILY           ( C_FAMILY                                 ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_AWPAYLOAD_WIDTH                    ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                       ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH                         ) ,
  .C_AXIS_TDEST_VALUE ( LP_AW_TDEST + {C_AXIS_TID_WIDTH{1'b0}}   ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_aw (
  .aclk          ( aclk                                                                 ) ,
  .aresetn       ( aresetn                                                              ) ,
  .s_valid       ( s_axi_awvalid_i                                                      ) ,
  .s_ready       ( s_axi_awready_i                                                      ) ,
  .s_payload     ( s_awpayload                                                          ) ,
  .m_axis_tvalid ( m_int_tvalid[LP_AW_TDEST]                                            ) ,
  .m_axis_tready ( m_int_tready[LP_AW_TDEST]                                            ) ,
  .m_axis_tdata  ( m_int_tdata [LP_AW_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .m_axis_tkeep  ( m_int_tkeep [LP_AW_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .m_axis_tlast  ( m_int_tlast [LP_AW_TDEST]                                            ) ,
  .m_axis_tdest  ( m_int_tdest [LP_AW_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) 
);

axi_mm2s_mapper_v1_1_25_stream_encapsulator #( 
  .C_FAMILY           ( C_FAMILY                                ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_WPAYLOAD_WIDTH                    ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                      ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH                        ) ,
  .C_AXIS_TDEST_VALUE ( LP_W_TDEST + {C_AXIS_TID_WIDTH{1'b0}}   ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_w (
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_valid       ( s_axi_wvalid_i                                                      ) ,
  .s_ready       ( s_axi_wready_i                                                      ) ,
  .s_payload     ( s_wpayload                                                          ) ,
  .m_axis_tvalid ( m_int_tvalid[LP_W_TDEST]                                            ) ,
  .m_axis_tready ( m_int_tready[LP_W_TDEST]                                            ) ,
  .m_axis_tdata  ( m_int_tdata [LP_W_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .m_axis_tkeep  ( m_int_tkeep [LP_W_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .m_axis_tlast  ( m_int_tlast [LP_W_TDEST]                                            ) ,
  .m_axis_tdest  ( m_int_tdest [LP_W_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) 
);

axi_infrastructure_v1_1_0_axic_srl_fifo #(
  .C_FAMILY        ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH ( G_AXI_BPAYLOAD_WIDTH ) ,
  .C_FIFO_DEPTH    ( LP_M_AX_FIFO_DEPTH    ) 
)
u_axi_infrastructure_v1_1_0_axic_srl_fifo_b ( 
  .aclk      ( aclk            ) ,
  .aresetn   ( aresetn         ) ,
  .s_valid   ( m_axi_bvalid   ) ,
  .s_ready   ( m_axi_bready   ) ,
  .s_payload ( m_bpayload     ) ,
  .m_valid   ( m_axi_bvalid_i ) ,
  .m_ready   ( m_axi_bready_i ) ,
  .m_payload ( m_bpayload_i   ) 
);

axi_mm2s_mapper_v1_1_25_stream_encapsulator #( 
  .C_FAMILY           ( C_FAMILY                                ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_BPAYLOAD_WIDTH                    ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                      ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH                        ) ,
  .C_AXIS_TDEST_VALUE ( LP_B_TDEST + {C_AXIS_TID_WIDTH{1'b0}}   ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_b (
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_valid       ( m_axi_bvalid_i                                                      ) ,
  .s_ready       ( m_axi_bready_i                                                      ) ,
  .s_payload     ( m_bpayload_i                                                        ) ,
  .m_axis_tvalid ( m_int_tvalid[LP_B_TDEST]                                            ) ,
  .m_axis_tready ( m_int_tready[LP_B_TDEST]                                            ) ,
  .m_axis_tdata  ( m_int_tdata [LP_B_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .m_axis_tkeep  ( m_int_tkeep [LP_B_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .m_axis_tlast  ( m_int_tlast [LP_B_TDEST]                                            ) ,
  .m_axis_tdest  ( m_int_tdest [LP_B_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) 
);

axi_mm2s_mapper_v1_1_25_stream_encapsulator #( 
  .C_FAMILY           ( C_FAMILY                                 ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_ARPAYLOAD_WIDTH                   ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                       ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH                       ) ,
  .C_AXIS_TDEST_VALUE ( LP_AR_TDEST + {C_AXIS_TID_WIDTH{1'b0}} ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_ar (
  .aclk          ( aclk                                                                 ) ,
  .aresetn       ( aresetn                                                              ) ,
  .s_valid       ( s_axi_arvalid_i                                                      ) ,
  .s_ready       ( s_axi_arready_i                                                      ) ,
  .s_payload     ( s_arpayload                                                          ) ,
  .m_axis_tvalid ( m_int_tvalid[LP_AR_TDEST]                                            ) ,
  .m_axis_tready ( m_int_tready[LP_AR_TDEST]                                            ) ,
  .m_axis_tdata  ( m_int_tdata [LP_AR_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .m_axis_tkeep  ( m_int_tkeep [LP_AR_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .m_axis_tlast  ( m_int_tlast [LP_AR_TDEST]                                            ) ,
  .m_axis_tdest  ( m_int_tdest [LP_AR_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) 
);

axi_mm2s_mapper_v1_1_25_stream_encapsulator #( 
  .C_FAMILY           ( C_FAMILY                                ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_RPAYLOAD_WIDTH                   ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH                      ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH                      ) ,
  .C_AXIS_TDEST_VALUE ( LP_R_TDEST + {C_AXIS_TID_WIDTH{1'b0}} ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_encapsulator_r ( 
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_valid       ( m_axi_rvalid                                                        ) ,
  .s_ready       ( m_axi_rready                                                        ) ,
  .s_payload     ( m_rpayload                                                          ) ,
  .m_axis_tvalid ( m_int_tvalid[LP_R_TDEST]                                            ) ,
  .m_axis_tready ( m_int_tready[LP_R_TDEST]                                            ) ,
  .m_axis_tdata  ( m_int_tdata [LP_R_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .m_axis_tkeep  ( m_int_tkeep [LP_R_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .m_axis_tlast  ( m_int_tlast [LP_R_TDEST]                                            ) ,
  .m_axis_tdest  ( m_int_tdest [LP_R_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) 
);


axis_switch_v1_1_26_axis_switch #(
  .C_FAMILY                    ( C_FAMILY           ) ,
  .C_NUM_SI_SLOTS              ( 5                  ) ,
  .C_LOG_SI_SLOTS              ( 3                  ) ,
  .C_NUM_MI_SLOTS              ( 1                  ) ,
  .C_AXIS_TDATA_WIDTH          ( C_AXIS_TDATA_WIDTH ) ,
  .C_AXIS_TID_WIDTH            ( 1                  ) ,
  .C_AXIS_TDEST_WIDTH          ( C_AXIS_TID_WIDTH   ) ,
  .C_AXIS_TUSER_WIDTH          ( 1                  ) ,
  .C_AXIS_SIGNAL_SET           ( 8'B01011011        ) ,
  .C_ARB_ON_MAX_XFERS          ( 0                  ) ,
  .C_ARB_ON_NUM_CYCLES         ( 0                  ) ,
  .C_ARB_ON_TLAST              ( 1                  ) ,
  .C_INCLUDE_ARBITER           ( 1                  ) ,
  .C_ARB_ALGORITHM             ( 1                  ) ,
  .C_OUTPUT_REG                ( 0                  ) ,
  .C_DECODER_REG               ( 0                  ) ,
  .C_M_AXIS_CONNECTIVITY_ARRAY ( 5'B11111           ) ,
  .C_M_AXIS_BASETDEST_ARRAY    ( 3'B000             ) ,
  .C_M_AXIS_HIGHTDEST_ARRAY    ( 3'B111             ) ,
  .C_ROUTING_MODE              ( 0                  )

) 
u_axis_switch_v1_1_26_axis_switch_5x1 (
  .aclk           ( aclk                         ) ,
  .aresetn        ( aresetn                      ) ,
  .aclken         ( 1'b1                         ) ,
  .s_axis_tvalid  ( m_int_tvalid                 ) ,
  .s_axis_tready  ( m_int_tready                 ) ,
  .s_axis_tdata   ( m_int_tdata                  ) ,
  .s_axis_tstrb   ( {5*C_AXIS_TDATA_WIDTH/8{1'b0}} ) ,
  .s_axis_tkeep   ( m_int_tkeep                  ) ,
  .s_axis_tlast   ( m_int_tlast                  ) ,
  .s_axis_tid     ( 5'b0                         ) ,
  .s_axis_tdest   ( m_int_tdest                  ) ,
  .s_axis_tuser   ( 5'b0                         ) ,
  .m_axis_tvalid  ( m_axis_tvalid                ) ,
  .m_axis_tready  ( m_axis_tready                ) ,
  .m_axis_tdata   ( m_axis_tdata                 ) ,
  .m_axis_tstrb   (                              ) ,
  .m_axis_tkeep   ( m_axis_tkeep                 ) ,
  .m_axis_tlast   ( m_axis_tlast                 ) ,
  .m_axis_tid     (                              ) ,
  .m_axis_tdest   ( m_axis_tid                 ) ,
  .m_axis_tuser   (                              ) ,
  .arb_req        (                              ) ,
  .arb_done       (                              ) ,
  .arb_gnt        ( 5'b0                         ) ,
  .arb_sel        ( 3'b0                         ) ,
  .arb_last       (                              ) ,
  .arb_id         (                              ) ,
  .arb_dest       (                              ) ,
  .arb_user       (                              ) ,
  .s_req_suppress ( 5'b0                         ) ,
  .s_decode_err   (                              ) 
);

axis_switch_v1_1_26_axis_switch #(
  .C_FAMILY                    ( C_FAMILY            ) ,
  .C_NUM_SI_SLOTS              ( 1                   ) ,
  .C_LOG_SI_SLOTS              ( 1                   ) ,
  .C_NUM_MI_SLOTS              ( 5                   ) ,
  .C_AXIS_TDATA_WIDTH          ( C_AXIS_TDATA_WIDTH  ) ,
  .C_AXIS_TID_WIDTH            ( 1                   ) ,
  .C_AXIS_TDEST_WIDTH          ( C_AXIS_TID_WIDTH    ) ,
  .C_AXIS_TUSER_WIDTH          ( 1                   ) ,
  .C_AXIS_SIGNAL_SET           ( 8'B01011011         ) ,
  .C_ARB_ON_MAX_XFERS          ( 1                   ) ,
  .C_ARB_ON_NUM_CYCLES         ( 0                   ) ,
  .C_ARB_ON_TLAST              ( 0                   ) ,
  .C_INCLUDE_ARBITER           ( 1                   ) ,
  .C_ARB_ALGORITHM             ( 0                   ) ,
  .C_OUTPUT_REG                ( 0                   ) ,
  .C_DECODER_REG               ( 0                   ) ,
  .C_M_AXIS_CONNECTIVITY_ARRAY ( 5'B11111            ) ,
  .C_M_AXIS_BASETDEST_ARRAY    ( 15'B100011010001000 ) ,
  .C_M_AXIS_HIGHTDEST_ARRAY    ( 15'B100011010001000 ) ,
  .C_ROUTING_MODE              ( 0                   )
)
u_axis_switch_v1_1_26_axis_switch_1x5 (
  .aclk           ( aclk                         ) ,
  .aresetn        ( aresetn                      ) ,
  .aclken         ( 1'b1                         ) ,
  .s_axis_tvalid  ( s_axis_tvalid                ) ,
  .s_axis_tready  ( s_axis_tready                ) ,
  .s_axis_tdata   ( s_axis_tdata                 ) ,
  .s_axis_tstrb   ( {C_AXIS_TDATA_WIDTH/8{1'b0}} ) ,
  .s_axis_tkeep   ( s_axis_tkeep                 ) ,
  .s_axis_tlast   ( s_axis_tlast                 ) ,
  .s_axis_tid     ( 1'b0                         ) ,
  .s_axis_tdest   ( s_axis_tid                   ) ,
  .s_axis_tuser   ( 1'b0                         ) ,
  .m_axis_tvalid  ( s_int_tvalid                 ) ,
  .m_axis_tready  ( s_int_tready                 ) ,
  .m_axis_tdata   ( s_int_tdata                  ) ,
  .m_axis_tstrb   (                              ) ,
  .m_axis_tkeep   ( s_int_tkeep                  ) ,
  .m_axis_tlast   ( s_int_tlast                  ) ,
  .m_axis_tid     (                              ) ,
  .m_axis_tdest   ( s_int_tdest                  ) ,
  .m_axis_tuser   (                              ) ,
  .arb_req        (                              ) ,
  .arb_done       (                              ) ,
  .arb_gnt        ( 5'b0                         ) ,
  .arb_sel        ( 5'b0                         ) ,
  .arb_last       (                              ) ,
  .arb_id         (                              ) ,
  .arb_dest       (                              ) ,
  .arb_user       (                              ) ,
  .s_req_suppress ( 1'b0                         ) ,
  .s_decode_err   (                              ) 
);

axi_mm2s_mapper_v1_1_25_stream_expander #( 
  .C_FAMILY           ( C_FAMILY               ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_AWPAYLOAD_WIDTH  ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH     ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH       ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_expander_aw (
  .aclk          ( aclk                                                                 ) ,
  .aresetn       ( aresetn                                                              ) ,
  .s_axis_tvalid ( s_int_tvalid[LP_AW_TDEST]                                            ) ,
  .s_axis_tready ( s_int_tready[LP_AW_TDEST]                                            ) ,
  .s_axis_tdata  ( s_int_tdata [LP_AW_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .s_axis_tkeep  ( s_int_tkeep [LP_AW_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .s_axis_tlast  ( s_int_tlast [LP_AW_TDEST]                                            ) ,
  .s_axis_tdest  ( s_int_tdest [LP_AW_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
  .m_valid       ( m_axi_awvalid_i                                                      ) ,
  .m_ready       ( m_axi_awready_i                                                      ) ,
  .m_payload     ( m_awpayload_i                                                        )
);

axi_infrastructure_v1_1_0_axic_srl_fifo #(
  .C_FAMILY        ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH ( G_AXI_AWPAYLOAD_WIDTH ) ,
  .C_FIFO_DEPTH    ( LP_M_AX_FIFO_DEPTH    ) 
)
u_axi_infrastructure_v1_1_0_axic_srl_fifo_aw ( 
  .aclk      ( aclk            ) ,
  .aresetn   ( aresetn         ) ,
  .s_valid   ( m_axi_awvalid_i ) ,
  .s_ready   ( m_axi_awready_i ) ,
  .s_payload ( m_awpayload_i   ) ,
  .m_valid   ( m_axi_awvalid   ) ,
  .m_ready   ( m_axi_awready   ) ,
  .m_payload ( m_awpayload     ) 
);

axi_mm2s_mapper_v1_1_25_stream_expander #( 
  .C_FAMILY           ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_WPAYLOAD_WIDTH  ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH    ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH      ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_expander_w ( 
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_axis_tvalid ( s_int_tvalid[LP_W_TDEST]                                            ) ,
  .s_axis_tready ( s_int_tready[LP_W_TDEST]                                            ) ,
  .s_axis_tdata  ( s_int_tdata [LP_W_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .s_axis_tkeep  ( s_int_tkeep [LP_W_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .s_axis_tlast  ( s_int_tlast [LP_W_TDEST]                                            ) ,
  .s_axis_tdest  ( s_int_tdest [LP_W_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
  .m_valid       ( m_axi_wvalid                                                        ) ,
  .m_ready       ( m_axi_wready                                                        ) ,
  .m_payload     ( m_wpayload                                                          ) 
);

axi_mm2s_mapper_v1_1_25_stream_expander #( 
  .C_FAMILY           ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_BPAYLOAD_WIDTH  ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH    ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH      ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_expander_b (
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_axis_tvalid ( s_int_tvalid[LP_B_TDEST]                                            ) ,
  .s_axis_tready ( s_int_tready[LP_B_TDEST]                                            ) ,
  .s_axis_tdata  ( s_int_tdata [LP_B_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .s_axis_tkeep  ( s_int_tkeep [LP_B_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .s_axis_tlast  ( s_int_tlast [LP_B_TDEST]                                            ) ,
  .s_axis_tdest  ( s_int_tdest [LP_B_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
  .m_valid       ( s_axi_bvalid                                                        ) ,
  .m_ready       ( s_axi_bready                                                        ) ,
  .m_payload     ( s_bpayload                                                          ) 
);

axi_mm2s_mapper_v1_1_25_stream_expander #( 
  .C_FAMILY           ( C_FAMILY               ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_ARPAYLOAD_WIDTH  ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH     ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH       ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_expander_ar (
  .aclk          ( aclk                                                                 ) ,
  .aresetn       ( aresetn                                                              ) ,
  .s_axis_tvalid ( s_int_tvalid[LP_AR_TDEST]                                            ) ,
  .s_axis_tready ( s_int_tready[LP_AR_TDEST]                                            ) ,
  .s_axis_tdata  ( s_int_tdata [LP_AR_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .s_axis_tkeep  ( s_int_tkeep [LP_AR_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .s_axis_tlast  ( s_int_tlast [LP_AR_TDEST]                                            ) ,
  .s_axis_tdest  ( s_int_tdest [LP_AR_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
  .m_valid       ( m_axi_arvalid_i                                                      ) ,
  .m_ready       ( m_axi_arready_i                                                      ) ,
  .m_payload     ( m_arpayload_i                                                        )
);

axi_infrastructure_v1_1_0_axic_srl_fifo #(
  .C_FAMILY        ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH ( G_AXI_ARPAYLOAD_WIDTH ) ,
  .C_FIFO_DEPTH    ( LP_M_AX_FIFO_DEPTH    ) 
)
u_axi_infrastructure_v1_1_0_axic_srl_fifo_ar ( 
  .aclk      ( aclk            ) ,
  .aresetn   ( aresetn         ) ,
  .s_valid   ( m_axi_arvalid_i ) ,
  .s_ready   ( m_axi_arready_i ) ,
  .s_payload ( m_arpayload_i   ) ,
  .m_valid   ( m_axi_arvalid   ) ,
  .m_ready   ( m_axi_arready   ) ,
  .m_payload ( m_arpayload     ) 
);

axi_mm2s_mapper_v1_1_25_stream_expander #( 
  .C_FAMILY           ( C_FAMILY              ) ,
  .C_PAYLOAD_WIDTH    ( G_AXI_RPAYLOAD_WIDTH  ) ,
  .C_AXIS_TDATA_WIDTH ( C_AXIS_TDATA_WIDTH    ) ,
  .C_AXIS_TDEST_WIDTH ( C_AXIS_TID_WIDTH      ) 
)
u_axi_mm2s_mapper_v1_1_25_stream_expander_r (
  .aclk          ( aclk                                                                ) ,
  .aresetn       ( aresetn                                                             ) ,
  .s_axis_tvalid ( s_int_tvalid[LP_R_TDEST]                                            ) ,
  .s_axis_tready ( s_int_tready[LP_R_TDEST]                                            ) ,
  .s_axis_tdata  ( s_int_tdata [LP_R_TDEST*C_AXIS_TDATA_WIDTH+:C_AXIS_TDATA_WIDTH]     ) ,
  .s_axis_tkeep  ( s_int_tkeep [LP_R_TDEST*C_AXIS_TDATA_WIDTH/8+:C_AXIS_TDATA_WIDTH/8] ) ,
  .s_axis_tlast  ( s_int_tlast [LP_R_TDEST]                                            ) ,
  .s_axis_tdest  ( s_int_tdest [LP_R_TDEST*C_AXIS_TID_WIDTH+:C_AXIS_TID_WIDTH]         ) ,
  .m_valid       ( s_axi_rvalid                                                        ) ,
  .m_ready       ( s_axi_rready                                                        ) ,
  .m_payload     ( s_rpayload                                                          ) 
);

endmodule // axi_mm2s_mapper

`default_nettype wire


