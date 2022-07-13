LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.float_pkg.ALL;

ENTITY cmp_wrapper_fl_to_std IS
    PORT (
        in_data : IN float32;
        in_valid : IN STD_LOGIC;
        in_ready : IN STD_LOGIC;

        out_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        out_valid : OUT STD_LOGIC;
        out_ready : OUT STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF cmp_wrapper_fl_to_std IS
BEGIN
    out_valid <= in_valid;
    out_ready <= in_ready;
    out_data(31) <= in_data(8);
    out_data(30) <= in_data(7);
    out_data(29) <= in_data(6);
    out_data(28) <= in_data(5);
    out_data(27) <= in_data(4);
    out_data(26) <= in_data(3);
    out_data(25) <= in_data(2);
    out_data(24) <= in_data(1);
    out_data(23) <= in_data(0);
    out_data(22) <= in_data(-1);
    out_data(21) <= in_data(-2);
    out_data(20) <= in_data(-3);
    out_data(19) <= in_data(-4);
    out_data(18) <= in_data(-5);
    out_data(17) <= in_data(-6);
    out_data(16) <= in_data(-7);
    out_data(15) <= in_data(-8);
    out_data(14) <= in_data(-9);
    out_data(13) <= in_data(-10);
    out_data(12) <= in_data(-11);
    out_data(11) <= in_data(-12);
    out_data(10) <= in_data(-13);
    out_data(9) <= in_data(-14);
    out_data(8) <= in_data(-15);
    out_data(7) <= in_data(-16);
    out_data(6) <= in_data(-17);
    out_data(5) <= in_data(-18);
    out_data(4) <= in_data(-19);
    out_data(3) <= in_data(-20);
    out_data(2) <= in_data(-21);
    out_data(1) <= in_data(-22);
    out_data(0) <= in_data(-23);
    

END ARCHITECTURE;