library verilog;
use verilog.vl_types.all;
entity Altera_UP_Clock_Edge is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        test_clk        : in     vl_logic;
        rising_edge     : out    vl_logic;
        falling_edge    : out    vl_logic
    );
end Altera_UP_Clock_Edge;
