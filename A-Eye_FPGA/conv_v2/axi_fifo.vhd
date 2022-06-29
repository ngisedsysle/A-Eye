LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE IEEE.FLOAT_PKG.ALL;
USE WORK.CONV_PKG.ALL;

ENTITY axi_fifo IS
    GENERIC (
        ram_depth : NATURAL := 10
    );
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;

        -- AXI input interface
        in_ready : OUT STD_LOGIC;
        in_valid : IN STD_LOGIC;
        in_data : IN FL32_3X3_2D;

        -- AXI output interface
        out_ready : IN STD_LOGIC;
        out_valid : OUT STD_LOGIC;
        out_data : OUT FL32_3X3_2D
    );
END axi_fifo;

ARCHITECTURE arch OF axi_fifo IS

    -- The FIFO is full when the RAM contains ram_depth - 1 elements
    TYPE ram_type IS ARRAY (0 TO ram_depth - 1)
    OF FL32_3X3_2D;
    SIGNAL ram : ram_type;

    -- Newest element at head, oldest element at tail
    SUBTYPE index_type IS NATURAL RANGE ram_type'RANGE;
    SIGNAL head : index_type;
    SIGNAL tail : index_type;
    SIGNAL count : index_type;
    SIGNAL count_p1 : index_type;

    -- Internal versions of entity signals with mode "out"
    SIGNAL in_ready_i : STD_LOGIC;
    SIGNAL out_valid_i : STD_LOGIC;

    -- True the clock cycle after a simultaneous read and write
    SIGNAL read_while_write_p1 : STD_LOGIC;

    FUNCTION next_index(
        index : index_type;
        ready : STD_LOGIC;
        valid : STD_LOGIC)
        RETURN index_type IS
    BEGIN
        IF ready = '1' AND valid = '1' THEN
            IF index = index_type'high THEN
                RETURN index_type'low;
            ELSE
                RETURN index + 1;
            END IF;
        END IF;
        RETURN index;
    END FUNCTION;

    PROCEDURE index_proc(
        SIGNAL clk : IN STD_LOGIC;
        SIGNAL rst : IN STD_LOGIC;
        SIGNAL index : INOUT index_type;
        SIGNAL ready : IN STD_LOGIC;
        SIGNAL valid : IN STD_LOGIC) IS
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '0' THEN
                index <= index_type'low;
            ELSE
                index <= next_index(index, ready, valid);
            END IF;
        END IF;
    END PROCEDURE;
BEGIN
    in_ready <= in_ready_i;
    out_valid <= out_valid_i;

    -- Update head index on write
    PROC_HEAD : index_proc(clk, rst, head, in_ready_i, in_valid);

    -- Update tail index on read
    PROC_TAIL : index_proc(clk, rst, tail, out_ready, out_valid_i);

    PROC_RAM : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            ram(head) <= in_data;
            out_data <= ram(next_index(tail, out_ready, out_valid_i));
        END IF;
    END PROCESS;

    PROC_COUNT : PROCESS (head, tail)
    BEGIN
        IF head < tail THEN
            count <= head + ram_depth - tail;
        ELSE
            count <= head - tail;
        END IF;
    END PROCESS;

    PROC_COUNT_P1 : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '0' THEN
                count_p1 <= 0;
            ELSE
                count_p1 <= count;
            END IF;
        END IF;
    END PROCESS;

    PROC_IN_READY : PROCESS (count)
    BEGIN
        IF count < ram_depth - 1 THEN
            in_ready_i <= '1';
        ELSE
            in_ready_i <= '0';
        END IF;
    END PROCESS;

    PROC_READ_WHILE_WRITE_P1 : PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF rst = '0' THEN
                read_while_write_p1 <= '0';

            ELSE
                read_while_write_p1 <= '0';
                IF in_ready_i = '1' AND in_valid = '1' AND
                    out_ready = '1' AND out_valid_i = '1' THEN
                    read_while_write_p1 <= '1';
                END IF;
            END IF;
        END IF;
    END PROCESS;

    PROC_OUT_VALID : PROCESS (count, count_p1, read_while_write_p1)
    BEGIN
        out_valid_i <= '1';
        -- If the RAM is empty or was empty in the prev cycle
        IF count = 0 OR count_p1 = 0 THEN
            out_valid_i <= '0';
        END IF;
        -- If simultaneous read and write when almost empty
        IF count = 1 AND read_while_write_p1 = '1' THEN
            out_valid_i <= '0';
        END IF;
    END PROCESS;

END arch; -- arch