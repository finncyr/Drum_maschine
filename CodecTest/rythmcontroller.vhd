LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;
USE ieee.numeric_std.ALL; 

ENTITY RythmController IS

	GENERIC(BPM_stepsize: integer :=10; BPM_min: integer :=60; BPM_max: integer:=240; Pattern_size: integer:=16);
	
	PORT( BPM, sample1_pattern : IN std_logic_vector(16 downto 0);
			CLOCK_50 :IN std_logic;
			sample1_en :OUT std_logic
	);
	
END RythmController;

Architecture Arch OF RythmController IS
	
	SIGNAL BPM_clk : std_logic; 
	SIGNAL prescaler_index, BPM_in_int : integer;
			 
BEGIN
	 --this process controlls the bpm clock
	 prescaler: PROCESS(CLOCK_50) IS
		variable prescaler_counter : integer;
		BEGIN
		if rising_edge(CLOCK_50) then
			BPM_clk <= '0';
			if prescaler_counter < prescaler_index then
				prescaler_counter := prescaler_counter +1;
			else 
				prescaler_counter := 0;
				BPM_clk <= '1';
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
				sample1_en <= '1';
			else 
				sample1_en <= '0';
			end if;
		end if;
	end PROCESS;
	
	
	--this section determines how for the prescaler has to count based on the bpm port
	BPM_in_int <= to_integer(unsigned(BPM));
	
	with BPM_in_int select prescaler_index <=
		50000000 when 60,
		42735043 when 70,
		37593985 when 80,
		33333333 when 90,
		29940120 when 100,
		27322404 when 110,
		25000000 when 120,
		23041475 when 130,
		21459227	when 140,
		20000000 when 150,
		18726592 when 160,
		17677845 when 170,
		16666667 when 180,
		15772871 when 190,
		15015015 when 200,
		14285714 when 210,
		13623978 when 220,
		13054830 when 230,
		12500000 when 240;
	
end Arch;
			
	
			
	
	
	
