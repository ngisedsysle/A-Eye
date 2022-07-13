LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY cmp_pix_out_proc IS
    PORT (
        -- clk reset
        clk, rst : IN STD_LOGIC;

        -- from image
        line_img_data : IN float32;
        line_img_valid : IN STD_LOGIC;
        line_img_ready : OUT STD_LOGIC;

        -- from kernel
        line_krn_data : IN float32;
        line_krn_valid : IN STD_LOGIC;
        line_krn_ready : OUT STD_LOGIC;

        -- pixel output axi like
        res_data : OUT float32;
        res_valid : OUT STD_LOGIC;
        res_ready : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_pix_out_proc IS

    COMPONENT cmp_add_3_clk IS
        PORT (
            clk, rst : IN STD_LOGIC;
            in_data : IN float32;
            out_data : INOUT float32;
            in_valid : IN STD_LOGIC;
            out_valid : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT axi_fifo IS
        GENERIC (
            ram_depth : NATURAL := 12
        );
        PORT (
            clk : IN STD_LOGIC;
            rst : IN STD_LOGIC;

            -- AXI input interface
            in_ready : OUT STD_LOGIC;
            in_valid : IN STD_LOGIC;
            in_data : IN float32;

            -- AXI output interface
            out_ready : IN STD_LOGIC;
            out_valid : OUT STD_LOGIC;
            out_data : OUT float32
        );
    END COMPONENT;

    COMPONENT cmp_line_engine IS
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
    END COMPONENT;

    signal fifo_img_data : float32;
    signal fifo_img_valid : STD_LOGIC;
    signal fifo_img_ready : STD_LOGIC;
    
    signal fifo_krn_data : float32;
    signal fifo_krn_valid : STD_LOGIC;
    signal fifo_krn_ready : STD_LOGIC;

    signal tmp_res_data : float32;
    signal tmp_res_valid : STD_LOGIC;
    signal tmp_res_ready : STD_LOGIC;

BEGIN

    cmp_line_engine_inst : ENTITY work.cmp_line_engine
        PORT MAP(
            clk => clk,
            rst => rst,
            fifo_img_data => fifo_img_data,
            fifo_img_valid => fifo_img_valid,
            fifo_img_ready => fifo_img_ready,
            fifo_krn_data => fifo_krn_data,
            fifo_krn_valid => fifo_krn_valid,
            fifo_krn_ready => fifo_krn_ready,
            res_data => tmp_res_data,
            res_valid => tmp_res_valid,
            res_ready => tmp_res_ready
        );

    img_fifo_inst : ENTITY work.axi_fifo
    GENERIC MAP(
        ram_depth => 12
    )
    PORT MAP(
        clk => clk,
        rst => rst,
        in_ready => line_img_ready,
        in_valid => line_img_valid,
        in_data => line_img_data,
        out_ready => fifo_img_ready,
        out_valid => fifo_img_valid,
        out_data => fifo_img_data
    );

    krn_fifo_inst : ENTITY work.axi_fifo
        GENERIC MAP(
            ram_depth => 12
        )
        PORT MAP(
            clk => clk,
            rst => rst,
            in_ready => line_krn_ready,
            in_valid => line_krn_valid,
            in_data => line_krn_data,
            out_ready => fifo_krn_ready,
            out_valid => fifo_krn_valid,
            out_data => fifo_krn_data
        );

    cmp_add_3_clk_inst : ENTITY work.cmp_add_3_clk
        PORT MAP(
            clk => clk,
            rst => rst,
            in_data => tmp_res_data,
            out_data => res_data,
            in_valid => tmp_res_valid,
            out_valid => res_valid
        );

    tmp_res_ready <= res_ready;
END ARCHITECTURE;