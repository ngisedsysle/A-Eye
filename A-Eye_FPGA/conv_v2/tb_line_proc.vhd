LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_line_proc IS
    GENERIC (
        G_NBR_COLOR : INTEGER := 3;
        G_NBR_PIX : INTEGER := 3
    );
END tb_line_proc;

ARCHITECTURE tb OF tb_line_proc IS
    COMPONENT cmp_line_proc IS
        GENERIC (
            G_NBR_COLOR : INTEGER := 3;
            G_NBR_PIX : INTEGER := 3
        );
        PORT (
            in_clk, in_reset : IN STD_LOGIC;
            in_img : IN FL32_3X3_2D;
            in_krn : IN FL32_3X3_2D;
            out_res : OUT float32;
            out_valid : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL tb_clk, tb_reset, tb_valid : STD_LOGIC := '0';
    SIGNAL tb_img : FL32_3X3_2D := (OTHERS => (OTHERS => to_float(0.0)));
    SIGNAL tb_krn : FL32_3X3_2D := (OTHERS => (OTHERS => to_float(0.0)));
    SIGNAL tb_res : float32 := to_float(0.0);
    SIGNAL tb_count : INTEGER := 0;
BEGIN

    DUT_line_proc : cmp_line_proc
    GENERIC MAP(
        G_NBR_COLOR => G_NBR_COLOR,
        G_NBR_PIX => G_NBR_PIX
    )
    PORT MAP(
        in_clk => tb_clk,
        in_reset => tb_reset,
        in_img => tb_img,
        in_krn => tb_krn,
        out_res => tb_res,
        out_valid => tb_valid
    );

    CLK : PROCESS
    BEGIN
        tb_count <= tb_count + 1;
        TB_CLK <= NOT(TB_CLK);
        WAIT FOR 5 NS;
    END PROCESS;

    COMPUTE : PROCESS (TB_CLK)
    BEGIN
        IF (RISING_EDGE(TB_CLK)) THEN

            IF (TB_RESET = '0') THEN
                TB_RESET <= '1';
            END IF;

            IF (tb_count = 9) THEN
                tb_reset <= '0';
            END IF;
            IF (tb_count = 11) THEN
                tb_reset <= '1';
                tb_img <= (OTHERS => (OTHERS => to_float(1.0)));
            END IF;

            IF (tb_count = 19) THEN
                tb_reset <= '0';
            END IF;
            IF (tb_count = 21) THEN
                tb_reset <= '1';
                tb_krn <= (OTHERS => (OTHERS => to_float(1.0)));
            END IF;

        END IF;
    END PROCESS;
END tb; -- tb