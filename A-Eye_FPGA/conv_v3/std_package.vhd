----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2022 09:36:36
-- Design Name: 
-- Module Name: std_package - Behavioral
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

PACKAGE STD_PKG is
    type std_array is array(0 to 2) of std_logic_vector(31 downto 0);
    type std_3x3_array is array (0 to 2) of std_array;
END;