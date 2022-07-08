LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_axi_fifo IS
    GENERIC (
        ram_depth : NATURAL := 12
    );
END tb_axi_fifo;

ARCHITECTURE tb OF tb_axi_fifo IS

    COMPONENT axi_fifo IS
        GENERIC (
            ram_depth : NATURAL
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

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL rst : STD_LOGIC := '0';

    SIGNAL in_ready : STD_LOGIC;
    SIGNAL in_valid : STD_LOGIC := '0';
    SIGNAL in_data : float32 := to_float(0.0);

    SIGNAL out_ready : STD_LOGIC := '0';
    SIGNAL out_valid : STD_LOGIC;
    SIGNAL out_data : float32 := to_float(0.0);
    SIGNAL tb_count : INTEGER := 0;

BEGIN

    axi_fifo_inst : axi_fifo
    GENERIC MAP(
        ram_depth => ram_depth
    )
    PORT MAP(
        clk => clk,
        rst => rst,
        in_ready => in_ready,
        in_valid => in_valid,
        in_data => in_data,
        out_ready => out_ready,
        out_valid => out_valid,
        out_data => out_data
    );

    CLK_proc : PROCESS
    BEGIN
        CLK <= NOT(CLK);
        tb_count <= tb_count + 1;
        WAIT FOR 5 NS;
    END PROCESS;

    COMPUTE : PROCESS (CLK)
    BEGIN
        IF (RISING_EDGE(CLK)) THEN
            in_data <= to_float(tb_count);

            IF (rst = '0') THEN
                rst <= '1';
                in_valid <= '1';
                out_ready <= '1';
            END IF;

            IF ((tb_count MOD 10) = 1) THEN
                out_ready <= '0';
            END IF;
            IF ((tb_count MOD 10) = 3) THEN
                out_ready <= '1';
            END IF;

            IF ((tb_count MOD 16) = 1) THEN
                in_valid <= '0';
            END IF;
            IF ((tb_count MOD 16) = 3) THEN
                in_valid <= '1';
            END IF;

        END IF;
    END PROCESS;
END tb; -- tb