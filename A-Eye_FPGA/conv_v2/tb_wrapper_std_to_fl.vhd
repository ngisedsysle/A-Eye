LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY tb_wrapper_std_to_fl IS
END ENTITY;

ARCHITECTURE rtl OF tb_wrapper_std_to_fl IS
    COMPONENT cmp_wrapper_std_to_fl IS
        PORT (
            in_data : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            in_valid : IN STD_LOGIC;
            in_ready : IN STD_LOGIC;

            out_data : OUT float32;
            out_valid : OUT STD_LOGIC;
            out_ready : OUT STD_LOGIC
        );
    END COMPONENT;

    SIGNAL in_data : std_logic_vector(31 downto 0) := (others => '0');
    SIGNAL in_valid : STD_LOGIC := '0';
    SIGNAL in_ready : STD_LOGIC := '0';
    SIGNAL out_data : float32 := to_float(0.0);
    SIGNAL out_valid : STD_LOGIC := '0';
    SIGNAL out_ready : STD_LOGIC := '0';

BEGIN
    cmp_wrapper_std_to_fl_inst: entity work.cmp_wrapper_std_to_fl
      port map (
        in_data   => in_data,
        in_valid  => in_valid,
        in_ready  => in_ready,
        out_data  => out_data,
        out_valid => out_valid,
        out_ready => out_ready
      );

    main_proc : PROCESS
    BEGIN
        in_data <= x"3f800000";
        WAIT FOR 10 ns;
        in_valid <= '1';
        WAIT FOR 10 ns;
        in_valid <= '0';
        WAIT FOR 10 ns;
        in_ready <= '1';
        WAIT FOR 10 ns;
        in_ready <= '0';
        WAIT FOR 10 ns;
        in_data <= x"75467000";
        WAIT FOR 1000 ms;
    END PROCESS;

END ARCHITECTURE;