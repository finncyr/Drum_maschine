-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Sat Jan 04 18:47:57 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Meilenstei1Hardware IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		write_l_ram :  IN  STD_LOGIC;
		write_r_ram :  IN  STD_LOGIC;
		read_l_ram :  IN  STD_LOGIC;
		read_r_ram :  IN  STD_LOGIC;
		AUD_ADCDAT :  IN  STD_LOGIC;
		AUD_BCLK :  IN  STD_LOGIC;
		AUD_ADCLRCK :  IN  STD_LOGIC;
		AUD_DACLRCK :  IN  STD_LOGIC;
		addr_l :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		addr_r :  IN  STD_LOGIC_VECTOR(31 DOWNTO 0);
		read_ready :  OUT  STD_LOGIC;
		write_ready :  OUT  STD_LOGIC;
		AUD_DACDAT :  OUT  STD_LOGIC
	);
END Meilenstei1Hardware;

ARCHITECTURE bdf_type OF Meilenstei1Hardware IS 

COMPONENT copy_module
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 read_ready : IN STD_LOGIC;
		 write_ready : IN STD_LOGIC;
		 out_l_s : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 out_r_s : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 readdata_left : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 readdata_right : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 read_s : OUT STD_LOGIC;
		 write_s : OUT STD_LOGIC;
		 in_l_s : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 in_r_s : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 writedata_left : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 writedata_right : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT audio_codec
GENERIC (AUDIO_DATA_WIDTH : INTEGER;
			BIT_COUNTER_INIT : STD_LOGIC_VECTOR(4 DOWNTO 0)
			);
	PORT(CLOCK_50 : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 read_s : IN STD_LOGIC;
		 write_s : IN STD_LOGIC;
		 AUD_ADCDAT : IN STD_LOGIC;
		 AUD_BCLK : IN STD_LOGIC;
		 AUD_ADCLRCK : IN STD_LOGIC;
		 AUD_DACLRCK : IN STD_LOGIC;
		 writedata_left : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 writedata_right : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 read_ready : OUT STD_LOGIC;
		 write_ready : OUT STD_LOGIC;
		 AUD_DACDAT : OUT STD_LOGIC;
		 readdata_left : OUT STD_LOGIC_VECTOR(23 DOWNTO 0);
		 readdata_right : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

COMPONENT memory
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 rd : IN STD_LOGIC;
		 wr : IN STD_LOGIC;
		 addr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 dataIn : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		 dataOut : OUT STD_LOGIC_VECTOR(23 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	clk_s :  STD_LOGIC;
SIGNAL	codec_input_l_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	codec_input_r_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	codec_output_l_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	codec_output_r_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	codec_read_l_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	codec_read_r_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	cpmod_output_l_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	cpmod_output_r_s :  STD_LOGIC_VECTOR(23 DOWNTO 0);
SIGNAL	cpmod_read_s :  STD_LOGIC;
SIGNAL	cpmod_wirte_s :  STD_LOGIC;
SIGNAL	read_ready_s :  STD_LOGIC;
SIGNAL	reset_s :  STD_LOGIC;
SIGNAL	write_ready_s :  STD_LOGIC;


BEGIN 



b2v_inst : copy_module
PORT MAP(clk => clk_s,
		 reset => reset_s,
		 read_ready => read_ready_s,
		 write_ready => write_ready_s,
		 out_l_s => cpmod_output_l_s,
		 out_r_s => cpmod_output_r_s,
		 readdata_left => codec_read_r_s,
		 readdata_right => codec_read_l_s,
		 read_s => cpmod_read_s,
		 write_s => cpmod_wirte_s,
		 in_l_s => codec_input_l_s,
		 in_r_s => codec_input_r_s,
		 writedata_left => codec_output_l_s,
		 writedata_right => codec_output_r_s);


b2v_inst1 : audio_codec
GENERIC MAP(AUDIO_DATA_WIDTH => 24,
			BIT_COUNTER_INIT => "10111"
			)
PORT MAP(CLOCK_50 => clk_s,
		 reset => reset_s,
		 read_s => cpmod_read_s,
		 write_s => cpmod_wirte_s,
		 AUD_ADCDAT => AUD_ADCDAT,
		 AUD_BCLK => AUD_BCLK,
		 AUD_ADCLRCK => AUD_ADCLRCK,
		 AUD_DACLRCK => AUD_DACLRCK,
		 writedata_left => codec_output_l_s,
		 writedata_right => codec_output_r_s,
		 read_ready => read_ready_s,
		 write_ready => write_ready_s,
		 AUD_DACDAT => AUD_DACDAT,
		 readdata_left => codec_read_r_s,
		 readdata_right => codec_read_l_s);


b2v_RAM_L : memory
PORT MAP(clk => clk_s,
		 reset => reset_s,
		 rd => read_l_ram,
		 wr => write_l_ram,
		 addr => addr_l,
		 dataIn => codec_input_l_s,
		 dataOut => cpmod_output_l_s);


b2v_RAM_R : memory
PORT MAP(clk => clk_s,
		 reset => reset_s,
		 rd => read_r_ram,
		 wr => write_r_ram,
		 addr => addr_r,
		 dataIn => codec_input_r_s,
		 dataOut => cpmod_output_r_s);

read_ready <= read_ready_s;
clk_s <= clk;
reset_s <= reset;
write_ready <= write_ready_s;

END bdf_type;