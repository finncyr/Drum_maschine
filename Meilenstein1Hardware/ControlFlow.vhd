-- CtlFlw

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity CtlFlw is
    port
    (
        CLK         : in    std_logic;                           -- clock
        RESET       : in    std_logic;                           -- reset
        RST         : in    std_logic;                           -- x
        READ_L_RAM  : out   std_logic;                           -- x
        WRITE_L_RAM : out   std_logic;                           -- x
        ADDR_L      : out   std_logic_vector(31 downto 0);       -- x
        READ_R_RAM  : out   std_logic;                           -- x
        WRITE_R_RAM : out   std_logic;                           -- x
        ADDR_R      : out   std_logic_vector(31 downto 0)        -- x
    );
end CtlFlw;

architecture BEHAVE of CtlFlw is
begin
    process(RESET, CLK, RST) is
        -- DEFINE A STATE-TYPE
        type TSTATE is(
            REC,     -- 
            PLAY,       -- 
            INITREC, -- 
            INITPLAY,   -- 
            IDLE        -- 
        );
        variable STATE : TSTATE;
        -- VARIABLES
        variable ADDR : std_logic_vector(31 downto 0);       -- x
    begin
        if RESET='1' then
            STATE := INITREC;
        elsif CLK'event and CLK='1' then
            -- STATE-TRANSITION-FUNCTION
            case STATE is
                when REC =>
                    addr := std_logic_vector( unsigned(addr) + 1 ); -- variable assignment
                    if(ADDR<"11111111111111111111111111111111") then                   --3*48000 = 240000 = 0x3A980 -> 3 Sekunden Aufnahme
                        STATE := REC;
                    elsif(ADDR>="11111111111111111111111111111111") then               
                        STATE := INITPLAY;
                    end if;
                when PLAY =>
                    addr := std_logic_vector( unsigned(addr) + 1 ); -- variable assignment
                    if(ADDR<"11111111111111111111111111111111") then                   --3*48000 = 240000 = 0x3A980 -> 3 Sekunden Wiedergabe
                        STATE := PLAY;
                    elsif(ADDR>="11111111111111111111111111111111") then
                        STATE := IDLE;
                    end if;
                when INITREC =>
                    addr := "00000000000000000000000000000000"; -- variable assignment
                    if(true) then
                        STATE := REC;
                    end if;
                when INITPLAY =>
                    addr := "00000000000000000000000000000000"; -- variable assignment
                    if(true) then
                        STATE := PLAY;
                    end if;
                when IDLE =>
                when others =>
                    STATE := INITREC;
            end case;
        end if;
        -- OUTPUT-FUNCTION
        case STATE is
                when REC =>
                    READ_L_RAM  <= '1';
                    WRITE_L_RAM <= '0';
                    ADDR_L      <= ADDR;
                    READ_R_RAM  <= '1';
                    WRITE_R_RAM <= '0';
                    ADDR_R      <= ADDR;
                when PLAY =>
                    READ_L_RAM  <= '0';
                    WRITE_L_RAM <= '1';
                    ADDR_L      <= ADDR;
                    READ_R_RAM  <= '0';
                    WRITE_R_RAM <= '1';
                    ADDR_R      <= ADDR;
                when INITREC =>
                    READ_L_RAM  <= '0';
                    WRITE_L_RAM <= '0';
                    ADDR_L      <= "00000000000000000000000000000000";
                    READ_R_RAM  <= '0';
                    WRITE_R_RAM <= '0';
                    ADDR_R      <= "00000000000000000000000000000000";
                when INITPLAY =>
                    READ_L_RAM  <= '0';
                    WRITE_L_RAM <= '0';
                    ADDR_L      <= "00000000000000000000000000000000";
                    READ_R_RAM  <= '0';
                    WRITE_R_RAM <= '0';
                    ADDR_R      <= "00000000000000000000000000000000";
                when IDLE =>
                    READ_L_RAM  <= '0';
                    WRITE_L_RAM <= '0';
                    ADDR_L      <= "00000000000000000000000000000000";
                    READ_R_RAM  <= '0';
                    WRITE_R_RAM <= '0';
                    ADDR_R      <= "00000000000000000000000000000000";
            end case;
    end process;

end BEHAVE;
