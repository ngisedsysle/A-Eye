LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_multiAdd IS
    GENERIC (
        G_NBR_MULT : INTEGER := 3
    );
END tb_multiAdd;

ARCHITECTURE arch OF tb_multiAdd IS
    COMPONENT cmp_multiAdd IS
        GENERIC (
            G_NBR_MULT : INTEGER
        );
        PORT (
            in_img : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            in_krn : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            in_clk : IN STD_LOGIC;
            in_reset : IN STD_LOGIC;
            out_res : OUT float32
        );
    END COMPONENT;

    SIGNAL tb_clk, tb_reset : STD_LOGIC := '0';
    SIGNAL tb_img : FLOAT32_VECTOR(0 TO G_NBR_MULT-1) := (OTHERS => to_float(0.0));
    SIGNAL tb_krn : FLOAT32_VECTOR(0 TO G_NBR_MULT-1) := (OTHERS => to_float(0.0));
    SIGNAL tb_res : float32 := to_float(0.0);
    SIGNAL tb_count : INTEGER := 0;

BEGIN

    cmp_multiadd_inst : cmp_multiAdd
    GENERIC MAP(
        G_NBR_MULT => G_NBR_MULT
    )
    PORT MAP(
        in_img => tb_img,
        in_krn => tb_krn,
        in_clk => tb_clk,
        in_reset => tb_reset,
        out_res => tb_res
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

            IF (tb_count > 10) THEN
                tb_img <= (others => to_float(1.0));
                tb_krn <= (others => to_float(1.0));
            END IF;

        END IF;
    END PROCESS;

END arch; -- arch