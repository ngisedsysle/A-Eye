LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;
USE work.CONV_PKG.ALL;

ENTITY cmp_reconst IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;

        in_data : IN float32;
        in_valid : IN STD_LOGIC;
        in_ready : OUT STD_LOGIC;

        out_data : OUT FL32_3X3_2D;
        out_valid : OUT STD_LOGIC;
        out_ready : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_reconst IS
    SIGNAL builder : FL32_3X3_2D;
    SIGNAL out_buffer : FL32_3X3_2D;
    SIGNAL done : STD_LOGIC;
    SIGNAL buff_ready : STD_LOGIC;
    SIGNAL out_valid_reg : STD_LOGIC;
BEGIN
    out_data <= out_buffer;
    out_valid <= out_valid_reg;

    PROCESS (clk)
        VARIABLE idx : INTEGER := 0;
        VARIABLE builder : FL32_3X3_2D;
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '0' THEN
                in_ready <= '0';
                out_valid_reg <= '0';
                idx := 0;
                done <= '0';
                out_buffer <= (OTHERS => (OTHERS => to_float(0.0)));
                builder := (OTHERS => (OTHERS => to_float(0.0)));
                buff_ready <= '1';
            ELSE

                IF (buff_ready = '0') and (idx >= 6) THEN
                    in_ready <= '0';
                ELSE
                    in_ready <= '1';
                END IF;

                IF (out_valid_reg = '1') THEN
                    out_valid_reg <= '0';
                END IF;

                IF (in_valid = '1') THEN
                    builder(idx / 3)(idx MOD 3) := in_data;
                    IF (idx = 8) THEN
                        out_buffer <= builder;
                        buff_ready <= '0';
                    END IF;
                    idx := (idx + 1) MOD 9;
                END IF;

                IF (buff_ready = '0') AND (out_ready = '1') THEN
                    out_valid_reg <= '1';
                    buff_ready <= '1';
                END IF;

            END IF;
        END IF;
    END PROCESS;
END ARCHITECTURE;