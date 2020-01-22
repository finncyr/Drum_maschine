library verilog;
use verilog.vl_types.all;
entity clock_generator is
    generic(
        AUD_CLK_MULT    : integer := 14;
        AUD_CLK_DIV     : integer := 31
    );
    port(
        CLOCK2_50       : in     vl_logic;
        reset           : in     vl_logic;
        AUD_XCK         : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of AUD_CLK_MULT : constant is 1;
    attribute mti_svvh_generic_type of AUD_CLK_DIV : constant is 1;
end clock_generator;
