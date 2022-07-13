LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY cmp_add_3_clk IS
    PORT (
        clk, rst : IN STD_LOGIC;
        in_data : IN float32;
        out_data : OUT float32;
        in_valid : IN STD_LOGIC;
        out_valid : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_add_3_clk IS
    SIGNAL cnt : INTEGER := 0;
    SIGNAL out_data_reg : float32;
    SIGNAL out_valid_reg : STD_LOGIC;
BEGIN
    out_data <= out_data_reg;
    out_valid <= out_valid_reg;

    compute_proc : PROCESS (clk)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (rst = '0') THEN
                out_data_reg <= to_float(0.0);
                out_valid_reg <= '0';
            ELSE
                IF (out_valid_reg = '1') THEN
                    out_valid_reg <= '0';
                END IF;
                IF (in_valid = '1') THEN
                    -- internal counter
                    cnt <= (cnt + 1) MOD 3;
                    -- res_data
                    IF (cnt = 0) THEN
                        out_data_reg <= in_data;
                    ELSE
                        out_data_reg <= in_data + out_data_reg;
                    END IF;
                    -- res_valid
                    IF (cnt = 2) AND (out_valid_reg = '0') THEN
                        out_valid_reg <= '1';
                    END IF;
                END IF;
            END IF;
        END IF;
    END PROCESS;

END ARCHITECTURE;