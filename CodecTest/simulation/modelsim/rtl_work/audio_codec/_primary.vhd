library verilog;
use verilog.vl_types.all;
entity audio_codec is
    generic(
        AUDIO_DATA_WIDTH: integer := 24;
        BIT_COUNTER_INIT: vl_logic_vector(0 to 4) := (Hi1, Hi0, Hi1, Hi1, Hi1)
    );
    port(
        CLOCK_50        : in     vl_logic;
        reset           : in     vl_logic;
        read_s          : in     vl_logic;
        write_s         : in     vl_logic;
        writedata_left  : in     vl_logic_vector;
        writedata_right : in     vl_logic_vector;
        AUD_ADCDAT      : in     vl_logic;
        AUD_BCLK        : in     vl_logic;
        AUD_ADCLRCK     : in     vl_logic;
        AUD_DACLRCK     : in     vl_logic;
        read_ready      : out    vl_logic;
        write_ready     : out    vl_logic;
        readdata_left   : out    vl_logic_vector;
        readdata_right  : out    vl_logic_vector;
        AUD_DACDAT      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUDIO_DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of BIT_COUNTER_INIT : constant is 1;
end audio_codec;
