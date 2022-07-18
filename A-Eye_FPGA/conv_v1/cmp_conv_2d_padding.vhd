----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.06.2022 09:12:13
-- Design Name: 
-- Module Name: cmp_conv_2d_padding - Behavioral
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

ENTITY CMP_CONV_2D_PADDING IS
    GENERIC (
        G_I_WIDTH_PAD : INTEGER := 9;
        G_I_PROF_PAD : INTEGER := 3;
        G_K_WIDTH_PAD : INTEGER := 3;
        G_K_PROF_PAD : INTEGER := 3
    );
    PORT (
        START : IN STD_LOGIC;
        CLK : IN STD_LOGIC;
        RESET : IN STD_LOGIC;
        KRNL : IN FLOAT32_3D(0 TO (G_K_WIDTH_PAD - 1), 0 TO (G_K_WIDTH_PAD - 1), 0 TO (G_K_PROF_PAD - 1));
        IN_IMG : IN FLOAT32_3D(0 TO (G_I_WIDTH_PAD - 1), 0 TO (G_I_WIDTH_PAD - 1), 0 TO (G_I_PROF_PAD - 1));

        FINISHED : OUT STD_LOGIC;
        OUT_IMG : OUT FLOAT32_3D (0 TO (G_I_WIDTH_PAD - 1), 0 TO (G_I_WIDTH_PAD - 1), 0 TO (G_K_PROF_PAD - 1))
    );
END CMP_CONV_2D_PADDING;

ARCHITECTURE BEHAVIORAL OF CMP_CONV_2D_PADDING IS

    COMPONENT CMP_CONV_2D IS
        GENERIC (
            G_I_WIDTH : INTEGER := 9;
            G_I_PROF : INTEGER := 3;
            G_K_WIDTH : INTEGER := 3;
            G_K_PROF : INTEGER := 3
        );
        PORT (
            START : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;
            KRNL : IN FLOAT32_3D(0 TO (G_K_WIDTH - 1), 0 TO (G_K_WIDTH - 1), 0 TO (G_K_PROF - 1));
            IN_IMG : IN FLOAT32_3D(0 TO (G_I_WIDTH - 1), 0 TO (G_I_WIDTH - 1), 0 TO (G_I_PROF - 1));

            FINISHED : OUT STD_LOGIC;
            OUT_IMG : OUT FLOAT32_3D (0 TO (G_I_WIDTH - (G_K_WIDTH - 1)) - 1, 0 TO (G_I_WIDTH - (G_K_WIDTH - 1)) - 1, 0 TO (G_K_PROF - 1))
        );
    END COMPONENT;

    SIGNAL PADD_IMG : FLOAT32_3D(0 TO (G_I_WIDTH_PAD - 1) + 2, 0 TO (G_I_WIDTH_PAD - 1) + 2, 0 TO (G_I_PROF_PAD - 1)) := (OTHERS => (OTHERS => (OTHERS => to_float(0.0))));

BEGIN

    PROCESS (CLK) -- BUILD PADDED IMAGE
    BEGIN
        IF (rising_edge(CLK)) THEN
            IF (RESET = '0') THEN
                PADD_IMG <= (OTHERS => (OTHERS => (OTHERS => to_float(0.0))));
            ELSE
                FOR OUT_HEIGHT IN 1 TO (G_I_WIDTH_PAD) LOOP
                    FOR OUT_WIDTH IN 1 TO (G_I_WIDTH_PAD) LOOP
                        FOR OUT_PROF IN 0 TO (G_I_PROF_PAD - 1) LOOP
                            PADD_IMG(OUT_HEIGHT, OUT_WIDTH, OUT_PROF) <= IN_IMG(OUT_HEIGHT - 1, OUT_WIDTH - 1, OUT_PROF);
                        END LOOP;
                    END LOOP;
                END LOOP;
            END IF;
        END IF;
    END PROCESS;

    CONV_PROC : CMP_CONV_2D
    GENERIC MAP(
        G_I_WIDTH => G_I_WIDTH_PAD + 2,
        G_I_PROF => G_I_PROF_PAD,
        G_K_WIDTH => G_K_WIDTH_PAD,
        G_K_PROF => G_K_PROF_PAD
    )
    PORT MAP(
        START => START,
        CLK => CLK,
        RESET => RESET,
        KRNL => KRNL,
        IN_IMG => PADD_IMG,
        FINISHED => FINISHED,
        OUT_IMG => OUT_IMG
    );

END BEHAVIORAL;