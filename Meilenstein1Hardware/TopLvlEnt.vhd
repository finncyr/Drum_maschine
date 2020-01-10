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
-- CREATED		"Sun Jan 05 17:34:39 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY TopLvlEnt IS 
	PORT
	(
		CLOCK_50 : IN STD_LOGIC;
		CLOCK2_50 :  IN  STD_LOGIC;
		AUD_ADCDAT :  IN  STD_LOGIC;
		AUD_BCLK :  IN  STD_LOGIC;
		AUD_ADCLRCK :  IN  STD_LOGIC;
		AUD_DACLRCK :  IN  STD_LOGIC;
		AUD_DACDAT :  OUT  STD_LOGIC;
		wrt_rd_p :  OUT  STD_LOGIC;
		rd_rd_p :  OUT  STD_LOGIC;
		KEY :IN STD_LOGIC_VECTOR(0 DOWNTO 0);
		AUD_XCK : OUT STD_LOGIC;
		I2C_SDAT : INOUT STD_LOGIC;
		I2C_SCLK : OUT STD_LOGIC
	);
END TopLvlEnt;

ARCHITECTURE bdf_type OF TopLvlEnt IS 

COMPONENT ctlflw
	PORT(CLK : IN STD_LOGIC;
		 RESET : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 READ_L_RAM : OUT STD_LOGIC;
		 WRITE_L_RAM : OUT STD_LOGIC;
		 READ_R_RAM : OUT STD_LOGIC;
		 WRITE_R_RAM : OUT STD_LOGIC;
		 ADDR_L : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
		 ADDR_R : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;

COMPONENT meilenstei1hardware
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 write_l_ram : IN STD_LOGIC;
		 write_r_ram : IN STD_LOGIC;
		 read_l_ram : IN STD_LOGIC;
		 read_r_ram : IN STD_LOGIC;
		 AUD_ADCDAT : IN STD_LOGIC;
		 AUD_BCLK : IN STD_LOGIC;
		 AUD_ADCLRCK : IN STD_LOGIC;
		 AUD_DACLRCK : IN STD_LOGIC;
		 addr_l : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 addr_r : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		 read_ready : OUT STD_LOGIC;
		 write_ready : OUT STD_LOGIC;
		 AUD_DACDAT : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT clock_generator
	PORT(CLOCK2_50 :IN STD_LOGIC;
        reset : IN STD_LOGIC;
        AUD_XCK : OUT STD_LOGIC);
END COMPONENT;

COMPONENT audio_and_video_config
	PORT(CLOCK_50,reset : IN STD_LOGIC;
        I2C_SDAT : INOUT STD_LOGIC;
        I2C_SCLK : OUT STD_LOGIC);
END COMPONENT;

SIGNAL	addr_l_s :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	addr_r_s :  STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL	clk_s :  STD_LOGIC;
SIGNAL	rd_L_RAM_s :  STD_LOGIC;
SIGNAL	rd_R_RAM_s :  STD_LOGIC;
SIGNAL	wrt_L_RAM_s :  STD_LOGIC;
SIGNAL	wrt_R_RAM_s :  STD_LOGIC;
signal reset: std_logic;

BEGIN 

reset <= not key(0);

cgen: clock_generator port map (CLOCK2_50, reset, AUD_XCK);

avIntf: audio_and_video_config port map(CLOCK_50,reset ,I2C_SDAT, I2C_SCLK);


b2v_CtlFlw : ctlflw
PORT MAP(CLK => clk_s,
		 READ_L_RAM => rd_L_RAM_s,
		 READ_R_RAM => rd_R_RAM_s,
		 ADDR_L => addr_l_s,
		 ADDR_R => addr_r_s,
		 RESET => reset,
		 RST => reset,
		 write_l_ram => wrt_L_RAM_s,
		 write_r_ram => wrt_R_RAM_s
		 );


b2v_DtFlw : meilenstei1hardware
PORT MAP(clk => clk_s,
		 read_l_ram => rd_L_RAM_s,
		 read_r_ram => rd_R_RAM_s,
		 write_l_ram => wrt_L_RAM_s,
		 write_r_ram => wrt_R_RAM_s,
		 addr_l => addr_l_s,
		 addr_r => addr_r_s,
		 read_ready => rd_rd_p,
		 write_ready => wrt_rd_p,
		 AUD_DACDAT => AUD_DACDAT,
		 AUD_ADCDAT => AUD_ADCDAT,
		 AUD_BCLK => AUD_BCLK,
		 AUD_DACLRCK => AUD_DACLRCK,
		 AUD_ADCLRCK => AUD_ADCLRCK,
		 reset => reset
		 );

clk_s <= CLOCK_50;

END bdf_type;