LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY tb_wrapper_fl_to_std IS
END ENTITY;

ARCHITECTURE rtl OF tb_wrapper_fl_to_std IS
    COMPONENT cmp_wrapper_fl_to_std IS
        PORT (
            in_data : IN float32;
            in_valid : IN STD_LOGIC;
            in_ready : IN STD_LOGIC;

            out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            out_valid : OUT STD_LOGIC;
            out_ready : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL in_data : float32 := to_float(0.0);
    SIGNAL in_valid : STD_LOGIC := '0';
    SIGNAL in_ready : STD_LOGIC := '0';
    SIGNAL out_data : STD_LOGIC_VECTOR(31 DOWNTO 0) := (others => '0');
    SIGNAL out_valid : STD_LOGIC := '0';
    SIGNAL out_ready : STD_LOGIC := '0';

BEGIN
    cmp_wrapper_fl_to_std_inst : ENTITY work.cmp_wrapper_fl_to_std
        PORT MAP(
            in_data => in_data,
            in_valid => in_valid,
            in_ready => in_ready,
            out_data => out_data,
            out_valid => out_valid,
            out_ready => out_ready
        );

    main_proc : process
    begin
        in_data <= to_float(7.0);
        wait for 10 ns;
        in_valid <= '1';
        wait for 10 ns;
        in_valid <= '0';
        wait for 10 ns;
        in_ready <= '1';
        wait for 10 ns;
        in_ready <= '0';
        wait for 10 ns;
        in_data <= to_float(0.97);
        wait for 1000 ms;
    end process;

END ARCHITECTURE;