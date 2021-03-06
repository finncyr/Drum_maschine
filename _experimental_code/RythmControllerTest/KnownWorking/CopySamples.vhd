-- Copy-Samples project
-- verifies understanding of Alteras audio modules
-- Georg Hartung 14/11


LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
use ieee.numeric_std.all;
use work.sine_package.all;
--use ieee.std_logic_arith.all;

ENTITY CopySamples IS
        generic (N: integer :=512; ldN: integer := 9);
        PORT (CLOCK_50,AUD_DACLRCK, AUD_ADCLRCK, 
              AUD_BCLK,AUD_ADCDAT     :IN STD_LOGIC;
              CLOCK2_50     :IN STD_LOGIC;
              KEY           :IN STD_LOGIC_VECTOR(0 DOWNTO 0);
              SW            :in STD_LOGIC_VECTOR(19 DOWNTO 0);
              LEDR          :out Std_LOGIC_VECTOR(19 Downto 0);
              I2C_SDAT      :INOUT STD_LOGIC;
              I2C_SCLK,AUD_DACDAT,AUD_XCK :OUT STD_LOGIC);
END CopySamples;

ARCHITECTURE Struct OF CopySamples IS


        COMPONENT clock_generator
                PORT(   CLOCK2_50                                                                                                               :IN STD_LOGIC;
                        reset                                                                                                                   :IN STD_LOGIC;
                                AUD_XCK                                                                                                         :OUT STD_LOGIC);
        END COMPONENT;

        COMPONENT audio_and_video_config
                PORT(   CLOCK_50,reset                                                                                          :IN STD_LOGIC;
                        I2C_SDAT                                                                                                                :INOUT STD_LOGIC;
                                I2C_SCLK                                                                                                                :OUT STD_LOGIC);
        END COMPONENT;



      COMPONENT audio_codec
              PORT(CLOCK_50,reset,read_s,write_s               :IN STD_LOGIC;
                   writedata_left, writedata_right             :IN STD_LOGIC_VECTOR(23 DOWNTO 0);
                   AUD_ADCDAT,AUD_BCLK,AUD_ADCLRCK,AUD_DACLRCK :IN STD_LOGIC;
                   read_ready, write_ready                     :OUT STD_LOGIC;
                   readdata_left, readdata_right               :OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
                   AUD_DACDAT                                  :OUT STD_LOGIC);
      END COMPONENT;
		
      component copy_module is
				port(clk, reset: in std_logic;
					  read_ready, write_ready: in STD_LOGIC;
					  readdata_left, readdata_right, audio_output_l, audio_output_r:    in STD_LOGIC_VECTOR(23 DOWNTO 0);
					  writedata_left, writedata_right, audio_input_l, audio_input_r:  out STD_LOGIC_VECTOR(23 DOWNTO 0);
					  read_s, write_s: out STD_LOGIC);
      end component;
		
		component sine_wave is
			port( clock, reset, enable: in std_logic;
					wave_out: out sine_vector_type);
		end component;
		
		component RythmController is
			PORT( BPM, sample1_pattern : IN std_logic_vector(15 downto 0);
					CLOCK_50 :IN std_logic;
					sample1_en :OUT std_logic
			);
		end component;
		
      signal read_s, write_s, read_ready, write_ready, enable: std_LOGIC;
      signal writedata_left, writedata_right, readdata_left, readdata_right, audio_output_l_s, audio_output_r_s, audio_input_l_s, audio_input_r_s: STD_LOGIC_VECTOR(23 DOWNTO 0); --audio_output_r_s und audio_output_l_s sind die Signale die mit Samples zum ausgegeben gefüttert werden müssen
      signal reset, sample1_en_s: std_logic;
		signal sample1_pattern_s, BPM_s : std_logic_vector(15 downto 0);
BEGIN
        cgen: clock_generator port map (cloCK2_50, reset, AUD_XCK);
        avIntf: audio_and_video_config
                PORT map(CLOCK_50,reset ,I2C_SDAT, I2C_SCLK);
        audio: audio_codec
          port map (CLOCK_50, reset, read_s, write_s,
                    writedata_left, writedata_right             ,
                    AUD_ADCDAT,AUD_BCLK,AUD_ADCLRCK,AUD_DACLRCK ,
                    read_ready, write_ready                     ,
                    readdata_left, readdata_right               ,
                    AUD_DACDAT);
        processing: copy_module 
          port map(CLOCK_50, reset, read_ready, write_ready, 
                   readdata_left, readdata_right,
						 audio_output_l_s, audio_output_r_s,
                   writedata_left, writedata_right,
						 audio_input_l_s, audio_input_r_s,
                   read_s, write_s);
						 
		  synth: sine_wave
		     port map(clock_50, reset, sample1_en_s,audio_output_l_s);
			  
		  rythCtl: rythmController
			 port map( BPM_s, sample1_pattern_s, CLOCK_50, sample1_en_s);
			  
        reset <= not key(0);
		  enable <= '1';
		  
		  sample1_pattern_s <= "1000100010001000";
		  BPM_s <= "0000000000111100";

END Struct;