-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:cmp_conv_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_cmp_conv_wrapper_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    line_img_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    line_img_valid : IN STD_LOGIC;
    line_img_ready : OUT STD_LOGIC;
    line_krn_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    line_krn_valid : IN STD_LOGIC;
    line_krn_ready : OUT STD_LOGIC;
    res_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    res_valid : OUT STD_LOGIC;
    res_ready : IN STD_LOGIC
  );
END design_1_cmp_conv_wrapper_0_0;

ARCHITECTURE design_1_cmp_conv_wrapper_0_0_arch OF design_1_cmp_conv_wrapper_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_cmp_conv_wrapper_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT cmp_conv_wrapper IS
    PORT (
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      line_img_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      line_img_valid : IN STD_LOGIC;
      line_img_ready : OUT STD_LOGIC;
      line_krn_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      line_krn_valid : IN STD_LOGIC;
      line_krn_ready : OUT STD_LOGIC;
      res_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      res_valid : OUT STD_LOGIC;
      res_ready : IN STD_LOGIC
    );
  END COMPONENT cmp_conv_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_cmp_conv_wrapper_0_0_arch: ARCHITECTURE IS "cmp_conv_wrapper,Vivado 2022.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_cmp_conv_wrapper_0_0_arch : ARCHITECTURE IS "design_1_cmp_conv_wrapper_0_0,cmp_conv_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_cmp_conv_wrapper_0_0_arch: ARCHITECTURE IS "design_1_cmp_conv_wrapper_0_0,cmp_conv_wrapper,{x_ipProduct=Vivado 2022.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=cmp_conv_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=VHDL}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_cmp_conv_wrapper_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF clk: SIGNAL IS "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rst: SIGNAL IS "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF rst: SIGNAL IS "xilinx.com:signal:reset:1.0 rst RST";
BEGIN
  U0 : cmp_conv_wrapper
    PORT MAP (
      clk => clk,
      rst => rst,
      line_img_data => line_img_data,
      line_img_valid => line_img_valid,
      line_img_ready => line_img_ready,
      line_krn_data => line_krn_data,
      line_krn_valid => line_krn_valid,
      line_krn_ready => line_krn_ready,
      res_data => res_data,
      res_valid => res_valid,
      res_ready => res_ready
    );
END design_1_cmp_conv_wrapper_0_0_arch;
