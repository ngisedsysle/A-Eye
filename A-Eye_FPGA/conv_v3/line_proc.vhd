LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.STD_PKG.ALL;

ENTITY line_proc IS
    PORT (
        img_data : IN std_3x3_array;
        krn_data : IN std_3x3_array;
        res_data : OUT std_logic_vector(31 downto 0)
    );
END line_proc;

ARCHITECTURE rtl OF line_proc IS
    COMPONENT multiAdd IS
        GENERIC (
            G_NBR_MULT : INTEGER := 3
        );
        PORT (
        in_img : IN std_array;
        in_krn : IN std_array;
        out_res : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    SIGNAL temp_res_1, temp_res_2, temp_res_3 : std_logic_vector(31 downto 0);
    SIGNAL int_res : integer;

BEGIN

    PIX_1_PROC : multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(0),
            in_krn => krn_data(0),
            out_res => temp_res_1
        );
    PIX_2_PROC : multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(1),
            in_krn => krn_data(1),
            out_res => temp_res_2
        );
    PIX_3_PROC : multiAdd
        GENERIC MAP(
            G_NBR_MULT => 3
        )
        PORT MAP(
            in_img => img_data(2),
            in_krn => krn_data(2),
            out_res => temp_res_3
        );
    
    int_res <= to_integer(unsigned(temp_res_1)) + to_integer(unsigned(temp_res_2)) + to_integer(unsigned(temp_res_3));
    res_data <= std_logic_vector(to_unsigned(int_res,32));
    
END ARCHITECTURE;