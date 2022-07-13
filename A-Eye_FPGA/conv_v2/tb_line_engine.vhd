LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY tb_line_engine IS
END ENTITY;

ARCHITECTURE rtl OF tb_line_engine IS
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

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '0';

    SIGNAL fifo_img_data : float32 := to_float(0.0);
    SIGNAL fifo_img_valid : STD_LOGIC := '0';
    SIGNAL fifo_img_ready : STD_LOGIC := '0';

    SIGNAL fifo_krn_data : float32 := to_float(0.0);
    SIGNAL fifo_krn_valid : STD_LOGIC := '0';
    SIGNAL fifo_krn_ready : STD_LOGIC := '0';

    SIGNAL res_data : float32 := to_float(0.0);
    SIGNAL res_valid : STD_LOGIC := '0';
    SIGNAL res_ready : STD_LOGIC := '0';

    SIGNAL cnt_img : INTEGER := 0;
    SIGNAL cnt_krn : INTEGER := 0;

    PROCEDURE feed_axis(
        SIGNAL clk : IN STD_LOGIC;
        SIGNAL data : INOUT INTEGER;
        SIGNAL v_data : INOUT float32;
        SIGNAL v_valid : OUT STD_LOGIC;
        SIGNAL v_ready : IN STD_LOGIC
    ) IS
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (v_ready = '1') THEN
                v_data <= to_float(data);
                data <= data + 1;
                v_valid <= '1';
            ELSE -- v_ready = 0 
                v_valid <= '0';
            END IF;
        END IF;
    END PROCEDURE;
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
            res_data => res_data,
            res_valid => res_valid,
            res_ready => res_ready
        );

    img_proc : feed_axis(clk, cnt_img, fifo_img_data, fifo_img_valid, fifo_img_ready);
    krn_proc : feed_axis(clk, cnt_krn, fifo_krn_data, fifo_krn_valid, fifo_krn_ready);

    clk_proc : PROCESS
    BEGIN
        clk <= NOT clk;
        WAIT FOR 5 ns;
    END PROCESS;

    main_proc : PROCESS
    BEGIN
        WAIT FOR 18 ns;
        rst <= '1';
        WAIT FOR 300 ns;
        res_ready <= '1';
    END PROCESS;

END ARCHITECTURE;