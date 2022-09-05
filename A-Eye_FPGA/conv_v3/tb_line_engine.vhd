----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2022 10:57:31
-- Design Name: 
-- Module Name: tb_line_engine - Behavioral
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

entity line_engine_tb is
end;

architecture bench of line_engine_tb is

  component line_engine
      PORT (
          clk : IN STD_LOGIC;
          rst : IN STD_LOGIC;
          fifo_img_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
          fifo_img_valid : IN STD_LOGIC;
          fifo_img_ready : OUT STD_LOGIC;
          fifo_krn_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
          fifo_krn_valid : IN STD_LOGIC;
          fifo_krn_ready : OUT STD_LOGIC;
          res_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
          res_valid : OUT STD_LOGIC;
          res_ready : IN STD_LOGIC
      );
  end component;

  signal clk: STD_LOGIC := '0';
  signal rst: STD_LOGIC := '0';
  signal fifo_img_data: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal fifo_img_valid: STD_LOGIC;
  signal fifo_img_ready: STD_LOGIC;
  signal fifo_krn_data: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal fifo_krn_valid: STD_LOGIC;
  signal fifo_krn_ready: STD_LOGIC;
  signal res_data: STD_LOGIC_VECTOR(31 DOWNTO 0);
  signal res_valid: STD_LOGIC;
  signal res_ready: STD_LOGIC := '0';

  constant clock_period: time := 10 ns;

  signal cnt : integer;

begin

  uut: line_engine port map ( clk            => clk,
                              rst            => rst,
                              fifo_img_data  => fifo_img_data,
                              fifo_img_valid => fifo_img_valid,
                              fifo_img_ready => fifo_img_ready,
                              fifo_krn_data  => fifo_krn_data,
                              fifo_krn_valid => fifo_krn_valid,
                              fifo_krn_ready => fifo_krn_ready,
                              res_data       => res_data,
                              res_valid      => res_valid,
                              res_ready      => res_ready );

  clocking: process
  begin
      clk <= '0', '1' after clock_period / 2;
      wait for clock_period;
  end process;
  
  rst_process: process
  begin
    wait for 18 ns;
    rst <= '1';
    wait;
  end process;



  main_process: process(rst, clk)
  begin
    if rst = '0' then
        fifo_img_data <= (others => '0');
        fifo_krn_data <= (others => '0');
        fifo_img_valid <= '0';
        fifo_krn_valid <= '0';
        res_ready <= '0';
        cnt <= 0;
        
    elsif (rising_edge(clk)) then
        cnt <= cnt + 1;
        fifo_img_data <= std_logic_vector(to_unsigned(cnt,32));
        fifo_krn_data <= std_logic_vector(to_unsigned(cnt,32));
        if cnt < 40 then
            res_ready <= '1';
            if 20 < cnt then
                fifo_img_valid <= '1';
                fifo_krn_valid <= '1';
            end if;
        elsif 39 < cnt and cnt < 55 then
            res_ready <= '0';
        elsif 49 < cnt and cnt < 70 then
            fifo_img_valid <= '0';
            fifo_krn_valid <= '0';
        elsif 69 < cnt then
            cnt <= 0;
        end if;
    end if;
  end process;
  


end;