LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_conv_wrapper IS
END ENTITY;

ARCHITECTURE rtl OF tb_conv_wrapper IS
    COMPONENT cmp_conv_wrapper IS
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

    END COMPONENT;

    SIGNAL clk, rst : STD_LOGIC := '0';
    SIGNAL line_img_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL line_img_valid : STD_LOGIC;
    SIGNAL line_img_ready : STD_LOGIC;
    SIGNAL line_krn_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL line_krn_valid : STD_LOGIC;
    SIGNAL line_krn_ready : STD_LOGIC;
    SIGNAL res_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL res_valid : STD_LOGIC;
    SIGNAL res_ready : STD_LOGIC := '0';
    SIGNAL img_count : INTEGER := 1;
    SIGNAL krn_count : INTEGER := 1;

    PROCEDURE feed_axis(
        SIGNAL clk : IN STD_LOGIC;
        SIGNAL data : INOUT INTEGER;
        SIGNAL v_data : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL v_valid : OUT STD_LOGIC;
        SIGNAL v_ready : IN STD_LOGIC
    ) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (v_ready = '1') THEN
                v_data <= x"3f800000";
                -- data <= data + 1;
                v_valid <= '1';
            ELSE -- v_ready = 0 
                v_valid <= '0';
            END IF;
        END IF;
    END PROCEDURE;
BEGIN

    cmp_conv_wrapper_inst : ENTITY work.cmp_conv_wrapper
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
        clk <= NOT(clk);
        WAIT FOR 5 NS;
    END PROCESS;

    img_proc : feed_axis(clk, img_count, line_img_data, line_img_valid, line_img_ready);
    krn_proc : feed_axis(clk, krn_count, line_krn_data, line_krn_valid, line_krn_ready);

    main_proc : PROCESS
    BEGIN
        WAIT FOR 18 NS;
        rst <= '1';
        WAIT FOR 20 ns;
        res_ready <= '1';
    END PROCESS;
END ARCHITECTURE;