library verilog;
use verilog.vl_types.all;
entity Altera_UP_Audio_In_Deserializer is
    generic(
        AUDIO_DATA_WIDTH: integer := 16;
        BIT_COUNTER_INIT: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        bit_clk_rising_edge: in     vl_logic;
        bit_clk_falling_edge: in     vl_logic;
        left_right_clk_rising_edge: in     vl_logic;
        left_right_clk_falling_edge: in     vl_logic;
        done_channel_sync: in     vl_logic;
        serial_audio_in_data: in     vl_logic;
        read_left_audio_data_en: in     vl_logic;
        read_right_audio_data_en: in     vl_logic;
        left_audio_fifo_read_space: out    vl_logic_vector(7 downto 0);
        right_audio_fifo_read_space: out    vl_logic_vector(7 downto 0);
        left_channel_data: out    vl_logic_vector;
        right_channel_data: out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUDIO_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNTER_INIT : constant is 1;
end Altera_UP_Audio_In_Deserializer;
