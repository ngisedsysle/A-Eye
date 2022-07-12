LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;
USE work.CONV_PKG.ALL;
ENTITY cmp_line_engine IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;

        -- image input
        fifo_img_data : IN float32;
        fifo_img_valid : IN STD_LOGIC;
        fifo_img_ready : OUT STD_LOGIC;

        -- kernel input
        fifo_krn_data : IN float32;
        fifo_krn_valid : IN STD_LOGIC;
        fifo_krn_ready : OUT STD_LOGIC;

        -- result output
        res_data : OUT float32;
        res_valid : OUT STD_LOGIC;
        res_ready : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_line_engine IS
    COMPONENT cmp_line_proc IS
        PORT (
            img_data : IN FL32_3X3_2D;
            krn_data : IN FL32_3X3_2D;
            res_data : OUT float32
        );
    END COMPONENT;

    COMPONENT cmp_reconst IS
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;

            in_data : IN float32;
            in_valid : IN STD_LOGIC;
            in_ready : OUT STD_LOGIC;

            out_data : OUT FL32_3X3_2D;
            out_valid : OUT STD_LOGIC;
            out_ready : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL reconst_img_data : FL32_3X3_2D;
    SIGNAL reconst_img_valid : STD_LOGIC;
    SIGNAL reconst_img_ready : STD_LOGIC;

    SIGNAL reconst_krn_data : FL32_3X3_2D;
    SIGNAL reconst_krn_valid : STD_LOGIC;
    SIGNAL reconst_krn_ready : STD_LOGIC;

    SIGNAL tmp_img_data : FL32_3X3_2D;
    SIGNAL tmp_img_valid : STD_LOGIC;

    SIGNAL tmp_krn_data : FL32_3X3_2D;
    SIGNAL tmp_krn_valid : STD_LOGIC;

    SIGNAL tmp_res_data : float32;
    SIGNAL tmp_res_valid : STD_LOGIC;

BEGIN
    cmp_line_proc_inst : ENTITY work.cmp_line_proc
        PORT MAP(
            img_data => reconst_img_data,
            krn_data => reconst_krn_data,
            res_data => res_data
        );

    cmp_reconst_img_inst : ENTITY work.cmp_reconst
        PORT MAP(
            clk => clk,
            rst => rst,
            in_data => fifo_img_data,
            in_valid => fifo_img_valid,
            in_ready => fifo_img_ready,
            out_data => reconst_img_data,
            out_valid => reconst_img_valid,
            out_ready => reconst_img_ready
        );

    cmp_reconst_krn_inst : ENTITY work.cmp_reconst
        PORT MAP(
            clk => clk,
            rst => rst,
            in_data => fifo_krn_data,
            in_valid => fifo_krn_valid,
            in_ready => fifo_krn_ready,
            out_data => reconst_krn_data,
            out_valid => reconst_krn_valid,
            out_ready => reconst_krn_ready
        );

    res_valid <= tmp_res_valid;

    main_proc : PROCESS (clk, rst)
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '0' THEN
                reconst_img_ready <= '0';
                reconst_krn_ready <= '0';

                tmp_img_data <= (OTHERS => (OTHERS => to_float(0.0)));
                tmp_img_valid <= '0';
                tmp_krn_data <= (OTHERS => (OTHERS => to_float(0.0)));
                tmp_krn_valid <= '0';
                tmp_res_data <= to_float(0.0);
                tmp_res_valid <= '0';
            ELSE
                IF tmp_res_valid = '1' THEN
                    tmp_res_valid <= '0';
                END IF;
                
                IF (reconst_img_valid = '1') THEN
                    tmp_img_data <= reconst_img_data;
                    tmp_img_valid <= '1';
                    reconst_img_ready <= '0';
                END IF;
                IF (reconst_krn_valid = '1') THEN
                    tmp_krn_data <= reconst_krn_data;
                    tmp_krn_valid <= '1';
                    reconst_krn_ready <= '0';
                END IF;

                IF (tmp_img_valid = '1') AND (tmp_krn_valid = '1') AND (res_ready = '1') THEN
                    tmp_res_valid <= '1';
                    tmp_img_valid <= '0';
                    tmp_krn_valid <= '0';
                    reconst_img_ready <= '1';
                    reconst_krn_ready <= '1';
                END IF;

            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;