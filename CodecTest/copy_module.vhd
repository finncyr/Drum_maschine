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
use ieee.numeric_std.all;
entity copy_module is
  port(clk, reset: in std_logic;
       read_ready, write_ready: in STD_LOGIC;
       readdata_left, readdata_right, audio_output_l, audio_output_r:    in STD_LOGIC_VECTOR(23 DOWNTO 0);
       writedata_left, writedata_right, audio_input_l, audio_input_r:  out STD_LOGIC_VECTOR(23 DOWNTO 0);
        read_s, write_s: out STD_LOGIC);
end copy_module;

architecture dataflow of copy_module is
  component reg is
    generic (N: integer := 24);
    port(clk, reset, w : in std_logic;
         d: in std_logic_vector(N-1 downto 0);
         q: out std_logic_vector(N-1 downto 0));
  end component;
  signal sampleL, sampleR: STD_LOGIC_VECTOR(23 DOWNTO 0);
  signal readIn, writeout: std_LOGIC;
begin
  inputbufferL: reg generic map (24) port map (clk, reset, readIn, readdata_left, audio_input_l);  
  inputbufferR: reg generic map (24) port map (clk, reset, readIn, readdata_right, audio_input_r);
  outputbufferL: reg generic map (24) port map (clk, reset, writeout, audio_output_l, writedata_left);
  outputbufferR: reg generic map (24) port map (clk, reset, writeout, audio_output_r, writedata_right); 

  -- this process controls the sample output to the audio codec interface
  controlWrite: process(reset, clk, write_ready) is
  begin
    if reset = '1' then 
      write_s <= '1';
		writeout <= '1';
    elsif rising_edge(clk) then
      if write_ready = '1' then
        write_s <= '1'; -- assert write next sample
      else
        write_s <= '0'; -- reassert write 
      end if;
    end if;
  end process;
end dataflow;
