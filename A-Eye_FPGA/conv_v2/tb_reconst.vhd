LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;
USE work.CONV_PKG.ALL;

ENTITY tb_reconst IS
END ENTITY;

ARCHITECTURE rtl OF tb_reconst IS
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

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '0';

    SIGNAL in_data : float32 := to_float(0.0);
    SIGNAL in_valid, in_ready : STD_LOGIC := '0';

    SIGNAL out_data : FL32_3X3_2D;
    SIGNAL out_valid : STD_LOGIC;
    SIGNAL out_ready : STD_LOGIC := '1';

BEGIN

    cmp_reconst_inst : ENTITY work.cmp_reconst
        PORT MAP(
            clk => clk,
            rst => rst,
            in_data => in_data,
            in_valid => in_valid,
            in_ready => in_ready,
            out_data => out_data,
            out_valid => out_valid,
            out_ready => out_ready
        );

    clk_proc : PROCESS
    BEGIN
        clk <= NOT clk;
        WAIT FOR 5 ns;
    END PROCESS;

    feed_proc : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (in_ready = '1') THEN
                in_valid <= '1';
                in_data <= in_data + to_float(1.0);
            ELSE
                in_valid <= '0';
            END IF;
        END IF;
    END PROCESS;

    main_proc : PROCESS
    BEGIN
        WAIT FOR 18 ns;
        rst <= '1';
        wait for 210 ns;
        out_ready <= '0';
        wait for 100 ns;
        out_ready <= '1';
        wait for 1000 ms;
    END PROCESS;

END ARCHITECTURE;