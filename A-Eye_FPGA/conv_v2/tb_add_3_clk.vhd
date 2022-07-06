LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY tb_add_3_clk IS
END ENTITY;

ARCHITECTURE tb OF tb_add_3_clk IS
    COMPONENT cmp_add_3_clk IS
        PORT (
            clk, rst : IN STD_LOGIC;
            in_data : IN float32;
            out_data : INOUT float32;
            in_valid : IN STD_LOGIC;
            out_valid : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL clk, rst, in_valid, out_valid : STD_LOGIC := '0';
    SIGNAL in_data, out_data : float32 := to_float(0);
signal count : integer := 0;

BEGIN
    cmp_add_3_clk_inst : ENTITY work.cmp_add_3_clk
        PORT MAP(
            clk => clk,
            rst => rst,
            in_data => in_data,
            out_data => out_data,
            in_valid => in_valid,
            out_valid => out_valid
        );

    CLK_proc : PROCESS
    BEGIN
        count <= count + 1;
        clk <= NOT(clk);
        WAIT FOR 5 NS;
    END PROCESS;

    in_data_proc : process(clk)
    begin
        in_data <= to_float(count);
        in_valid <= '1';
    end process;

    main_proc : process
    begin
        WAIT FOR 10 NS;
        rst <= '1';
    end process;
END tb;

