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
    
    SUBTYPE FL32_VECT_3 IS FLOAT32_VECTOR(0 TO 2);
    TYPE FL32_3_2D IS ARRAY(INTEGER RANGE <>) OF FL32_VECT_3;
    SUBTYPE FL32_3X3_2D IS FL32_3_2D(0 TO 2);
    TYPE FL32_3X3_3D IS ARRAY (INTEGER RANGE <>) OF FL32_3X3_2D;
    SUBTYPE FL32_3X3X3_3D IS FL32_3X3_3D(0 TO 2);
END;