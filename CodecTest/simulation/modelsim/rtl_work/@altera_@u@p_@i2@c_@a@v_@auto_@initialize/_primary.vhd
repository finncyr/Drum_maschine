library verilog;
use verilog.vl_types.all;
entity Altera_UP_I2C_AV_Auto_Initialize is
    generic(
        MIN_ROM_ADDRESS : vl_logic_vector(0 to 5) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        MAX_ROM_ADDRESS : vl_logic_vector(0 to 5) := (Hi1, Hi1, Hi0, Hi0, Hi1, Hi0);
        AUD_LINE_IN_LC  : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        AUD_LINE_IN_RC  : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0);
        AUD_LINE_OUT_LC : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        AUD_LINE_OUT_RC : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1);
        AUD_ADC_PATH    : vl_logic_vector(0 to 8) := (Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0);
        AUD_DAC_PATH    : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0);
        AUD_POWER       : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        AUD_DATA_FORMAT : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1);
        AUD_SAMPLE_CTRL : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        AUD_SET_ACTIVE  : vl_logic_vector(0 to 8) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clear_error     : in     vl_logic;
        ack             : in     vl_logic;
        transfer_complete: in     vl_logic;
        data_out        : out    vl_logic_vector(7 downto 0);
        transfer_data   : out    vl_logic;
        send_start_bit  : out    vl_logic;
        send_stop_bit   : out    vl_logic;
        auto_init_complete: out    vl_logic;
        auto_init_error : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MIN_ROM_ADDRESS : constant is 1;
    attribute mti_svvh_generic_type of MAX_ROM_ADDRESS : constant is 1;
    attribute mti_svvh_generic_type of AUD_LINE_IN_LC : constant is 1;
    attribute mti_svvh_generic_type of AUD_LINE_IN_RC : constant is 1;
    attribute mti_svvh_generic_type of AUD_LINE_OUT_LC : constant is 1;
    attribute mti_svvh_generic_type of AUD_LINE_OUT_RC : constant is 1;
    attribute mti_svvh_generic_type of AUD_ADC_PATH : constant is 1;
    attribute mti_svvh_generic_type of AUD_DAC_PATH : constant is 1;
    attribute mti_svvh_generic_type of AUD_POWER : constant is 1;
    attribute mti_svvh_generic_type of AUD_DATA_FORMAT : constant is 1;
    attribute mti_svvh_generic_type of AUD_SAMPLE_CTRL : constant is 1;
    attribute mti_svvh_generic_type of AUD_SET_ACTIVE : constant is 1;
end Altera_UP_I2C_AV_Auto_Initialize;
