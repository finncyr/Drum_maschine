library verilog;
use verilog.vl_types.all;
entity Altera_UP_Audio_Out_Serializer is
    generic(
        AUDIO_DATA_WIDTH: integer := 16
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        bit_clk_rising_edge: in     vl_logic;
        bit_clk_falling_edge: in     vl_logic;
        left_right_clk_rising_edge: in     vl_logic;
        left_right_clk_falling_edge: in     vl_logic;
        left_channel_data: in     vl_logic_vector;
        left_channel_data_en: in     vl_logic;
        right_channel_data: in     vl_logic_vector;
        right_channel_data_en: in     vl_logic;
        left_channel_fifo_write_space: out    vl_logic_vector(7 downto 0);
        right_channel_fifo_write_space: out    vl_logic_vector(7 downto 0);
        serial_audio_out_data: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUDIO_DATA_WIDTH : constant is 1;
end Altera_UP_Audio_Out_Serializer;
