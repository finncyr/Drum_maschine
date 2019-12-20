-- BtnCtrl2

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity BTNCTRL2 is
    port
    (
        CLK        : in    std_logic;                           -- clock
        RESET      : in    std_logic;                           -- reset
        BTN1       : in    std_logic;                           -- Push-Button 1 - Change sample and save current pattern
        BTN2       : in    std_logic;                           -- Push-Button 2 - BPM increment
        BTN3       : in    std_logic;                           -- Push-Button 3 - Play and pause
        SW_SAMPLE  : in    std_logic;                           -- Switch - 0  previous sample, 1 next sample
        SW_VAL     : in    unsigned(15 downto 0);               -- Value of switches input
        PTRN_OUT   : out   unsigned(15 downto 0);               -- Out Signal to send Switches
        PTRN_IDX   : out   std_logic_vector(1 downto 0);        -- Index of pattern
        BPM        : out   unsigned(15 downto 0);               -- Out Signal for BPM Clock
        PLAY_PAUSE : out   std_logic                            -- Play (1), Pause (0)
    );
end BTNCTRL2;

architecture BEHAVE of BTNCTRL2 is
begin
    process(RESET, CLK, BTN1, BTN2, BTN3, SW_SAMPLE, SW_VAL) is
        -- DEFINE A STATE-TYPE
        type TSTATE is(
            SAVE_PLAY_PAUSE, -- Save current and go to next pattern
            BPM_UP,          -- BPM is incremented
            FRTH_PTRN,       -- programm 1st pattern
            FRST_PTRN,       -- programm 2nd pattern
            SCND_PTRN,       -- programm 3rd pattern
            THRD_PTRN        -- programm 4th pattern
        );
        variable STATE : TSTATE;
        -- VARIABLES
        variable SWITCHES : unsigned(15 downto 0);               -- Switches determines patterns
        variable BPM_CLK  : unsigned(15 downto 0);               -- Amount of Speed added to BPM
        variable MEM_PTRN : std_logic_vector(1 downto 0);        -- Memory of pattern to return with pause (btn3 in state SAVE_PLAY_PAUSE) 
    begin
        if RESET='1' then
            STATE := FRST_PTRN;
        elsif CLK'event and CLK='1' then
            -- STATE-TRANSITION-FUNCTION
            case STATE is
                when SAVE_PLAY_PAUSE =>
                    if((BTN3='1') and MEM_PTRN="10") then
                        STATE := THRD_PTRN;
                    elsif((BTN3='1') and MEM_PTRN="00") then
                        STATE := FRST_PTRN;
                    elsif((BTN3='1') and MEM_PTRN="01") then
                        STATE := SCND_PTRN;
                    elsif((BTN2='1')) then
                        STATE := BPM_UP;
                    elsif((BTN3='1') and MEM_PTRN="11") then
                        STATE := FRTH_PTRN;
                    end if;
                when BPM_UP =>
                    BPM_CLK := BPM_CLK + 1; -- variable assignment
                    if(true) then
                        STATE := SAVE_PLAY_PAUSE;
                    end if;
                when FRTH_PTRN =>
                    MEM_PTRN := "11"; -- variable assignment
                    SWITCHES := SW_VAL; -- variable assignment
                    if((BTN1='1') and (SW_SAMPLE='1')) then
                        STATE := FRST_PTRN;
                    elsif((BTN1='1') and (SW_SAMPLE='0')) then
                        STATE := THRD_PTRN;
                    elsif((BTN3='1')) then
                        STATE := SAVE_PLAY_PAUSE;
                    end if;
                when FRST_PTRN =>
                    MEM_PTRN := "00"; -- variable assignment
                    SWITCHES := SW_VAL; -- variable assignment
                    if((BTN1='1') and (SW_SAMPLE='1')) then
                        STATE := SCND_PTRN;
                    elsif((BTN1='1') and (SW_SAMPLE='0')) then
                        STATE := FRTH_PTRN;
                    elsif((BTN3='1')) then
                        STATE := SAVE_PLAY_PAUSE;
                    end if;
                when SCND_PTRN =>
                    MEM_PTRN := "01"; -- variable assignment
                    SWITCHES := SW_VAL; -- variable assignment
                    if((BTN1='1') and (SW_SAMPLE='1')) then
                        STATE := THRD_PTRN;
                    elsif((BTN1='1') and (SW_SAMPLE='0')) then
                        STATE := FRST_PTRN;
                    elsif((BTN3='1')) then
                        STATE := SAVE_PLAY_PAUSE;
                    end if;
                when THRD_PTRN =>
                    MEM_PTRN := "10"; -- variable assignment
                    SWITCHES := SW_VAL; -- variable assignment
                    if((BTN1='1') and (SW_SAMPLE='1')) then
                        STATE := FRTH_PTRN;
                    elsif((BTN1='1') and (SW_SAMPLE='0')) then
                        STATE := SCND_PTRN;
                    elsif((BTN3='1')) then
                        STATE := SAVE_PLAY_PAUSE;
                    end if;
                when others =>
                    STATE := FRST_PTRN;
            end case;
        end if;
        -- OUTPUT-FUNCTION
        case STATE is
                when SAVE_PLAY_PAUSE =>
                    PTRN_OUT   <= SWITCHES;
                    PTRN_IDX   <= MEM_PTRN;
                    BPM        <= BPM_CLK;
                    PLAY_PAUSE <= '1';
                when BPM_UP =>
                    PTRN_OUT   <= to_unsigned(0,16);
                    PTRN_IDX   <= "00";
                    BPM        <= to_unsigned(0,16);
                    PLAY_PAUSE <= '1';
                when FRTH_PTRN =>
                    PTRN_OUT   <= SWITCHES;
                    PTRN_IDX   <= MEM_PTRN;
                    BPM        <= to_unsigned(0,16);
                    PLAY_PAUSE <= '0';
                when FRST_PTRN =>
                    PTRN_OUT   <= SWITCHES;
                    PTRN_IDX   <= MEM_PTRN;
                    BPM        <= to_unsigned(0,16);
                    PLAY_PAUSE <= '0';
                when SCND_PTRN =>
                    PTRN_OUT   <= SWITCHES;
                    PTRN_IDX   <= MEM_PTRN;
                    BPM        <= to_unsigned(0,16);
                    PLAY_PAUSE <= '0';
                when THRD_PTRN =>
                    PTRN_OUT   <= SWITCHES;
                    PTRN_IDX   <= MEM_PTRN;
                    BPM        <= to_unsigned(0,16);
                    PLAY_PAUSE <= '0';
            end case;
    end process;

end BEHAVE;
