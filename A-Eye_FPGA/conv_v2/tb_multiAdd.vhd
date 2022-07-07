LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY tb_multiAdd IS
    GENERIC (
        G_NBR_MULT : INTEGER := 3
    );
END tb_multiAdd;

ARCHITECTURE arch OF tb_multiAdd IS
    COMPONENT cmp_multiAdd IS
        GENERIC (
            G_NBR_MULT : INTEGER := 3
        );
        PORT (
            in_img : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            in_krn : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
            out_res : OUT float32
        );
    END COMPONENT;

    SIGNAL clk : STD_LOGIC := '0';
    SIGNAL img_data : FLOAT32_VECTOR(0 TO G_NBR_MULT - 1) := (OTHERS => to_float(0.0));
    SIGNAL krn_data : FLOAT32_VECTOR(0 TO G_NBR_MULT - 1) := (OTHERS => to_float(0.0));
    SIGNAL res_data : float32 := to_float(0.0);

BEGIN

    cmp_multiadd_inst : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => G_NBR_MULT
        )
        PORT MAP(
            in_img => img_data,
            in_krn => krn_data,
            out_res => res_data
        );

    CLK_proc : PROCESS
    BEGIN
        clk <= NOT(clk);
        WAIT FOR 5 NS;
    END PROCESS;

    main_proc : PROCESS
    BEGIN
        WAIT FOR 12 ns;
        img_data <= (OTHERS => to_float(1.0));
        WAIT FOR 50 ns;
        krn_data <= (OTHERS => to_float(1.0));
    END PROCESS;

END arch; -- arch