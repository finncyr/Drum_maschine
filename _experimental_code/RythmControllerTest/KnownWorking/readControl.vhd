-- readControl

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity READCONTROL is
    port
    (
        CLK        : in    std_logic;                           -- clock
        RESET      : in    std_logic;                           -- reset
        READ_READY : in    std_logic;                           -- x
        READ_S     : out   std_logic                            -- x
    );
end READCONTROL;

architecture BEHAVE of READCONTROL is

    -- define state-type
    type TSTATE is
    (
        READ_ON,  -- 
        READ_OFF  -- 
    );
    signal CURRENT_STATE, NEXT_STATE : TSTATE;
    constant RESET_STATE : TSTATE := READ_ON;

begin

    NEXT_STATE <=
        READ_OFF when CURRENT_STATE = READ_ON  and ((READ_READY='0')) else
        READ_ON  when CURRENT_STATE = READ_OFF and ((READ_READY='1')) else
        CURRENT_STATE;

    process(CLK, RESET, NEXT_STATE) is
    begin
        if RESET='1' then
            CURRENT_STATE <= RESET_STATE;
        elsif CLK'event and CLK='1' then
            CURRENT_STATE <= NEXT_STATE;
        end if;
    end process;

    -- OUTPUT-FUNCTION
    read_s <=
        '1' when (CURRENT_STATE = READ_ON) else
        '0';

end BEHAVE;
