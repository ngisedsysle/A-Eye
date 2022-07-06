LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_pix_out_proc IS
END ENTITY;

ARCHITECTURE rtl OF tb_pix_out_proc IS
    COMPONENT cmp_pix_out_proc IS
        GENERIC (
            G_NBR_OP : INTEGER
        );
        PORT (
            -- clk reset
            clk, rst : IN STD_LOGIC;

            -- from image
            line_img_data : IN FL32_3X3_2D;
            line_img_valid : IN STD_LOGIC;
            line_img_ready : OUT STD_LOGIC;

            -- from kernel
            line_krn_data : IN FL32_3X3_2D;
            line_krn_valid : IN STD_LOGIC;
            line_krn_ready : OUT STD_LOGIC;

            -- pixel output axi like
            res_data : INOUT float32;
            res_valid : OUT STD_LOGIC;
            res_ready : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk, rst : STD_LOGIC := '0';
    SIGNAL line_img_data : FL32_3X3_2D;
    SIGNAL line_img_valid : STD_LOGIC;
    SIGNAL line_img_ready : STD_LOGIC;
    SIGNAL line_krn_data : FL32_3X3_2D;
    SIGNAL line_krn_valid : STD_LOGIC;
    SIGNAL line_krn_ready : STD_LOGIC;
    SIGNAL res_data : float32;
    SIGNAL res_valid : STD_LOGIC;
    SIGNAL res_ready : STD_LOGIC := '1';
    SIGNAL tb_count : INTEGER;

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
                matrix <= (OTHERS => (OTHERS => to_float(data MOD 3)));
                v_valid <= '1';
            ELSE -- v_ready = 0 
                v_valid <= '0';
            END IF;
        END IF;
    END PROCEDURE;
BEGIN

    cmp_pix_out_proc_inst : ENTITY work.cmp_pix_out_proc
        GENERIC MAP(
            G_NBR_OP => 3
        )
        PORT MAP(
            clk => clk,
            rst => rst,
            line_img_data => line_img_data,
            line_img_valid => line_img_valid,
            line_img_ready => line_img_ready,
            line_krn_data => line_krn_data,
            line_krn_valid => line_krn_valid,
            line_krn_ready => line_krn_ready,
            res_data => res_data,
            res_valid => res_valid,
            res_ready => res_ready
        );

    clk_proc : PROCESS
    BEGIN
        tb_count <= tb_count + 1;
        clk <= NOT(clk);
        WAIT FOR 5 NS;
    END PROCESS;

    img_proc : data_modif(clk, tb_count, line_img_data, line_img_valid, line_img_ready);
    krn_proc : data_modif(clk, tb_count, line_krn_data, line_krn_valid, line_krn_ready);

    main_proc : PROCESS
    BEGIN
        WAIT FOR 10 NS;
        rst <= '1';
    END PROCESS;
END ARCHITECTURE;