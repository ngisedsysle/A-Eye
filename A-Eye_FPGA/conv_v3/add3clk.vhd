----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2022 15:10:40
-- Design Name: 
-- Module Name: add3clk - Behavioral
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

ENTITY add_3_clk IS
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
END ENTITY;

ARCHITECTURE rtl OF add_3_clk IS
    SIGNAL cnt : INTEGER;
    SIGNAL out_data_reg : INTEGER;
    SIGNAL buff_valid : STD_LOGIC;
--    SIGNAL out_valid_reg : STD_LOGIC;
BEGIN    

    m_axis_data <= std_logic_vector(to_unsigned(out_data_reg,32));
    
    compute_proc : PROCESS (clk, rst_n)
    BEGIN
        IF (rst_n = '0') THEN
            cnt <= 0;
            out_data_reg <= 0;
            m_axis_valid <= '0';
            buff_valid <= '0';
            s_axis_ready <= '0';
        ELSIF (rising_edge(clk)) THEN
            s_axis_ready <= m_axis_ready;
            IF (m_axis_ready = '1' and s_axis_valid = '1') THEN
                IF (cnt = 2) THEN
                    cnt <= 0;
                    m_axis_valid <= '1';
                    buff_valid <= '1';
                    out_data_reg <= to_integer(unsigned(s_axis_data)) + out_data_reg;
                 ELSIF (cnt = 0) then
                    cnt <= cnt + 1;
                    out_data_reg <= to_integer(unsigned(s_axis_data));
                    m_axis_valid <= '0'; 
                    buff_valid <= '0';          
                 ELSE
                    cnt <= cnt + 1;       
                    out_data_reg <= to_integer(unsigned(s_axis_data)) + out_data_reg;
                    m_axis_valid <= '0'; 
                    buff_valid <= '0'; 
                 END IF;
            ELSE 
                IF (buff_valid = '1' and m_axis_ready = '0') THEN
                    m_axis_valid <= '1';      
                ELSE 
                    m_axis_valid <= '0';
                    buff_valid <= '0';     
                END IF;       

            END IF;
           
        END IF;
    END PROCESS;

END ARCHITECTURE;