library verilog;
use verilog.vl_types.all;
entity Altera_UP_Audio_Bit_Counter is
    generic(
        BIT_COUNTER_INIT: vl_logic_vector(0 to 4) := (Hi0, Hi1, Hi1, Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        bit_clk_rising_edge: in     vl_logic;
        bit_clk_falling_edge: in     vl_logic;
        left_right_clk_rising_edge: in     vl_logic;
        left_right_clk_falling_edge: in     vl_logic;
        counting        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BIT_COUNTER_INIT : constant is 1;
end Altera_UP_Audio_Bit_Counter;
