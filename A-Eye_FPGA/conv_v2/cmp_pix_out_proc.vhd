LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY cmp_pix_out_proc IS
    GENERIC (
        G_NBR_OP : INTEGER := 3
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
END ENTITY;

ARCHITECTURE rtl OF cmp_pix_out_proc IS
    COMPONENT axi_fifo IS
        GENERIC (
            ram_depth : NATURAL := 10
        );
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;

            -- AXI input interface
            in_ready : OUT STD_LOGIC;
            in_valid : IN STD_LOGIC;
            in_data : IN FL32_3X3_2D;

            -- AXI output interface
            out_ready : IN STD_LOGIC;
            out_valid : OUT STD_LOGIC;
            out_data : OUT FL32_3X3_2D
        );
    END COMPONENT;

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

    -- image
    SIGNAL temp_img_data : FL32_3X3_2D;
    SIGNAL temp_img_ready, temp_img_valid : STD_LOGIC;

    -- kernel
    SIGNAL temp_krn_data : FL32_3X3_2D;
    SIGNAL temp_krn_ready, temp_krn_valid : STD_LOGIC;

    -- out line_proc
    SIGNAL temp_res_data : float32;
    SIGNAL temp_res_valid, temp_res_ready : STD_LOGIC;

BEGIN

    cmp_line_proc_inst : ENTITY work.cmp_line_proc
        GENERIC MAP(
            G_NBR_COLOR => 3,
            G_NBR_PIX => 3
        )
        PORT MAP(
            in_clk => clk,
            in_reset => rst,
            img_data => temp_img_data,
            img_valid => temp_img_valid,
            img_ready => temp_img_ready,
            krn_data => temp_krn_data,
            krn_valid => temp_krn_valid,
            krn_ready => temp_krn_ready,
            res_data => temp_res_data,
            res_valid => temp_res_valid,
            res_ready => temp_res_ready
        );

    img_fifo_inst : axi_fifo
    GENERIC MAP(
        ram_depth => 10
    )
    PORT MAP(
        clk => clk,
        rst => rst,
        in_ready => line_img_ready,
        in_valid => line_img_valid,
        in_data => line_img_data,
        out_ready => temp_img_ready,
        out_valid => temp_img_valid,
        out_data => temp_img_data
    );

    krn_fifo_inst : ENTITY work.axi_fifo
        GENERIC MAP(
            ram_depth => 10
        )
        PORT MAP(
            clk => clk,
            rst => rst,
            in_ready => line_krn_ready,
            in_valid => line_krn_valid,
            in_data => line_krn_data,
            out_ready => temp_krn_ready,
            out_valid => temp_krn_valid,
            out_data => temp_krn_data
        );

    temp_res_ready <= res_ready;

    output_proc : PROCESS (temp_res_valid, clk)
        variable cnt : INTEGER := 0;
    BEGIN
        -- reset
        IF (rising_edge(clk) AND rst = '0') THEN
            res_valid <= '0';
            res_data <= to_float(0.0);
        END IF;
        -- main
        IF (temp_res_valid = '1') THEN
            -- internal counter
            cnt := (cnt + 1) MOD 3;
            -- res_data
            IF (cnt = 0) THEN
                res_data <= temp_res_data;
            ELSE
                res_data <= temp_res_data + res_data;
            END IF;
            -- res_valid
            IF (cnt = 2) THEN
                res_valid <= '1';
            ELSE
                res_valid <= '0';
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;