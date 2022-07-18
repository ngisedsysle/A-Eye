----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.06.2022 09:01:45
-- Design Name: 
-- Module Name: tb_conv_2d - Behavioral
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
ENTITY TB_CONV_2D IS
    GENERIC (
        G_TB_I_WIDTH : INTEGER := 4;
        G_TB_I_PROF : INTEGER := 3;
        G_TB_K_WIDTH : INTEGER := 2;
        G_TB_K_PROF : INTEGER := 3);

END TB_CONV_2D;

ARCHITECTURE BEHAVIORAL OF TB_CONV_2D IS
    COMPONENT CMP_CONV_2D IS
        GENERIC (
            G_I_WIDTH : INTEGER;
            G_I_PROF : INTEGER;
            G_K_WIDTH : INTEGER;
            G_K_PROF : INTEGER);
        PORT (
            START : IN STD_LOGIC;
            CLK : IN STD_LOGIC;
            RESET : IN STD_LOGIC;
            KRNL : IN FLOAT32_3D(0 TO (G_K_WIDTH - 1), 0 TO (G_K_WIDTH - 1), 0 TO (G_K_PROF - 1));
            IN_IMG : IN FLOAT32_3D(0 TO (G_I_WIDTH - 1), 0 TO (G_I_WIDTH - 1), 0 TO (G_I_PROF - 1));

            FINISHED : OUT STD_LOGIC;
            OUT_IMG : OUT FLOAT32_3D (0 TO (G_I_WIDTH - (G_K_WIDTH - 1)), 0 TO (G_I_WIDTH - (G_K_WIDTH - 1)), 0 TO (G_K_PROF - 1)));
    END COMPONENT;

    SIGNAL TB_START, TB_RESET, TB_FINISH : STD_LOGIC := '0';
    SIGNAL TB_CLK : STD_LOGIC := '1';
    SIGNAL TB_OUT_IMG : FLOAT32_3D (0 TO (G_TB_I_WIDTH - (G_TB_K_WIDTH - 1)) - 1, 0 TO (G_TB_I_WIDTH - (G_TB_K_WIDTH - 1)) - 1, 0 TO (G_TB_K_PROF - 1)) := (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
    SIGNAL TB_KRNL : FLOAT32_3D(0 TO (G_TB_K_WIDTH - 1), 0 TO (G_TB_K_WIDTH - 1), 0 TO (G_TB_K_PROF - 1)) := (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
    SIGNAL TB_IN_IMG : FLOAT32_3D(0 TO (G_TB_I_WIDTH - 1), 0 TO (G_TB_I_WIDTH - 1), 0 TO (G_TB_I_PROF - 1)) := (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
    SIGNAL COUNT : INTEGER := 0;

BEGIN

    DUT_CMP_CONV_2D : CMP_CONV_2D
    GENERIC MAP(
        G_I_WIDTH => G_TB_I_WIDTH,
        G_I_PROF => G_TB_I_PROF,
        G_K_WIDTH => G_TB_K_WIDTH,
        G_K_PROF => G_TB_K_PROF
    )
    PORT MAP(
        START => TB_START,
        CLK => TB_CLK,
        RESET => TB_RESET,
        KRNL => TB_KRNL,
        IN_IMG => TB_IN_IMG,
        FINISHED => TB_FINISH,
        OUT_IMG => TB_OUT_IMG
    );

    CLK : PROCESS
    BEGIN
        TB_CLK <= NOT(TB_CLK);
        WAIT FOR 50 NS;
    END PROCESS;

    COMPUTE : PROCESS (TB_CLK)
    BEGIN
        IF (RISING_EDGE(TB_CLK)) THEN

            IF (TB_RESET = '0') THEN
                TB_RESET <= '1';
            ELSE
                TB_START <= '1';
            END IF;

            IF (TB_FINISH = '1') THEN
                IF (TB_RESET = '1') THEN
                    TB_RESET <= '0';
                    TB_START <= '0';
                    COUNT <= COUNT + 1;
                END IF;
            END IF;

            IF (COUNT = 0) THEN
                TB_IN_IMG <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
                TB_KRNL <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
            ELSE
                IF (COUNT = 1) THEN
                    TB_IN_IMG <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(1.0))));
                    TB_KRNL <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
                ELSE
                    IF (COUNT = 2) THEN
                        TB_IN_IMG <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(1.0))));
                        TB_KRNL <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(1.0))));
                    ELSE
                        IF (COUNT = 3) THEN
                            TB_IN_IMG <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(0.0))));
                            TB_KRNL <= (OTHERS => (OTHERS => (OTHERS => TO_FLOAT(1.0))));
                        END IF;
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;
END BEHAVIORAL;