LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY cmp_add_3_clk IS
    PORT (
        clk, rst : IN STD_LOGIC;
        in_data : IN float32;
        out_data : INOUT float32;
        in_valid : IN STD_LOGIC;
        out_valid : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_add_3_clk IS
    SIGNAL cnt : INTEGER := 0;
BEGIN
    compute_proc : PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (rst = '0') THEN
                out_data <= to_float(0.0);
                out_valid <= '0';
            ELSE
                IF (in_valid = '1') THEN
                    -- internal counter
                    cnt <= (cnt + 1) MOD 3;
                    -- res_data
                    IF (cnt = 0) THEN
                        out_data <= in_data;
                    ELSE
                        out_data <= in_data + out_data;
                    END IF;
                    -- res_valid
                    IF (cnt = 2) THEN
                        out_valid <= '1';
                    ELSE
                        out_valid <= '0';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;