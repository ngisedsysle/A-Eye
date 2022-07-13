LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY cmp_conv_wrapper IS
    PORT (
        -- clk reset
        clk, rst : IN STD_LOGIC;

        -- from image
        line_img_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        line_img_valid : IN STD_LOGIC;
        line_img_ready : OUT STD_LOGIC;

        -- from kernel
        line_krn_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        line_krn_valid : IN STD_LOGIC;
        line_krn_ready : OUT STD_LOGIC;

        -- pixel output axi like
        res_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        res_valid : OUT STD_LOGIC;
        res_ready : IN STD_LOGIC
    );

END ENTITY;

ARCHITECTURE rtl OF cmp_conv_wrapper IS
    COMPONENT cmp_pix_out_proc IS
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
    END COMPONENT;

    COMPONENT cmp_wrapper_fl_to_std IS
        PORT (
            in_data : IN float32;
            in_valid : IN STD_LOGIC;
            in_ready : OUT STD_LOGIC;

            out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            out_valid : OUT STD_LOGIC;
            out_ready : IN STD_LOGIC
        );
    END COMPONENT;

    COMPONENT cmp_wrapper_std_to_fl IS
        PORT (
            in_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            in_valid : IN STD_LOGIC;
            in_ready : OUT STD_LOGIC;

            out_data : OUT float32;
            out_valid : OUT STD_LOGIC;
            out_ready : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL img_tmp_data : float32;
    SIGNAL img_tmp_valid : STD_LOGIC;
    SIGNAL img_tmp_ready : STD_LOGIC;
    SIGNAL krn_tmp_data : float32;
    SIGNAL krn_tmp_valid : STD_LOGIC;
    SIGNAL krn_tmp_ready : STD_LOGIC;
    SIGNAL res_tmp_data : float32;
    SIGNAL res_tmp_valid : STD_LOGIC;
    SIGNAL res_tmp_ready : STD_LOGIC;
BEGIN
    cmp_pix_out_proc_inst : ENTITY work.cmp_pix_out_proc
        PORT MAP(
            clk => clk,
            rst => rst,
            line_img_data => img_tmp_data,
            line_img_valid => img_tmp_valid,
            line_img_ready => img_tmp_ready,
            line_krn_data => krn_tmp_data,
            line_krn_valid => krn_tmp_valid,
            line_krn_ready => krn_tmp_ready,
            res_data => res_tmp_data,
            res_valid => res_tmp_valid,
            res_ready => res_tmp_ready
        );

    cmp_wrapper_fl_to_std_res_inst : ENTITY work.cmp_wrapper_fl_to_std
        PORT MAP(
            in_data => res_tmp_data,
            in_valid => res_tmp_valid,
            in_ready => res_tmp_ready,
            out_data => res_data,
            out_valid => res_valid,
            out_ready => res_ready
        );

    cmp_wrapper_std_to_fl_img_inst : ENTITY work.cmp_wrapper_std_to_fl
        PORT MAP(
            in_data => line_img_data,
            in_valid => line_img_valid,
            in_ready => line_img_ready,
            out_data => img_tmp_data,
            out_valid => img_tmp_valid,
            out_ready => img_tmp_ready
        );

    cmp_wrapper_std_to_fl_krn_inst : ENTITY work.cmp_wrapper_std_to_fl
        PORT MAP(
            in_data => line_krn_data,
            in_valid => line_krn_valid,
            in_ready => line_krn_ready,
            out_data => krn_tmp_data,
            out_valid => krn_tmp_valid,
            out_ready => krn_tmp_ready
        );
END ARCHITECTURE;