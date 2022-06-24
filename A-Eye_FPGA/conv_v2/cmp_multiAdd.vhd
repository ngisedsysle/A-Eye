LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY multiAdd IS
    GENERIC (
        G_NBR_MULT : INTEGER := 3
    );
    PORT (
        in_img : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
        in_krn : IN FLOAT32_VECTOR(0 TO (G_NBR_MULT - 1));
        in_clk : IN STD_LOGIC;
        in_reset : IN STD_LOGIC;
        out_res : OUT float32
    );
END ENTITY;

ARCHITECTURE rtl OF multiAdd IS
BEGIN
    PROCESS (in_clk)
        VARIABLE SUM : FLOAT32 := TO_FLOAT(0.0);
    BEGIN
        IF (rising_edge(in_clk)) THEN
            IF (in_reset = '0') THEN
                out_res <= to_float(0.0);
            ELSE
                SUM := TO_FLOAT(0.0);
                colors : FOR color IN 0 TO G_NBR_MULT LOOP
                    SUM := SUM + in_img(color) * in_krn(color);
                END LOOP; -- colors
                out_res <= SUM;
            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;