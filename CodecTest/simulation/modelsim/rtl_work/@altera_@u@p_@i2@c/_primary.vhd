library verilog;
use verilog.vl_types.all;
entity Altera_UP_I2C is
    generic(
        I2C_BUS_MODE    : vl_logic := Hi0
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        clear_ack       : in     vl_logic;
        clk_400KHz      : in     vl_logic;
        start_and_stop_en: in     vl_logic;
        change_output_bit_en: in     vl_logic;
        send_start_bit  : in     vl_logic;
        send_stop_bit   : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        transfer_data   : in     vl_logic;
        read_byte       : in     vl_logic;
        num_bits_to_transfer: in     vl_logic_vector(2 downto 0);
        i2c_sdata       : inout  vl_logic;
        i2c_sclk        : out    vl_logic;
        i2c_scen        : out    vl_logic;
        enable_clk      : out    vl_logic;
        ack             : out    vl_logic;
        data_from_i2c   : out    vl_logic_vector(7 downto 0);
        transfer_complete: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of I2C_BUS_MODE : constant is 1;
end Altera_UP_I2C;
