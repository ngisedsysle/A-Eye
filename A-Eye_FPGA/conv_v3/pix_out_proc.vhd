----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03.08.2022 09:33:28
-- Design Name: 
-- Module Name: pix_out_proc - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

USE work.STD_PKG.ALL;

ENTITY pix_out_proc IS
    PORT (
        -- clk reset
        clk : IN STD_LOGIC;
        rst_n : IN STD_LOGIC;

        -- from image
        s_axis_data_img : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_valid_img : IN STD_LOGIC;
        s_axis_ready_img : OUT STD_LOGIC;

        -- from kernel
        s_axis_data_krn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_valid_krn : IN STD_LOGIC;
        s_axis_ready_krn : OUT STD_LOGIC;

        -- pixel output axi like
        m_axis_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axis_valid : OUT STD_LOGIC;
        m_axis_ready : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF pix_out_proc IS

    COMPONENT add_3_clk IS
        PORT (
            clk : IN STD_LOGIC;
            rst_n : IN STD_LOGIC;
    
            -- AXI4-S slave i/f
            s_axis_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_valid : IN STD_LOGIC;
            s_axis_ready : OUT STD_LOGIC;
    
            -- AXI4-S master i/f
            m_axis_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_valid : OUT STD_LOGIC;
            m_axis_ready : IN STD_LOGIC
            );
    END COMPONENT;

    COMPONENT line_engine IS
        PORT (
            clk : IN STD_LOGIC;
            rst_n : IN STD_LOGIC;

            -- AXI4-S slave i/f
            -- image input
            s_axis_data_img : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_valid_img : IN STD_LOGIC;
            s_axis_ready_img : OUT STD_LOGIC;
    
            -- kernel input
            s_axis_data_krn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_valid_krn : IN STD_LOGIC;
            s_axis_ready_krn : OUT STD_LOGIC;
    
            --AXI4-S master i/f
            -- result output
            m_axis_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_valid : OUT STD_LOGIC;
            m_axis_ready : IN STD_LOGIC
        );
    END COMPONENT;

    signal tmp_res_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    signal tmp_res_valid : STD_LOGIC;
    signal tmp_res_ready : STD_LOGIC;

BEGIN

    line_engine_inst : line_engine
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data_img => s_axis_data_img,
            s_axis_valid_img => s_axis_valid_img,
            s_axis_ready_img => s_axis_ready_img,
            s_axis_data_krn => s_axis_data_krn,
            s_axis_valid_krn => s_axis_valid_krn,
            s_axis_ready_krn => s_axis_ready_krn,
            m_axis_data => tmp_res_data,
            m_axis_valid => tmp_res_valid,
            m_axis_ready => tmp_res_ready
        );


    add_3_clk_inst : add_3_clk
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data => tmp_res_data,
            s_axis_valid => tmp_res_valid,
            s_axis_ready => tmp_res_ready,
            m_axis_data => m_axis_data,
            m_axis_valid => m_axis_valid,
            m_axis_ready => m_axis_ready 
        );

END ARCHITECTURE;