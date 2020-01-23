-- CF

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CF is
    port
    (
        CLK         : in    std_logic;                           -- clock
        RESET       : in    std_logic;                           -- reset
        WRITE_READY : in    std_logic;                           -- x
        WRITE_S     : out   std_logic                            -- x
    );
end CF;

architecture BEHAVE of CF is

    -- define state-type
    type TSTATE is
    (
        WRITE_ON,  -- 
        WRITE_OFF  -- 
    );
    signal CURRENT_STATE, NEXT_STATE : TSTATE;
    constant RESET_STATE : TSTATE := WRITE_ON;

begin

    NEXT_STATE <=
        WRITE_OFF when CURRENT_STATE = WRITE_ON  and ((WRITE_READY='0')) else
        WRITE_ON  when CURRENT_STATE = WRITE_OFF and ((WRITE_READY='1')) else
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
    write_s <=
        '1' when (CURRENT_STATE = WRITE_ON) else
        '0';

end BEHAVE;
