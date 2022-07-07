LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY cmp_line_proc IS
    PORT (
        img_data : IN FL32_3X3_2D;
        krn_data : IN FL32_3X3_2D;
        res_data : OUT float32
    );
END cmp_line_proc;

ARCHITECTURE rtl OF cmp_line_proc IS
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

    SIGNAL temp_res_1, temp_res_2, temp_res_3 : float32;

BEGIN

    PIX_1_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(0),
            in_krn => krn_data(0),
            out_res => temp_res_1
        );
    PIX_2_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(1),
            in_krn => krn_data(1),
            out_res => temp_res_2
        );
    PIX_3_PROC : ENTITY work.cmp_multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(2),
            in_krn => krn_data(2),
            out_res => temp_res_3
        );

    res_data <= temp_res_1 + temp_res_2 + temp_res_3;
END ARCHITECTURE;