library verilog;
use verilog.vl_types.all;
entity Altera_UP_SYNC_FIFO is
    generic(
        DATA_WIDTH      : integer := 32;
        DATA_DEPTH      : integer := 128;
        ADDR_WIDTH      : integer := 7
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        write_en        : in     vl_logic;
        write_data      : in     vl_logic_vector;
        read_en         : in     vl_logic;
        fifo_is_empty   : out    vl_logic;
        fifo_is_full    : out    vl_logic;
        words_used      : out    vl_logic_vector;
        read_data       : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of DATA_DEPTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end Altera_UP_SYNC_FIFO;
