----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.08.2022 14:19:46
-- Design Name: 
-- Module Name: reconst_std - Behavioral
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
USE work.STD_PKG.ALL;

entity reconst_std is
    PORT (
        clk : IN STD_LOGIC;
        rst_n : IN STD_LOGIC;

        -- AXI4-S slave i/f
        s_axis_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_valid : IN STD_LOGIC;
        s_axis_ready : OUT STD_LOGIC;

        -- AXI4-S master i/f
        m_axis_data : OUT std_3x3_array;
        m_axis_valid : OUT STD_LOGIC;
        m_axis_ready : IN STD_LOGIC
    );
end reconst_std;

architecture Behavioral of reconst_std is


    SIGNAL index : integer;
    SIGNAL buff_valid : STD_LOGIC;


begin



    PROCESS (clk,rst_n)

        VARIABLE builder : std_3x3_array;
    BEGIN
        IF rst_n = '0' THEN

            index <= 0;
            m_axis_data <= (OTHERS => (OTHERS => (others =>'0')));
            builder := (OTHERS => (OTHERS => (others =>'0')));
            m_axis_valid <= '0';
            s_axis_ready <= '0';
            buff_valid <= '0';

        ELSIF rising_edge(clk) THEN
            s_axis_ready <= m_axis_ready;
            IF (s_axis_valid = '1' and m_axis_ready = '1') then
                index <= index + 1;
                builder(index / 3)(index MOD 3) := s_axis_data;

                IF (index = 8) then
                    m_axis_data <= builder;
                    m_axis_valid <= s_axis_valid;
                    buff_valid <= s_axis_valid;
                    index <= 0;
                ELSE
                    m_axis_valid <= '0';
                    buff_valid <= '0';
                END IF;

            ELSE
                IF (buff_valid = '1' AND m_axis_ready = '0') THEN
                    m_axis_valid <= '1';
                ELSE
                    m_axis_valid <= '0';
                    buff_valid <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;

end Behavioral;
