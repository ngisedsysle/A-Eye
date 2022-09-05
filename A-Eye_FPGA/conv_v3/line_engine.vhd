LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE work.STD_PKG.ALL;

ENTITY line_engine IS
    PORT (
        clk : IN STD_LOGIC;
        rst_n : IN STD_LOGIC;

        -- AXI4-S slave i/f
        -- image input
        s_axis_data_img : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_valid_img : IN STD_LOGIC;
        s_axis_ready_img : OUT STD_LOGIC;

        -- kernel input
        s_axis_data_krn : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        s_axis_valid_krn : IN STD_LOGIC;
        s_axis_ready_krn : OUT STD_LOGIC;

        --AXI4-S master i/f
        -- result output
        m_axis_data : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        m_axis_valid : OUT STD_LOGIC;
        m_axis_ready : IN STD_LOGIC
    );
END ENTITY;

ARCHITECTURE rtl OF line_engine IS
    COMPONENT line_proc IS
        PORT (
            img_data : IN std_3x3_array;
            krn_data : IN std_3x3_array;
            res_data : OUT std_logic_vector(31 downto 0)
        );
    END COMPONENT;

    COMPONENT reconst_std IS
        PORT (
            clk : IN STD_LOGIC;
            rst_n : IN STD_LOGIC;

            -- AXI4-S slave i/f
            s_axis_data : IN std_logic_vector(31 downto 0);
            s_axis_valid : IN STD_LOGIC;
            s_axis_ready : OUT STD_LOGIC;

            -- AXI4-S master i/f
            m_axis_data : OUT std_3x3_array;
            m_axis_valid : OUT STD_LOGIC;
            m_axis_ready : IN STD_LOGIC
        );
    END COMPONENT;

    SIGNAL reconst_img_data : std_3x3_array;
    SIGNAL reconst_img_valid : STD_LOGIC;
    SIGNAL reconst_img_ready : STD_LOGIC;

    SIGNAL reconst_krn_data : std_3x3_array;
    SIGNAL reconst_krn_valid : STD_LOGIC;
    SIGNAL reconst_krn_ready : STD_LOGIC;

    SIGNAL tmp_img_data : std_3x3_array;
    SIGNAL tmp_img_valid : STD_LOGIC;

    SIGNAL tmp_krn_data : std_3x3_array;
    SIGNAL tmp_krn_valid : STD_LOGIC;

    SIGNAL tmp_res_data : STD_LOGIC_VECTOR(31 DOWNTO 0);
    SIGNAL tmp_res_valid1 : STD_LOGIC;
    SIGNAL tmp_res_valid2 : STD_LOGIC;
    SIGNAL tmp_res_ready1 : STD_LOGIC;
    SIGNAL tmp_res_ready2 : STD_LOGIC;

    SIGNAL buff_res_valid : STD_LOGIC;

    SIGNAL just_begin : STD_LOGIC;

    SIGNAL res_available : STD_LOGIC;

    SIGNAL mask_res_valid : STD_LOGIC;

BEGIN
    line_proc_inst : line_proc
        PORT MAP(
            img_data => tmp_img_data,
            krn_data => tmp_krn_data,
            res_data => tmp_res_data
        );

    reconst_img_inst : reconst_std
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data => s_axis_data_img,
            s_axis_valid => s_axis_valid_img,
            s_axis_ready => s_axis_ready_img,
            m_axis_data => reconst_img_data,
            m_axis_valid => reconst_img_valid,
            m_axis_ready => reconst_img_ready
        );

    reconst_krn_inst : reconst_std
        PORT MAP(
            clk => clk,
            rst_n => rst_n,
            s_axis_data => s_axis_data_krn,
            s_axis_valid => s_axis_valid_krn,
            s_axis_ready => s_axis_ready_krn,
            m_axis_data => reconst_krn_data,
            m_axis_valid => reconst_krn_valid,
            m_axis_ready => reconst_krn_ready
        );

    reconst_img_ready <= tmp_res_ready2;
    reconst_krn_ready <= tmp_res_ready2;

    m_axis_valid <= tmp_res_valid2 OR mask_res_valid;
    buff_res_valid <= tmp_res_valid2 OR mask_res_valid;

    main_proc : PROCESS (clk, rst_n)
    BEGIN
        IF rst_n = '0' THEN

            tmp_res_valid1 <= '0';
            tmp_res_valid2 <= '0';
            tmp_res_ready1 <= '0';
            tmp_res_ready2 <= '0';
            tmp_img_data <= (OTHERS => (OTHERS => (OTHERS =>'0')));
            tmp_krn_data <= (OTHERS => (OTHERS => (OTHERS =>'0')));
            m_axis_data <= (OTHERS => '0');
            res_available <= '0';
            mask_res_valid <= '0';

        ELSIF rising_edge(clk) THEN
            tmp_res_valid2 <= tmp_res_valid1;

            tmp_res_ready1 <= m_axis_ready;
            tmp_res_ready2 <= tmp_res_ready1;


            IF ( reconst_krn_valid = '1' and reconst_img_valid = '1' and tmp_res_ready2 = '1') then
                tmp_img_data <= reconst_img_data;
                tmp_krn_data <= reconst_krn_data;
                tmp_res_valid1 <= '1';
                res_available <= '1';

            ELSE
                IF (res_available = '1') THEN
                    m_axis_data <= tmp_res_data;
                    res_available <= '0';
                END IF;
                tmp_res_valid1 <= '0';
            END IF;

            IF (buff_res_valid = '1' and m_axis_ready = '0') THEN
                mask_res_valid <= '1';
            ELSE
                mask_res_valid <= '0';
            END IF;


        END IF;
    END PROCESS;
END ARCHITECTURE;