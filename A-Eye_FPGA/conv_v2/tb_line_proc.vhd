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
            -- clk and reset
            in_clk, in_reset : IN STD_LOGIC;

            -- image loader
            img_data : IN FL32_3X3_2D;
            img_valid : IN STD_LOGIC;
            img_ready : OUT STD_LOGIC;

            -- kernel loader
            krn_data : IN FL32_3X3_2D;
            krn_valid : IN STD_LOGIC;
            krn_ready : OUT STD_LOGIC;

            -- result
            res_data : OUT float32;
            res_valid : OUT STD_LOGIC;
            res_ready : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL tb_clk, tb_reset, tb_res_valid, tb_res_ready, tb_img_valid, tb_img_ready, tb_krn_valid, tb_krn_ready : STD_LOGIC := '0';
    SIGNAL tb_img_data : FL32_3X3_2D := (OTHERS => (OTHERS => to_float(0.0)));
    SIGNAL tb_krn_data : FL32_3X3_2D := (OTHERS => (OTHERS => to_float(0.0)));
    SIGNAL tb_res_data : float32 := to_float(0.0);
    SIGNAL tb_count : INTEGER := 0;

    PROCEDURE data_modif(
        SIGNAL clk : IN STD_LOGIC;
        data : IN INTEGER;
        SIGNAL matrix : INOUT FL32_3X3_2D;
        SIGNAL v_valid : OUT STD_LOGIC;
        SIGNAL v_ready : IN STD_LOGIC
    ) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (v_ready = '1') THEN
                matrix <= (OTHERS => (OTHERS => to_float(data)));
                v_valid <= '1';
            ELSE
                v_valid <= '0';
            END IF;
        END IF;
    END PROCEDURE;

BEGIN

    DUT_line_proc : cmp_line_proc
    GENERIC MAP(
        G_NBR_COLOR => G_NBR_COLOR,
        G_NBR_PIX => G_NBR_PIX
    )
    PORT MAP(
        in_clk => tb_clk,
        in_reset => tb_reset,
        img_data => tb_img_data,
        img_valid => tb_img_valid,
        img_ready => tb_img_ready,
        krn_data => tb_krn_data,
        krn_valid => tb_krn_valid,
        krn_ready => tb_krn_ready,
        res_data => tb_res_data,
        res_valid => tb_res_valid,
        res_ready => tb_res_ready
    );

    img_proc : data_modif(tb_clk, tb_count, tb_img_data, tb_img_valid, tb_img_ready);
    krn_proc : data_modif(tb_clk, tb_count, tb_krn_data, tb_krn_valid, tb_krn_ready);

    CLK_proc : PROCESS
    BEGIN
        tb_count <= tb_count + 1;
        TB_CLK <= NOT(TB_CLK);
        WAIT FOR 5 NS;
    END PROCESS;

    COMPUTE_proc : PROCESS (TB_CLK)
    BEGIN

        IF (RISING_EDGE(TB_CLK)) THEN

            IF (tb_reset = '0') THEN
                tb_reset <= '1';
                tb_img_valid <= '1';
                tb_krn_valid <= '1';
            END IF;
            -- IF (tb_count = 3) THEN
            --     tb_img_valid <= '0';
            --     tb_krn_valid <= '0';
            -- END IF;

            -- IF (tb_count = 9) THEN
            --     tb_reset <= '0';
            -- END IF;
            -- IF (tb_count = 11) THEN
            --     tb_reset <= '1';
            --     tb_img_data <= (OTHERS => (OTHERS => to_float(1.0)));
            --     tb_img_valid <= '1';
            --     tb_krn_valid <= '1';
            -- END IF;
            -- IF (tb_count = 13) THEN
            --     tb_img_valid <= '0';
            --     tb_krn_valid <= '0';
            -- END IF;

            -- IF (tb_count = 19) THEN
            --     tb_reset <= '0';
            -- END IF;
            -- IF (tb_count = 21) THEN
            --     tb_reset <= '1';
            --     tb_krn_data <= (OTHERS => (OTHERS => to_float(1.0)));
            --     tb_img_valid <= '1';
            --     tb_krn_valid <= '1';
            -- END IF;
            -- IF (tb_count = 23) THEN
            --     tb_img_valid <= '0';
            --     tb_krn_valid <= '0';
            -- END IF;

        END IF;
    END PROCESS;
END tb; -- tb