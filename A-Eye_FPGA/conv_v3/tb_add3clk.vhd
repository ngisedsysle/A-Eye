----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2022 15:29:27
-- Design Name: 
-- Module Name: tb_add3clk - Behavioral
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
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity cmp_add_3_clk_tb is
end;

architecture bench of cmp_add_3_clk_tb is

  component add_3_clk
      PORT (
          clk, rst : IN STD_LOGIC;
          in_data : IN STD_LOGIC_VECTOR (31 downto 0);
          out_data : OUT STD_LOGIC_VECTOR (31 downto 0);
          in_valid : IN STD_LOGIC;
          out_valid : OUT STD_LOGIC;
          in_ready : OUT STD_LOGIC;
          out_ready : IN STD_LOGIC
      );
  end component;

  signal clk, rst: STD_LOGIC := '0';
  signal in_data: STD_LOGIC_VECTOR (31 downto 0);
  signal out_data: STD_LOGIC_VECTOR (31 downto 0);
  signal in_valid: STD_LOGIC;
  signal out_valid: STD_LOGIC;
  signal in_ready: STD_LOGIC;
  signal out_ready: STD_LOGIC ;

  constant clock_period: time := 10 ns;

  signal cnt : integer := 0;
  
begin

  uut: add_3_clk port map ( clk       => clk,
                                rst       => rst,
                                in_data   => in_data,
                                out_data  => out_data,
                                in_valid  => in_valid,
                                out_valid => out_valid,
                                in_ready  => in_ready,
                                out_ready => out_ready );

  rst_process: process
  begin
    wait for 18 ns;
    rst <= '1';
    wait;
  end process;


  clocking: process
  begin
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
  end process;

  main_process: process(rst, clk)
  begin
    if rst = '0' then
        in_data <= (others => '0');
        in_valid <= '0';
        out_ready <= '0';
        cnt <= 0;
        
    elsif (rising_edge(clk)) then
        cnt <= cnt + 1;
        if in_ready = '1' then
            in_data <= std_logic_vector(to_unsigned(cnt,32));
        end if;
        if cnt < 40 then
            out_ready <= '1';
            if 20 < cnt then
                in_valid <= '1';
            end if;
        elsif 39 < cnt and cnt < 55 then
            out_ready <= '0';
        elsif 49 < cnt and cnt < 70 then
            in_valid <= '0';
        elsif 69 < cnt then
            cnt <= 0;
        end if;
    end if;
  end process;
  


end;