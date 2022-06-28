LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY cmp_line_proc IS
    GENERIC (
        G_NBR_COLOR : INTEGER := 3;
        G_NBR_PIX : INTEGER := 3
    );
    PORT (
        in_clk, in_reset, img_valid, krn_valid : IN STD_LOGIC;
        in_img : IN FL32_3X3_2D;
        in_krn : IN FL32_3X3_2D;

        out_res : OUT float32;
        out_valid : OUT STD_LOGIC
    );
END cmp_line_proc;

ARCHITECTURE rtl OF cmp_line_proc IS
    COMPONENT cmp_multiAdd IS
        GENERIC (
            G_NBR_MULT : INTEGER
        );
        PORT (
            in_img : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            in_krn : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            in_clk, img_valid, krn_valid : IN STD_LOGIC;
            in_reset : IN STD_LOGIC;
            out_res : OUT float32;
            out_valid : OUT STD_LOGIC
        );
    END COMPONENT;
    SIGNAL temp_res_1, temp_res_2, temp_res_3 : float32;
    SIGNAL temp_valid_1, temp_valid_2, temp_valid_3 : STD_LOGIC;
BEGIN
    PIX_1_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => G_NBR_COLOR
        )
        PORT MAP(
            in_img => in_img(0),
            in_krn => in_krn(0),
            in_clk => in_clk,
            img_valid => img_valid,
            krn_valid => krn_valid,
            in_reset => in_reset,
            out_res => temp_res_1,
            out_valid => temp_valid_1
        );
    PIX_2_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => G_NBR_COLOR
        )
        PORT MAP(
            in_img => in_img(1),
            in_krn => in_krn(1),
            in_clk => in_clk,
            img_valid => img_valid,
            krn_valid => krn_valid,
            in_reset => in_reset,
            out_res => temp_res_2,
            out_valid => temp_valid_2
        );
    PIX_3_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => G_NBR_COLOR
        )
        PORT MAP(
            in_img => in_img(2),
            in_krn => in_krn(2),
            in_clk => in_clk,
            img_valid => img_valid,
            krn_valid => krn_valid,
            in_reset => in_reset,
            out_res => temp_res_3,
            out_valid => temp_valid_3
        );

    PROCESS (in_clk)

    BEGIN
        IF (rising_edge(in_clk)) THEN
            IF (in_reset = '0') THEN
                out_res <= to_float(0.0);
                out_valid <= '0';
            ELSE
                out_res <= temp_res_1 + temp_res_2 + temp_res_3;
                out_valid <= temp_valid_1 AND temp_valid_2 AND temp_valid_3;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;