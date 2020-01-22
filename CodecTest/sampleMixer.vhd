--sample mixer counts the active synths,  divides each signal by the number of active synths and then adds them to create a normalized output
--Author: Manuel Faatz
--Version 0.1
--Date: 20.01.2020

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.ALL; 

ENTITY sampleMixer IS
	PORT(CLOCK_50, sample1_en, sample2_en, sample3_en, sample4_en :IN std_logic;
		  synth1_out, synth2_out, synth3_out, synth4_out :IN std_logic_vector(23 downto 0);
		  aud_out :OUT std_logic_vector(23 downto 0) 
	);
END sampleMixer;

ARCHITECTURE arch OF sampleMixer IS

	SIGNAL active_synths :integer;
	

BEGIN

	--this process counts the active synthesizers
	count_synths : PROCESS(sample1_en, sample2_en, sample3_en, sample4_en) IS
		variable synth_cnt : integer;
	BEGIN
		synth_cnt := 0;
		if sample1_en = '1' then
			synth_cnt := synth_cnt + 1;
		end if;
		if sample2_en = '1' then
			synth_cnt := synth_cnt + 1;
		end if;
		if sample3_en = '1' then
			synth_cnt := synth_cnt + 1;
		end if;
		if sample4_en = '1' then
			synth_cnt := synth_cnt + 1;
		end if;
		
		active_synths <= synth_cnt;
	END PROCESS;

	--this process divides each synth signal by the amount of active synths after casting them to uint, then adds them and casts them to std logic vector
	mixSignals : PROCESS (synth1_out, synth2_out, synth3_out, synth4_out) IS
		variable synth1_out_int, synth2_out_int, synth3_out_int, synth4_out_int, aud_out_int :integer;
	BEGIN
		--synth1_out_int := unsigned(synth1_out)/active_synths;
		--synth2_out_int := unsigned(synth2_out)/active_synths;
		--synth3_out_int := unsigned(synth3_out)/active_synths;
		--synth4_out_int := unsigned(synth4_out)/active_synths;
		--aud_out <= std_logic_vector(synth1_out_int + synth2_out_int + synth3_out_int + synth4_out_int);
	END PROCESS;
		

END arch;

	