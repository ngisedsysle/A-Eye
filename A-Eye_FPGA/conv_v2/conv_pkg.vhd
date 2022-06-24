----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.06.2022 09:01:24
-- Design Name: 
-- Module Name: conv_pkg - Behavioral
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
LIBRARY IEEE;
USE IEEE.FLOAT_PKG.ALL;

PACKAGE CONV_PKG IS
    TYPE FLOAT32_VECTOR IS ARRAY(INTEGER RANGE <>) OF FLOAT32;
    TYPE FLOAT32_2D IS ARRAY(INTEGER RANGE <>, INTEGER RANGE <>) OF FLOAT32;
    TYPE FLOAT32_3D IS ARRAY (INTEGER RANGE <>, INTEGER RANGE <>, INTEGER RANGE <>) OF FLOAT32;
END;