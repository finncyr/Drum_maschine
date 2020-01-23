-- copy_module
--
-- reads in samples from audio CODEC interface into input buffer register
-- copies samples to output register
-- sends output register sample back to audio CODEC interface
--
-- uses three processes to control the input, copy, output 
-- 
--
-- GHartung 2014/11
library ieee;
use ieee.std_logic_1164.all;
entity copy_module is
  port(clk, reset: in std_logic;
       read_ready, write_ready: in STD_LOGIC;
       readdata_left, readdata_right, out_l_s, out_r_s:    in STD_LOGIC_VECTOR(23 DOWNTO 0);
        writedata_left, writedata_right, in_l_s, in_r_s:  out STD_LOGIC_VECTOR(23 DOWNTO 0);
        read_s, write_s: out STD_LOGIC);
end copy_module;

architecture dataflow of copy_module is
  component reg is
    generic (N: integer := 24);
    port(clk, reset, w : in std_logic;
         d: in std_logic_vector(N-1 downto 0);
         q: out std_logic_vector(N-1 downto 0));
  end component;
  signal sampleLIn, sampleRIn, sampleLOut, sampleROut: STD_LOGIC_VECTOR(23 DOWNTO 0);
  signal readIn, writeout: std_LOGIC;
begin
  inputbufferL: reg generic map (24) port map (clk, reset, readIn, readdata_left, sampleLIn);  
  inputbufferR: reg generic map (24) port map (clk, reset, readIn, readdata_right, sampleRIn);
  outputbufferL: reg generic map (24) port map (clk, reset, writeout, sampleLOut, writedata_left);
  outputbufferR: reg generic map (24) port map (clk, reset, writeout, sampleROut, writedata_right); 
  
  --io to other components
  in_l_s     <= sampleLIn;
  in_r_s     <= sampleRIn;
  sampleLOut <= out_l_s;
  sampleROut <= out_r_s;
  
  
  -- this process handles input control
  -- it produces a signal readIn which is used further for processing
  controlread: process(reset, clk, read_ready) is
    type tstate is (init, init1, idle, receive);
    variable state: tstate;
  begin
    if reset = '1' then 
      state := init;
    elsif rising_edge(clk) then
      case state is
      when init =>
        state := init1;
      when init1 =>
        state := idle;
      when idle =>
        if read_ready = '1' then
          state := receive;
        end if;
      when receive =>
        state := idle;
      end case;
    end if;
    if (state = init) or state = init1 then
      readIn <= '0';
      read_s <= '1';
    elsif state = receive then
      read_s <= '1'; -- request new sample
      readIn <= '1'; -- store sample
    elsif state = idle then 
      read_s <= '0'; -- release request
      readIn <= '0'; -- no write
    end if;
  end process;
  -- this process controls the copying of the input register to the output register.
  controlCopy:process(clk, reset, readIn) is
  begin
    if reset = '1' then 
      writeout <= '0';
    elsif rising_edge(clk) then
      if readIn = '1' then
        writeout <= '1'; -- store sample
      else
        writeout <= '0'; -- reassert sample
      end if;
    end if;
  end process;
  
  -- this process controls the sample output to the audio codec interface
  controlWrite: process(reset, clk, write_ready) is
  begin
    if reset = '1' then 
      write_s <= '1';
    elsif rising_edge(clk) then
      if write_ready = '1' then
        write_s <= '1'; -- assert write next sample
      else
        write_s <= '0'; -- reassert write 
      end if;
    end if;
  end process;
end dataflow;
