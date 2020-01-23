--Rythmcontroller converts 4 16 bit patterns(1 = sample enabled, 0 = sample disabled)(1 bit = 1/16th note)
--to 4 enable signals for synthesizers
--refer to generatePrescaleIndeces.m for information about the prescale indeces
--Author: Manuel Faatz
--Version: 2.2 (reverted to known working state using only 1 synthesizer, added initialisation for BPM Clock)
--Date: 21.01.2020



LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.ALL; 

ENTITY RythmController IS

	GENERIC(BPM_stepsize: integer :=10; BPM_min: integer :=60; BPM_max: integer:=240; Pattern_size: integer:=16);
	
	PORT(BPM, sample1_pattern : IN std_logic_vector(15 downto 0);
		  reset,CLOCK_50, playPause :IN std_logic;
		  sample1_en :OUT std_logic
	);
	
END RythmController;

Architecture Arch OF RythmController IS
	
	SIGNAL BPM_clk : std_logic; 
	SIGNAL prescaler_index, BPM_in_int : integer;
			 
BEGIN
	 --this process controlls the bpm clock
	 prescaler: PROCESS(reset, CLOCK_50) IS
		variable prescaler_counter : integer;
		BEGIN
		if rising_edge(CLOCK_50) then
			if reset = '1' then
				BPM_clk <= '0';
			end if;
			if prescaler_counter < prescaler_index then
				prescaler_counter := prescaler_counter +1;
			else 
				prescaler_counter := 0;
				BPM_clk <= not BPM_CLK;
			end if;
		end if;
	end PROCESS;
	
	--this process controlls the pattern enable ports
	enableCtl: PROCESS(BPM_clk) IS
		variable pattern_index: integer;
		BEGIN
		if rising_edge(BPM_CLK) then
			if pattern_index < Pattern_size then
				pattern_index := pattern_index + 1;
			else 
				pattern_index := 0;
			end if;
			if sample1_pattern(pattern_index)= '1' then
				sample1_en <= '1' AND playPause;
			else 
				sample1_en <= '0';
			end if;
		end if;
	end PROCESS;
	
	
	--this section determines how for the prescaler has to count based on the bpm port
	BPM_in_int <= to_integer(unsigned(BPM));
	
	with BPM_in_int select prescaler_index <=
		12500000 when 60,
		10714286 when 70,
		9375000  when 80,
		8333333  when 90,
		7500000  when 100,
		6818182  when 110,
		6250000  when 120,
		5769231  when 130,
		5357143	when 140,
		5000000  when 150,
		4687500  when 160,
		4411765  when 170,
		4166667  when 180,
		3947368  when 190,
		3750000  when 200,
		3571429  when 210,
		3409091  when 220,
		3260870  when 230,
		3125000  when 240,
		50000 when others;
	
end Arch;
			
	
			
	
	
	
