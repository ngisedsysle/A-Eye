LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY cmp_multiAdd IS
    GENERIC (
        G_NBR_MULT : INTEGER := 3
    );
    PORT (
        in_img : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
        in_krn : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
        out_res : OUT float32
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_multiAdd IS
BEGIN
    PROCESS (in_img, in_krn)
        VARIABLE SUM : FLOAT32 := TO_FLOAT(0.0);
    BEGIN
        SUM := TO_FLOAT(0.0);
        colors : FOR color IN 0 TO G_NBR_MULT - 1 LOOP
            SUM := SUM + in_img(color) * in_krn(color);
        END LOOP; -- colors
        out_res <= SUM;
    END PROCESS;
END ARCHITECTURE;