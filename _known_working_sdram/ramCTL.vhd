-- ReadRam

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity READRAM is
    port
    (
        CLK                 : in    std_logic;                           -- clock
        RESET               : in    std_logic;                           -- reset
        ADRESS_S            : out   std_logic_vector(31 downto 0);       -- x
        READ_S              : out   std_logic;                           -- x
        READING_BPM_S       : out   std_logic;                           -- x
        READING_PATTERN_S   : out   std_logic;                           -- x
        READING_PLAYPAUSE_S : out   std_logic                            -- x
    );
end READRAM;

architecture BEHAVE of READRAM is
begin
    process(RESET, CLK) is
        -- DEFINE A STATE-TYPE
        type TSTATE is(
            READINGPLAYPAUSE, -- 
            READINGPATTERN,   -- 
            READINGBPM,       -- 
            WAIT3,            -- 
            WAIT1,            -- 
            WAIT2             -- 
        );
        variable STATE : TSTATE;
        -- VARIABLES
        variable COUNTER : unsigned(15 downto 0);               -- x
    begin
        if RESET='1' then
            STATE := READINGPLAYPAUSE;
        elsif CLK'event and CLK='1' then
            -- STATE-TRANSITION-FUNCTION
            case STATE is
                when READINGPLAYPAUSE =>
                    counter := to_unsigned(0, 16); -- variable assignment
                    if(true) then
                        STATE := WAIT1;
                    end if;
                when READINGPATTERN =>
                    counter := to_unsigned(0, 16); -- variable assignment
                    if(true) then
                        STATE := WAIT2;
                    end if;
                when READINGBPM =>
                    counter := to_unsigned(0, 16); -- variable assignment
                    if(true) then
                        STATE := WAIT3;
                    end if;
                when WAIT3 =>
                    counter := COUNTER + 1; -- variable assignment
                    if(COUNTER>4) then
                        STATE := READINGPLAYPAUSE;
                    end if;
                when WAIT1 =>
                    counter := COUNTER + 1; -- variable assignment
                    if(COUNTER>4) then
                        STATE := READINGPATTERN;
                    end if;
                when WAIT2 =>
                    counter := COUNTER + 1; -- variable assignment
                    if(COUNTER>4) then
                        STATE := READINGBPM;
                    end if;
                when others =>
                    STATE := READINGPLAYPAUSE;
            end case;
        end if;
        -- OUTPUT-FUNCTION
        case STATE is
                when READINGPLAYPAUSE =>
                    ADRESS_S            <= "00001000000000000000000001010000";
                    READ_S              <= '1';
                    READING_BPM_S       <= '0';
                    READING_PATTERN_S   <= '0';
                    READING_PLAYPAUSE_S <= '1';
                when READINGPATTERN =>
                    ADRESS_S            <= "00001000000000000000000000000000";
                    READ_S              <= '1';
                    READING_BPM_S       <= '0';
                    READING_PATTERN_S   <= '1';
                    READING_PLAYPAUSE_S <= '0';
                when READINGBPM =>
                    ADRESS_S            <= "00001000000000000000000001000000";
                    READ_S              <= '1';
                    READING_BPM_S       <= '1';
                    READING_PATTERN_S   <= '0';
                    READING_PLAYPAUSE_S <= '0';
                when WAIT3 =>
                    ADRESS_S            <= "00000000000000000000000000000000";
                    READ_S              <= '0';
                    READING_BPM_S       <= '0';
                    READING_PATTERN_S   <= '0';
                    READING_PLAYPAUSE_S <= '0';
                when WAIT1 =>
                    ADRESS_S            <= "00000000000000000000000000000000";
                    READ_S              <= '0';
                    READING_BPM_S       <= '0';
                    READING_PATTERN_S   <= '0';
                    READING_PLAYPAUSE_S <= '0';
                when WAIT2 =>
                    ADRESS_S            <= "00000000000000000000000000000000";
                    READ_S              <= '0';
                    READING_BPM_S       <= '0';
                    READING_PATTERN_S   <= '0';
                    READING_PLAYPAUSE_S <= '0';
            end case;
    end process;

end BEHAVE;
