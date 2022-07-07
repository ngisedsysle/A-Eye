LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_line_proc IS
END tb_line_proc;

ARCHITECTURE tb OF tb_line_proc IS
    COMPONENT cmp_line_proc IS
    PORT (
        img_data : IN FL32_3X3_2D;
        krn_data : IN FL32_3X3_2D;
        res_data : OUT float32
    );
    END COMPONENT;

    signal img_data : FL32_3X3_2D := (others => (others => to_float(0.0)));
    signal krn_data : FL32_3X3_2D := (others => (others => to_float(0.0)));
    signal res_data : float32 := to_float(0.0);

    signal clk : std_logic := '0';

BEGIN

    cmp_line_proc_inst: entity work.cmp_line_proc
      port map (
        img_data => img_data,
        krn_data => krn_data,
        res_data => res_data
      );

    CLK_proc : PROCESS
    BEGIN
        clk <= NOT(clk);
        WAIT FOR 5 NS;
    END PROCESS;

    main_proc : PROCESS
    BEGIN
        WAIT FOR 28 ns;
        img_data <= (others => (others => to_float(1.0)));
        wait for 20 ns;
        krn_data <= (others => (others => to_float(1.0)));
    END PROCESS;
END tb; -- tb