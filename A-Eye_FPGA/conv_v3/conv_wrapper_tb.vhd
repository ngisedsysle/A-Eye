----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2022 15:34:00
-- Design Name: 
-- Module Name: conv_wrapper_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity conv_wrapper_tb is
    --  Port ( );
end conv_wrapper_tb;

architecture Behavioral of conv_wrapper_tb is

    COMPONENT conv_wrapper IS
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

    SIGNAL clk, rst_n : STD_LOGIC := '0';
    SIGNAL s_axis_data_img : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_axis_valid_img : STD_LOGIC;
    SIGNAL s_axis_ready_img : STD_LOGIC;
    SIGNAL s_axis_data_krn : STD_LOGIC_VECTOR(31 DOWNTO 0) := (OTHERS => '0');
    SIGNAL s_axis_valid_krn : STD_LOGIC;
    SIGNAL s_axis_ready_krn : STD_LOGIC;
    SIGNAL m_axis_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL m_axis_valid : STD_LOGIC;
    SIGNAL m_axis_ready : STD_LOGIC := '0';

    CONSTANT clock_period: time := 10 ns;

    SIGNAL cnt : integer;

begin

    cmp_conv_wrapper_inst : conv_wrapper
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data_img => s_axis_data_img,
            s_axis_valid_img => s_axis_valid_img,
            s_axis_ready_img => s_axis_ready_img,
            s_axis_data_krn => s_axis_data_krn,
            s_axis_valid_krn => s_axis_valid_krn,
            s_axis_ready_krn => s_axis_ready_krn,
            m_axis_data => m_axis_data,
            m_axis_valid => m_axis_valid,
            m_axis_ready => m_axis_ready
        );

    clocking: PROCESS
    BEGIN
        clk <= '0', '1' after clock_period / 2;
        WAIT FOR clock_period;
    END PROCESS;

    rst_process: PROCESS
    BEGIN
        WAIT FOR 18 ns;
        rst_n <= '1';
        WAIT;
    END PROCESS;



        main_process: PROCESS(rst_n, clk)
        BEGIN
            IF rst_n = '0' THEN
                s_axis_valid_img <= '0';
                s_axis_valid_krn <= '0';
                m_axis_ready <= '0';
                cnt <= 0;

            ELSIF (rising_edge(clk)) THEN
                cnt <= cnt + 1;

                IF cnt < 49 THEN
                    m_axis_ready <= '1';

                    IF 20 < cnt THEN
                        s_axis_valid_img <= '1';
                        s_axis_valid_krn <= '1';
                    END IF;

                ELSIF 50 < cnt and cnt < 80 THEN
                    m_axis_ready <= '0';
                ELSIF 79 < cnt and cnt < 90 THEN
                    s_axis_valid_img <= '0';
                    s_axis_valid_krn <= '0';
                    m_axis_ready <= '0';
                ELSIF 99 < cnt THEN
                    cnt <= 0;
                END IF;

            END IF;

        END PROCESS;

    feed_axis_process : process
    begin
--        s_axis_valid_img <= '1';
--        s_axis_valid_krn <= '1';
--        m_axis_ready <= '1';
        
        wait for 365 ns;
        
        s_axis_data_img <= x"00800000" ;
        s_axis_data_krn <= x"00800000";

        wait for 90 ns;
        s_axis_data_img <= x"01000000" ;
        s_axis_data_krn <= x"00800000";

        wait for 90 ns;
        s_axis_data_img <= x"01000000" ;
        s_axis_data_krn <= x"01000000";

        wait for 90 ns;
        s_axis_data_img <= x"FF000000" ; -- -2
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"00C00000" ; -- 1.5
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"FF400000" ; -- -1.5
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"FF400000" ; -- -1.5
        s_axis_data_krn <= x"FF000000"; -- -2
        
        wait for 90 ns;
        s_axis_data_img <= x"00A00000" ; -- 1.25
        s_axis_data_krn <= x"00A00000"; -- 1.25

        wait for 90 ns;
        s_axis_data_img <= x"FF600000" ; -- -1.25
        s_axis_data_krn <= x"00A00000"; -- 1.25

        wait for 90 ns;
        s_axis_data_img <= x"FF600000" ;
        s_axis_data_krn <= x"FF600000";

        wait for 90 ns;
        s_axis_data_img <= x"FF000000" ; -- -2
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"00C00000" ; -- 1.5
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"FF400000" ; -- -1.5
        s_axis_data_krn <= x"01000000"; -- 2

        wait for 90 ns;
        s_axis_data_img <= x"FF400000" ; -- -1.5
        s_axis_data_krn <= x"FF000000"; -- -2

    end process;

end Behavioral;
