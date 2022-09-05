----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.08.2022 09:20:07
-- Design Name: 
-- Module Name: multiAdd - Behavioral
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

ENTITY multiAdd IS
    GENERIC (
        G_NBR_MULT : INTEGER := 3
    );
    PORT (
        in_img : IN std_array;
        in_krn : IN std_array;
        out_res : OUT std_logic_vector(31 downto 0)
    );
END ENTITY;

ARCHITECTURE rtl OF multiAdd IS


    SIGNAL mulres : std_logic_vector(63 downto 0);
    SIGNAL res : std_logic_vector(31 downto 0);

BEGIN
    PROCESS (in_img, in_krn)
        VARIABLE SUM : integer := 0;
    BEGIN
        SUM := 0;
        mulres <= (OTHERS => '0');
        res <= (OTHERS => '0');
        
        colors : FOR color IN 0 TO G_NBR_MULT - 1 LOOP
            mulres <= std_logic_vector(signed(in_img(color)) * signed(in_krn(color)));
            res <= mulres(54 downto 23);
            SUM := SUM + to_integer(signed(res));
        END LOOP; -- colors
        
        out_res <= std_logic_vector(to_signed(SUM,32));
    END PROCESS;
END ARCHITECTURE;