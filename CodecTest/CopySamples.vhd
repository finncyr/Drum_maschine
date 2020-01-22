-- Copy-Samples project
-- verifies understanding of Alteras audio modules
-- Georg Hartung 14/11


--modified by Manuel Faatz
--instanciated additional entities in order to create a drum machine
--modified existing entities in order to support I/O handling in the top level entity

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
                PORT(   CLOCK2_50 :IN STD_LOGIC;
                        reset     :IN STD_LOGIC;
                        AUD_XCK   :OUT STD_LOGIC);
        END COMPONENT;

        COMPONENT audio_and_video_config
                PORT(   CLOCK_50,reset :IN STD_LOGIC;
                        I2C_SDAT       :INOUT STD_LOGIC;
                        I2C_SCLK       :OUT STD_LOGIC);
        END COMPONENT;



      COMPONENT audio_codec
              PORT(CLOCK_50,reset,read_s,write_s               :IN STD_LOGIC;
                   writedata_left, writedata_right             :IN STD_LOGIC_VECTOR(23 DOWNTO 0);
                   AUD_ADCDAT,AUD_BCLK,AUD_ADCLRCK,AUD_DACLRCK :IN STD_LOGIC;
                   read_ready, write_ready                     :OUT STD_LOGIC;
                   readdata_left, readdata_right               :OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
                   AUD_DACDAT                                  :OUT STD_LOGIC);
      END COMPONENT;
		
      COMPONENT copy_module IS
				port(clk, reset: in std_logic;
					  read_ready, write_ready: in STD_LOGIC;
					  readdata_left, readdata_right, audio_output_l, audio_output_r:    in STD_LOGIC_VECTOR(23 DOWNTO 0);
					  writedata_left, writedata_right, audio_input_l, audio_input_r:  out STD_LOGIC_VECTOR(23 DOWNTO 0);
					  read_s, write_s: out STD_LOGIC);
      END COMPONENT;
		
		COMPONENT RythmController IS
			PORT( BPM, sample1_pattern, sample2_pattern, sample3_pattern, sample4_pattern : IN std_logic_vector(15 downto 0);
				CLOCK_50 :IN std_logic;
				sample1_en, sample2_en, sample3_en, sample4_en :OUT std_logic
			);
		END COMPONENT;
		
		COMPONENT sine_wave IS
			port( clock, reset, enable: in std_logic;
					wave_out: out sine_vector_type);
		END COMPONENT;
		
		COMPONENT sampleMixer IS
			PORT(CLOCK_50, sample1_en, sample2_en, sample3_en, sample4_en :IN std_logic;
				  synth1_out, synth2_out, synth3_out, synth4_out :IN std_logic_vector(23 downto 0);
				  aud_out :OUT std_logic_vector(23 downto 0));
		END COMPONENT; 
		
      signal read_s, write_s, read_ready, write_ready, enable, sample1_en, sample2_en, sample3_en, sample4_en, synth1_clk, synth2_clk, synth3_clk, synth4_clk: std_LOGIC;
		signal synth1_prsc_ind, synth2_prsc_ind,synth3_prsc_ind,synth4_prsc_ind :integer;
		signal BPM, sample1_pattern, sample2_pattern, sample3_pattern, sample4_pattern : std_LOGIC_VECTOR(15 downto 0);
      signal writedata_left, writedata_right, readdata_left, readdata_right, audio_output_l_s, audio_output_r_s, audio_input_l_s, audio_input_r_s,synth1_out, synth2_out, synth3_out, synth4_out: STD_LOGIC_VECTOR(23 DOWNTO 0); --audio_output_r_s und audio_output_l_s sind die Signale die mit Samples zum ausgegeben gefüttert werden müssen
      signal reset: std_logic;
BEGIN
        cgen: clock_generator port map (cloCK2_50, reset, AUD_XCK);
        avIntf: audio_and_video_config
                port map(CLOCK_50,reset ,I2C_SDAT, I2C_SCLK);
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
						 
		  synth1: sine_wave
		     port map(synth1_clk, reset, sample1_en,synth1_out);
			  
			  
		  synth2: sine_wave
		     port map(synth2_clk, reset, sample2_en,synth2_out);
		  
		  synth3: sine_wave
		     port map(synth3_clk, reset, sample3_en,synth3_out);
			  
		  synth4: sine_wave
		     port map(synth4_clk, reset, sample4_en,synth4_out);
			  
		  rythctl: rythmController
		     port map( BPM, sample1_pattern, sample2_pattern, sample3_pattern, sample4_pattern,
							CLOCK_50,sample1_en, sample2_en, sample3_en, sample4_en);
		  
		  smplmx: sampleMixer
				port map(CLOCK_50, sample1_en, sample2_en, sample3_en, sample4_en,
							synth1_out, synth2_out, synth3_out, synth4_out,audio_output_l_s);
				
        reset <= not key(0);
		  enable <= '1';
		  BPM <= std_LOGIC_VECTOR(to_unsigned(60,16)); 
		  
		  sample1_pattern <= "1000100010001000";
		  sample2_pattern <= "0100010001000100";
		  sample3_pattern <= "0010001000100010";
		  sample4_pattern <= "0001000100010001";
		  
		  --this process controlls the synth1 frequency
		 synth1_prescaler: PROCESS(CLOCK_50) IS
			variable prescaler_counter : integer;
			BEGIN
			if reset = '1' then
				synth1_clk <= '0';
			else 
				if rising_edge(CLOCK_50) then
					if prescaler_counter < synth1_prsc_ind then
						prescaler_counter := prescaler_counter +1;
					else 
					prescaler_counter := 0;
					synth1_clk <= not synth1_clk;
					end if;
				end if;
			end if;
		end PROCESS;
		
		--this process controlls the synth2 frequency
		 synth2_prescaler: PROCESS(CLOCK_50) IS
			variable prescaler_counter : integer;
			BEGIN
			if rising_edge(CLOCK_50) then
				synth2_clk <= '0';
				if prescaler_counter < synth2_prsc_ind then
					prescaler_counter := prescaler_counter +1;
				else 
					prescaler_counter := 0;
					synth2_clk <= '1';
				end if;
			end if;
		end PROCESS;
		
		--this process controlls the synth3 frequency
		 synth3_prescaler: PROCESS(CLOCK_50) IS
			variable prescaler_counter : integer;
			BEGIN
			if rising_edge(CLOCK_50) then
				synth3_clk <= '0';
				if prescaler_counter < synth3_prsc_ind then
					prescaler_counter := prescaler_counter +1;
				else 
					prescaler_counter := 0;
					synth3_clk <= '1';
				end if;
			end if;
		end PROCESS;
		
		--this process controlls the synth4 frequency
		 synth4_prescaler: PROCESS(CLOCK_50) IS
			variable prescaler_counter : integer;
			BEGIN
			if rising_edge(CLOCK_50) then
				synth4_clk <= '0';
				if prescaler_counter < synth4_prsc_ind then
					prescaler_counter := prescaler_counter +1;
				else 
					prescaler_counter := 0;
					synth4_clk <= '1';
				end if;
			end if;
		end PROCESS;
		  
		  
END Struct;