library verilog;
use verilog.vl_types.all;
entity Altera_UP_Slow_Clock_Generator is
    generic(
        COUNTER_BITS    : integer := 10;
        COUNTER_INC     : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        enable_clk      : in     vl_logic;
        new_clk         : out    vl_logic;
        rising_edge     : out    vl_logic;
        falling_edge    : out    vl_logic;
        middle_of_high_level: out    vl_logic;
        middle_of_low_level: out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of COUNTER_BITS : constant is 1;
    attribute mti_svvh_generic_type of COUNTER_INC : constant is 1;
end Altera_UP_Slow_Clock_Generator;
