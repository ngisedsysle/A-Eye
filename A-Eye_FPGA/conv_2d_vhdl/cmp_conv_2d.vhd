----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.05.2022 17:57:13
-- Design Name: 
-- Module Name: cmp_conv_2d - Behavioral
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
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY CMP_CONV_2D IS
  GENERIC (
    G_I_WIDTH : INTEGER := 9;
    G_I_PROF : INTEGER := 3;
    G_K_WIDTH : INTEGER := 3;
    G_K_PROF : INTEGER := 3);
  PORT (
    START : IN STD_LOGIC;
    CLK : IN STD_LOGIC;
    RESET : IN STD_LOGIC;
    KRNL : IN FLOAT32_3D(0 TO (G_K_WIDTH-1), 0 TO (G_K_WIDTH-1), 0 TO (G_K_PROF-1));
    IN_IMG : IN FLOAT32_3D(0 TO (G_I_WIDTH-1), 0 TO (G_I_WIDTH-1), 0 TO (G_I_PROF-1));

    FINISHED : OUT STD_LOGIC;
    OUT_IMG : OUT FLOAT32_3D (0 TO (G_I_WIDTH - (G_K_WIDTH - 1))-1, 0 TO (G_I_WIDTH - (G_K_WIDTH - 1))-1, 0 TO (G_K_PROF-1)));
END CMP_CONV_2D;

ARCHITECTURE BEHAVIORAL OF CMP_CONV_2D IS

BEGIN
  PROCESS (CLK)
    VARIABLE SUM : FLOAT32 := TO_FLOAT(0.0);
    VARIABLE N_I_WIDTH : INTEGER := G_I_WIDTH - (G_K_WIDTH - 1);
    VARIABLE N_I_PROF : INTEGER := G_I_PROF;
  BEGIN
    IF (CLK' EVENT AND CLK = '1') THEN
      IF (RESET = '0') THEN
        OUT_IMG <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
        FINISHED <= '0';
      ELSE
        IF (START = '1') THEN
          FOR OUT_HEIGHT IN 0 TO (N_I_WIDTH - 1) LOOP
            FOR OUT_WIDTH IN 0 TO (N_I_WIDTH - 1) LOOP
              FOR OUT_PROF IN 0 TO (N_I_PROF - 1) LOOP
                SUM := TO_FLOAT(0.0);
                FOR KER_HEIGHT IN 0 TO (G_K_WIDTH - 1) LOOP
                  FOR KER_WIDTH IN 0 TO (G_K_WIDTH - 1) LOOP
                    FOR KER_PROF IN 0 TO (G_K_WIDTH - 1) LOOP
                      SUM := SUM + IN_IMG((OUT_HEIGHT + KER_HEIGHT), (OUT_WIDTH + KER_WIDTH), OUT_PROF) * KRNL(KER_HEIGHT, KER_WIDTH, KER_PROF);
                    END LOOP;
                  END LOOP;
                END LOOP;
                OUT_IMG(OUT_HEIGHT, OUT_WIDTH, OUT_PROF) <= SUM;
              END LOOP;
            END LOOP;
          END LOOP;
          FINISHED <= '1';
        END IF;
      END IF;
    END IF;
  END PROCESS;
END BEHAVIORAL;