----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2022 15:16:28
-- Design Name: 
-- Module Name: conv_wrapper - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conv_wrapper is
    PORT (
        -- clk reset
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
end conv_wrapper;

architecture Behavioral of conv_wrapper is

    COMPONENT axis_data_fifo_0
        PORT (
            s_axis_aresetn : IN STD_LOGIC;
            s_axis_aclk : IN STD_LOGIC;
            s_axis_tvalid : IN STD_LOGIC;
            s_axis_tready : OUT STD_LOGIC;
            s_axis_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_tvalid : OUT STD_LOGIC;
            m_axis_tready : IN STD_LOGIC;
            m_axis_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT pix_out_proc IS
        PORT (
            -- clk reset
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


    SIGNAL img_fifo_valid : STD_LOGIC;
    SIGNAL img_fifo_ready : STD_LOGIC;
    SIGNAL img_fifo_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL krn_fifo_valid : STD_LOGIC;
    SIGNAL krn_fifo_ready : STD_LOGIC;
    SIGNAL krn_fifo_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL res_valid : STD_LOGIC;
    SIGNAL res_ready : STD_LOGIC;
    SIGNAL res_data : STD_LOGIC_VECTOR(31 DOWNTO 0);

begin

    img_fifo_inst : axis_data_fifo_0
        PORT MAP (
            s_axis_aresetn => rst_n,
            s_axis_aclk => clk,
            s_axis_tvalid => s_axis_valid_img,
            s_axis_tready => s_axis_ready_img,
            s_axis_tdata => s_axis_data_img,
            m_axis_tvalid => img_fifo_valid,
            m_axis_tready => img_fifo_ready,
            m_axis_tdata => img_fifo_data
        );

    krn_fifo_inst : axis_data_fifo_0
        PORT MAP (
            s_axis_aresetn => rst_n,
            s_axis_aclk => clk,
            s_axis_tvalid => s_axis_valid_krn,
            s_axis_tready => s_axis_ready_krn,
            s_axis_tdata => s_axis_data_krn,
            m_axis_tvalid => krn_fifo_valid,
            m_axis_tready => krn_fifo_ready,
            m_axis_tdata => krn_fifo_data
        );

    pix_out_proc_inst : pix_out_proc
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data_img => img_fifo_data,
            s_axis_valid_img => img_fifo_valid,
            s_axis_ready_img => img_fifo_ready,
            s_axis_data_krn => krn_fifo_data,
            s_axis_valid_krn => krn_fifo_valid,
            s_axis_ready_krn => krn_fifo_ready,
            m_axis_data => res_data,
            m_axis_valid => res_valid,
            m_axis_ready => res_ready
        );

    res_fifo_inst : axis_data_fifo_0
        PORT MAP (
            s_axis_aresetn => rst_n,
            s_axis_aclk => clk,
            s_axis_tvalid => res_valid,
            s_axis_tready => res_ready,
            s_axis_tdata => res_data,
            m_axis_tvalid => m_axis_valid,
            m_axis_tready => m_axis_ready,
            m_axis_tdata => m_axis_data
        );
end Behavioral;
