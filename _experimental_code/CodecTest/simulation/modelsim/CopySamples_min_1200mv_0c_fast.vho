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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/20/2020 20:00:59"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CopySamples IS
    PORT (
	CLOCK_50 : IN std_logic;
	AUD_DACLRCK : IN std_logic;
	AUD_ADCLRCK : IN std_logic;
	AUD_BCLK : IN std_logic;
	AUD_ADCDAT : IN std_logic;
	CLOCK2_50 : IN std_logic;
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(19 DOWNTO 0);
	LEDR : OUT std_logic_vector(19 DOWNTO 0);
	I2C_SDAT : INOUT std_logic;
	I2C_SCLK : OUT std_logic;
	AUD_DACDAT : OUT std_logic;
	AUD_XCK : OUT std_logic
	);
END CopySamples;

-- Design Ports Information
-- AUD_ADCLRCK	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[18]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[19]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[18]	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[19]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SCLK	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACDAT	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_XCK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- I2C_SDAT	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_DACLRCK	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUD_BCLK	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CopySamples IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_AUD_DACLRCK : std_logic;
SIGNAL ww_AUD_ADCLRCK : std_logic;
SIGNAL ww_AUD_BCLK : std_logic;
SIGNAL ww_AUD_ADCDAT : std_logic;
SIGNAL ww_CLOCK2_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_I2C_SCLK : std_logic;
SIGNAL ww_AUD_DACDAT : std_logic;
SIGNAL ww_AUD_XCK : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cgen|DE_Clock_Generator_Audio|pll~CLK1\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|pll~CLK2\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|pll~CLK3\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|pll~CLK4\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[1]~10_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[4]~16_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|send_start_bit~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~12_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~18_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~12_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~16_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~18_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~21\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~20_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]~22_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[21]~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[20]~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[19]~5_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[18]~6_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[17]~7_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[16]~8_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[15]~9_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[14]~10_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[13]~11_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[12]~12_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[11]~13_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[10]~14_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[9]~15_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[8]~16_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[7]~17_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[6]~18_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[5]~19_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[4]~20_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[3]~21_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[2]~22_combout\ : std_logic;
SIGNAL \audio|Equal6~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector1~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~4_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~5_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Add0~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector3~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|send_start_bit~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~4_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~5_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector2~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Equal0~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~10_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~29_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~30_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~31_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~32_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~33_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~34_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~35_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~16_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~36_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~17_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~18_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~37_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~38_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~39_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~40_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~41_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~42_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~19_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~43_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~44_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~45_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~46_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~48_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~20_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~68_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg~26_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg~27_combout\ : std_logic;
SIGNAL \AUD_ADCLRCK~input_o\ : std_logic;
SIGNAL \AUD_ADCDAT~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[18]~input_o\ : std_logic;
SIGNAL \SW[19]~input_o\ : std_logic;
SIGNAL \I2C_SDAT~input_o\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[1]~11\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[2]~12_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[0]~7\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[1]~9\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[2]~10_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init~15_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_6_INCREASE_COUNTER~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[2]~11\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[3]~12_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[1]~8_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[3]~13\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[4]~14_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[4]~15\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[5]~16_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|rom_address_counter[0]~6_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Equal0~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector2~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector2~2_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector0~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector0~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|transfer_data~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|transfer_data~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|transfer_data~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector3~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init~13_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|send_stop_bit~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|send_stop_bit~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver~12_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver~13_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector5~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector3~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector3~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_bit~5_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_bit[2]~4_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_bit~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_bit~3_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector4~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector4~3_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector6~0_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[7]~23\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[8]~24_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[8]~25\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[9]~27\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[10]~28_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[3]~14_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_high_level~2_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector5~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector6~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector6~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[2]~13\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[3]~15\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[4]~17\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[5]~18_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[5]~19\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[6]~20_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[6]~21\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[7]~22_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter[9]~26_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_low_level~0_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector6~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\ : std_logic;
SIGNAL \avIntf|num_bits_to_transfer~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_bit~6_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Selector1~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out[0]~6_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~72_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~70_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~69_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~71_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~73_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~25_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~26_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~67_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~27_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~28_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~29_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~9_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out[0]~30_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~8_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer[1]~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~8_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|new_clk~0_combout\ : std_logic;
SIGNAL \avIntf|Clock_Generator_400KHz|new_clk~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector1~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector2~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Selector2~3_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte[2]~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~60_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~59_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~47_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~22_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~23_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~65_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~61_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~63_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~62_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~64_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~66_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~24_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~7_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~7_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~57_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~53_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~55_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~54_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~56_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~58_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~49_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~50_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~51_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~4_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~52_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~21_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~6_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~6_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Mux0~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Mux0~3_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|i2c_sdata~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~27_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~28_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~13_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~14_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~25_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~21_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~22_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~23_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~24_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~26_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~31_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~15_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~3_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~3_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~15_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~19_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~16_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~17_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~18_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~20_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~13_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~12_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~74_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~75_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~14_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~11_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~12_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Mux0~0_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~1_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~2_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~3_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~5_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~6_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~8_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~7_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~9_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~10_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|Ram0~11_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~7_combout\ : std_logic;
SIGNAL \avIntf|Auto_Initialize|data_out~8_combout\ : std_logic;
SIGNAL \avIntf|data_to_transfer~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|current_byte~0_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|Mux0~1_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|i2c_sdata~2_combout\ : std_logic;
SIGNAL \avIntf|I2C_Controller|i2c_sdata~3_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \AUD_DACLRCK~input_o\ : std_logic;
SIGNAL \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ : std_logic;
SIGNAL \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\ : std_logic;
SIGNAL \audio|done_dac_channel_sync~0_combout\ : std_logic;
SIGNAL \audio|done_dac_channel_sync~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|always4~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~10_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~14_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~8_combout\ : std_logic;
SIGNAL \audio|Equal6~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~14_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~8_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~10_combout\ : std_logic;
SIGNAL \audio|Equal7~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~20_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~21\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]~22_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~16_combout\ : std_logic;
SIGNAL \audio|Equal7~1_combout\ : std_logic;
SIGNAL \audio|write_ready~combout\ : std_logic;
SIGNAL \processing|write_s~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|comb~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|read_left_channel~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_was_read~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|left_channel_was_read~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|read_right_channel~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|comb~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[22]~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\ : std_logic;
SIGNAL \AUD_BCLK~input_o\ : std_logic;
SIGNAL \audio|Bit_Clock_Edges|cur_test_clk~q\ : std_logic;
SIGNAL \audio|Bit_Clock_Edges|last_test_clk~q\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[23]~1_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg[24]~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|serial_audio_out_data~0_combout\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|serial_audio_out_data~q\ : std_logic;
SIGNAL \CLOCK2_50~input_o\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|pll~FBOUT\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|_clk0\ : std_logic;
SIGNAL \cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \avIntf|num_bits_to_transfer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \avIntf|data_to_transfer\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \avIntf|Clock_Generator_400KHz|clk_counter\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \avIntf|Auto_Initialize|rom_address_counter\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \avIntf|Auto_Initialize|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \avIntf|I2C_Controller|current_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \avIntf|I2C_Controller|current_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|right_channel_fifo_write_space\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|left_channel_fifo_write_space\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \audio|Audio_Out_Serializer|data_out_shift_reg\ : std_logic_vector(24 DOWNTO 1);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_AUD_DACLRCK <= AUD_DACLRCK;
ww_AUD_ADCLRCK <= AUD_ADCLRCK;
ww_AUD_BCLK <= AUD_BCLK;
ww_AUD_ADCDAT <= AUD_ADCDAT;
ww_CLOCK2_50 <= CLOCK2_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
I2C_SCLK <= ww_I2C_SCLK;
AUD_DACDAT <= ww_AUD_DACDAT;
AUD_XCK <= ww_AUD_XCK;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cgen|DE_Clock_Generator_Audio|pll_INCLK_bus\ <= (gnd & \CLOCK2_50~input_o\);

\cgen|DE_Clock_Generator_Audio|_clk0\ <= \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\(0);
\cgen|DE_Clock_Generator_Audio|pll~CLK1\ <= \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\(1);
\cgen|DE_Clock_Generator_Audio|pll~CLK2\ <= \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\(2);
\cgen|DE_Clock_Generator_Audio|pll~CLK3\ <= \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\(3);
\cgen|DE_Clock_Generator_Audio|pll~CLK4\ <= \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\(4);

\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(5);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(6);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(7);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(8) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(8);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(9) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(9);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(10) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(10);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(11) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(11);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(12) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(12);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(13) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(13);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(14) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(14);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(15) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(15);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(16) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(16);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(17) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(17);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(18) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(18);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(19) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(19);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(20) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(20);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(21) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(21);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(22) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(22);
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(23) <= \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(23);

\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ & 
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(2);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(3);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(4);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(5);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(6);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(7);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(8) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(8);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(9) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(9);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(10) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(10);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(11) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(11);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(12) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(12);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(13) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(13);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(14) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(14);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(15) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(15);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(16) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(16);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(17) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(17);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(18) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(18);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(19) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(19);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(20) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(20);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(21) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(21);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(22) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(22);
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(23) <= \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(23);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cgen|DE_Clock_Generator_Audio|_clk0\);
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;

-- Location: FF_X85_Y34_N13
\avIntf|Clock_Generator_400KHz|clk_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[4]~16_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(4));

-- Location: FF_X85_Y34_N7
\avIntf|Clock_Generator_400KHz|clk_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[1]~10_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(1));

-- Location: LCCOMB_X85_Y34_N6
\avIntf|Clock_Generator_400KHz|clk_counter[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[1]~10_combout\ = \avIntf|Clock_Generator_400KHz|clk_counter\(1) $ (VCC)
-- \avIntf|Clock_Generator_400KHz|clk_counter[1]~11\ = CARRY(\avIntf|Clock_Generator_400KHz|clk_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(1),
	datad => VCC,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[1]~10_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[1]~11\);

-- Location: LCCOMB_X85_Y34_N12
\avIntf|Clock_Generator_400KHz|clk_counter[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[4]~16_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(4) & (!\avIntf|Clock_Generator_400KHz|clk_counter[3]~15\)) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(4) & 
-- ((\avIntf|Clock_Generator_400KHz|clk_counter[3]~15\) # (GND)))
-- \avIntf|Clock_Generator_400KHz|clk_counter[4]~17\ = CARRY((!\avIntf|Clock_Generator_400KHz|clk_counter[3]~15\) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(4),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[3]~15\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[4]~16_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[4]~17\);

-- Location: FF_X85_Y34_N3
\avIntf|Auto_Initialize|send_start_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|send_start_bit~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|send_start_bit~q\);

-- Location: FF_X69_Y25_N13
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(2));

-- Location: FF_X69_Y25_N19
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~18_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(5));

-- Location: FF_X68_Y26_N21
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(2));

-- Location: FF_X68_Y26_N25
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~16_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(4));

-- Location: FF_X68_Y26_N27
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~18_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(5));

-- Location: FF_X68_Y26_N29
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~20_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(6));

-- Location: FF_X68_Y26_N31
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]~22_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(7));

-- Location: FF_X66_Y25_N29
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\);

-- Location: FF_X63_Y26_N27
\audio|Audio_Out_Serializer|data_out_shift_reg[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[21]~3_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(20),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(21));

-- Location: FF_X68_Y25_N9
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X69_Y25_N12
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~12_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\ $ (GND)))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~12_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\);

-- Location: FF_X68_Y25_N11
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: FF_X68_Y25_N13
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: FF_X68_Y25_N15
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X69_Y25_N18
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~18_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- ((\audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~18_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\);

-- Location: FF_X68_Y25_N17
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: FF_X67_Y26_N9
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2));

-- Location: LCCOMB_X68_Y26_N20
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~12_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\ $ (GND)))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~12_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\);

-- Location: FF_X67_Y26_N11
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3));

-- Location: LCCOMB_X68_Y26_N22
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~14_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[2]~13\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~14_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\);

-- Location: FF_X67_Y26_N13
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4));

-- Location: LCCOMB_X68_Y26_N24
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~16_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\ $ (GND)))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~15\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~16_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\);

-- Location: FF_X67_Y26_N15
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5));

-- Location: LCCOMB_X68_Y26_N26
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~18_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- ((\audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[4]~17\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~18_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\);

-- Location: FF_X67_Y26_N17
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6));

-- Location: LCCOMB_X68_Y26_N28
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~20_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\ $ (GND)))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~21\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- !\audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[5]~19\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~20_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~21\);

-- Location: LCCOMB_X68_Y26_N30
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]~22_combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ $ (\audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[6]~21\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[7]~22_combout\);

-- Location: FF_X85_Y36_N9
\avIntf|Auto_Initialize|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~20_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(2));

-- Location: FF_X63_Y26_N9
\audio|Audio_Out_Serializer|data_out_shift_reg[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[20]~4_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(19),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(20));

-- Location: LCCOMB_X63_Y26_N26
\audio|Audio_Out_Serializer|data_out_shift_reg[21]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[21]~3_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(20)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(20),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(20),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[21]~3_combout\);

-- Location: LCCOMB_X68_Y25_N6
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) 
-- $ (((\audio|Audio_Out_Serializer|comb~0_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # ((GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = 
-- CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ (\audio|Audio_Out_Serializer|comb~0_combout\)) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \audio|Audio_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X68_Y25_N8
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & VCC)))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) 
-- $ (((VCC) # (!\audio|Audio_Out_Serializer|comb~0_combout\)))))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & (\audio|Audio_Out_Serializer|comb~0_combout\ $ 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X68_Y25_N10
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) 
-- $ (((\audio|Audio_Out_Serializer|comb~0_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # ((GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = 
-- CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ (\audio|Audio_Out_Serializer|comb~0_combout\)) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datab => \audio|Audio_Out_Serializer|comb~0_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X68_Y25_N12
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & VCC)))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) 
-- $ (((VCC) # (!\audio|Audio_Out_Serializer|comb~0_combout\)))))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & (\audio|Audio_Out_Serializer|comb~0_combout\ $ 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X68_Y25_N14
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) 
-- $ (((\audio|Audio_Out_Serializer|comb~0_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & 
-- (((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # (GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = CARRY((\audio|Audio_Out_Serializer|comb~0_combout\ $ 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X68_Y25_N16
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ = 
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ $ (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\);

-- Location: LCCOMB_X67_Y26_N6
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ 
-- (((\audio|Audio_Out_Serializer|comb~1_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # ((GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ = 
-- CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) $ (\audio|Audio_Out_Serializer|comb~1_combout\)) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\);

-- Location: LCCOMB_X67_Y26_N8
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- ((VCC)))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (((VCC) # (!\audio|Audio_Out_Serializer|comb~1_combout\)))))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) $ (!\audio|Audio_Out_Serializer|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X67_Y26_N10
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ 
-- (((\audio|Audio_Out_Serializer|comb~1_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # ((GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ = 
-- CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) $ (\audio|Audio_Out_Serializer|comb~1_combout\)) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X67_Y26_N12
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- ((VCC)))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (((VCC) # (!\audio|Audio_Out_Serializer|comb~1_combout\)))))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) $ (!\audio|Audio_Out_Serializer|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\);

-- Location: LCCOMB_X67_Y26_N14
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\ = 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ 
-- (((\audio|Audio_Out_Serializer|comb~1_combout\) # (VCC))))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5)) # ((GND))))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ = 
-- CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) $ (\audio|Audio_Out_Serializer|comb~1_combout\)) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\);

-- Location: LCCOMB_X67_Y26_N16
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\ = 
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\ $ (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita5~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita6~combout\);

-- Location: FF_X63_Y26_N7
\audio|Audio_Out_Serializer|data_out_shift_reg[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[19]~5_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(18),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(19));

-- Location: LCCOMB_X63_Y26_N8
\audio|Audio_Out_Serializer|data_out_shift_reg[20]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[20]~4_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(19))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|data_out_shift_reg\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(19),
	datad => \audio|Audio_Out_Serializer|data_out_shift_reg\(19),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[20]~4_combout\);

-- Location: FF_X63_Y26_N25
\audio|Audio_Out_Serializer|data_out_shift_reg[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[18]~6_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(17),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(18));

-- Location: LCCOMB_X63_Y26_N6
\audio|Audio_Out_Serializer|data_out_shift_reg[19]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[19]~5_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(18)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(18),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(18),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[19]~5_combout\);

-- Location: FF_X63_Y26_N11
\audio|Audio_Out_Serializer|data_out_shift_reg[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[17]~7_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(16),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(17));

-- Location: LCCOMB_X63_Y26_N24
\audio|Audio_Out_Serializer|data_out_shift_reg[18]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[18]~6_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(17)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|data_out_shift_reg\(17),
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(17),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[18]~6_combout\);

-- Location: FF_X63_Y26_N17
\audio|Audio_Out_Serializer|data_out_shift_reg[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[16]~8_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(15),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(16));

-- Location: LCCOMB_X63_Y26_N10
\audio|Audio_Out_Serializer|data_out_shift_reg[17]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[17]~7_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(16)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(16),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(16),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[17]~7_combout\);

-- Location: FF_X63_Y26_N19
\audio|Audio_Out_Serializer|data_out_shift_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[15]~9_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(14),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(15));

-- Location: LCCOMB_X63_Y26_N16
\audio|Audio_Out_Serializer|data_out_shift_reg[16]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[16]~8_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(15)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(15),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(15),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[16]~8_combout\);

-- Location: FF_X65_Y26_N5
\audio|Audio_Out_Serializer|data_out_shift_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[14]~10_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(13),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(14));

-- Location: LCCOMB_X63_Y26_N18
\audio|Audio_Out_Serializer|data_out_shift_reg[15]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[15]~9_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(14)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(14),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(14),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[15]~9_combout\);

-- Location: FF_X65_Y26_N3
\audio|Audio_Out_Serializer|data_out_shift_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[13]~11_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(12),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(13));

-- Location: LCCOMB_X65_Y26_N4
\audio|Audio_Out_Serializer|data_out_shift_reg[14]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[14]~10_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(13)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(13),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(13),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[14]~10_combout\);

-- Location: FF_X65_Y26_N25
\audio|Audio_Out_Serializer|data_out_shift_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[12]~12_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(11),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(12));

-- Location: LCCOMB_X65_Y26_N2
\audio|Audio_Out_Serializer|data_out_shift_reg[13]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[13]~11_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(12)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(12),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(12),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[13]~11_combout\);

-- Location: FF_X65_Y26_N7
\audio|Audio_Out_Serializer|data_out_shift_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[11]~13_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(10),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(11));

-- Location: LCCOMB_X65_Y26_N24
\audio|Audio_Out_Serializer|data_out_shift_reg[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[12]~12_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(11)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|data_out_shift_reg\(11),
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(11),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[12]~12_combout\);

-- Location: FF_X65_Y26_N21
\audio|Audio_Out_Serializer|data_out_shift_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[10]~14_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(9),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(10));

-- Location: LCCOMB_X65_Y26_N6
\audio|Audio_Out_Serializer|data_out_shift_reg[11]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[11]~13_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(10)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(10),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(10),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[11]~13_combout\);

-- Location: FF_X65_Y26_N19
\audio|Audio_Out_Serializer|data_out_shift_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[9]~15_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(8),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(9));

-- Location: LCCOMB_X65_Y26_N20
\audio|Audio_Out_Serializer|data_out_shift_reg[10]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[10]~14_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(9)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(9),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(9),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[10]~14_combout\);

-- Location: FF_X65_Y26_N29
\audio|Audio_Out_Serializer|data_out_shift_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[8]~16_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(8));

-- Location: LCCOMB_X65_Y26_N18
\audio|Audio_Out_Serializer|data_out_shift_reg[9]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[9]~15_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(8)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(8),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(8),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[9]~15_combout\);

-- Location: FF_X65_Y26_N23
\audio|Audio_Out_Serializer|data_out_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[7]~17_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(7));

-- Location: LCCOMB_X65_Y26_N28
\audio|Audio_Out_Serializer|data_out_shift_reg[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[8]~16_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(7),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(7),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[8]~16_combout\);

-- Location: FF_X65_Y26_N1
\audio|Audio_Out_Serializer|data_out_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[6]~18_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(6));

-- Location: LCCOMB_X65_Y26_N22
\audio|Audio_Out_Serializer|data_out_shift_reg[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[7]~17_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(6),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(6),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[7]~17_combout\);

-- Location: FF_X65_Y26_N15
\audio|Audio_Out_Serializer|data_out_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[5]~19_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(5));

-- Location: LCCOMB_X65_Y26_N0
\audio|Audio_Out_Serializer|data_out_shift_reg[6]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[6]~18_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(5),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(5),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[6]~18_combout\);

-- Location: FF_X65_Y26_N17
\audio|Audio_Out_Serializer|data_out_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[4]~20_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(4));

-- Location: LCCOMB_X65_Y26_N14
\audio|Audio_Out_Serializer|data_out_shift_reg[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[5]~19_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(4),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(4),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[5]~19_combout\);

-- Location: FF_X65_Y26_N11
\audio|Audio_Out_Serializer|data_out_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[3]~21_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(3));

-- Location: LCCOMB_X65_Y26_N16
\audio|Audio_Out_Serializer|data_out_shift_reg[4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[4]~20_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|data_out_shift_reg\(3),
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(3),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[4]~20_combout\);

-- Location: FF_X65_Y26_N9
\audio|Audio_Out_Serializer|data_out_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[2]~22_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(2));

-- Location: LCCOMB_X65_Y26_N10
\audio|Audio_Out_Serializer|data_out_shift_reg[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[3]~21_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(2),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(2),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[3]~21_combout\);

-- Location: LCCOMB_X65_Y26_N8
\audio|Audio_Out_Serializer|data_out_shift_reg[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[2]~22_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(1),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(1),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[2]~22_combout\);

-- Location: M9K_X64_Y26_N0
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_codec:audio|Altera_UP_Audio_Out_Serializer:Audio_Out_Serializer|Altera_UP_SYNC_FIFO:Audio_Out_Left_Channel_FIFO|scfifo:Sync_FIFO|scfifo_o441:auto_generated|a_dpfifo_bs31:dpfifo|altsyncram_fh81:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \audio|Audio_Out_Serializer|comb~1_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \audio|Audio_Out_Serializer|comb~1_combout\,
	portadatain => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X64_Y25_N0
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "audio_codec:audio|Altera_UP_Audio_Out_Serializer:Audio_Out_Serializer|Altera_UP_SYNC_FIFO:Audio_Out_Right_Channel_FIFO|scfifo:Sync_FIFO|scfifo_o441:auto_generated|a_dpfifo_bs31:dpfifo|altsyncram_fh81:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 128,
	port_a_logical_ram_width => 24,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 7,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 127,
	port_b_logical_ram_depth => 128,
	port_b_logical_ram_width => 24,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \audio|Audio_Out_Serializer|comb~0_combout\,
	portbre => VCC,
	clk0 => \CLOCK_50~inputclkctrl_outclk\,
	clk1 => \CLOCK_50~inputclkctrl_outclk\,
	ena0 => \audio|Audio_Out_Serializer|comb~0_combout\,
	portadatain => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: FF_X87_Y34_N27
\avIntf|I2C_Controller|current_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~4_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(7));

-- Location: FF_X87_Y34_N7
\avIntf|I2C_Controller|current_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~5_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(2));

-- Location: FF_X67_Y25_N23
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1));

-- Location: FF_X67_Y25_N31
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3));

-- Location: FF_X67_Y25_N27
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5));

-- Location: LCCOMB_X68_Y26_N10
\audio|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Equal6~1_combout\ = (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(7) & (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(4) & (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(5) & 
-- !\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(7),
	datab => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(4),
	datac => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(5),
	datad => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(6),
	combout => \audio|Equal6~1_combout\);

-- Location: FF_X65_Y25_N25
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0));

-- Location: FF_X63_Y26_N23
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1));

-- Location: LCCOMB_X66_Y25_N10
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ = (\audio|Audio_Out_Serializer|comb~0_combout\ & (((!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\)))) # (!\audio|Audio_Out_Serializer|comb~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ & (\audio|Audio_Out_Serializer|read_right_channel~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\);

-- Location: LCCOMB_X86_Y34_N22
\avIntf|I2C_Controller|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector1~0_combout\ = (\avIntf|Auto_Initialize|send_start_bit~q\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|send_start_bit~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	combout => \avIntf|I2C_Controller|Selector1~0_combout\);

-- Location: FF_X88_Y34_N25
\avIntf|data_to_transfer[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~4_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(7));

-- Location: LCCOMB_X87_Y34_N26
\avIntf|I2C_Controller|current_byte~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~4_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|data_to_transfer\(7),
	combout => \avIntf|I2C_Controller|current_byte~4_combout\);

-- Location: FF_X88_Y34_N7
\avIntf|data_to_transfer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~5_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(2));

-- Location: LCCOMB_X87_Y34_N6
\avIntf|I2C_Controller|current_byte~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~5_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|data_to_transfer\(2),
	combout => \avIntf|I2C_Controller|current_byte~5_combout\);

-- Location: LCCOMB_X87_Y34_N30
\avIntf|I2C_Controller|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Add0~0_combout\ = \avIntf|I2C_Controller|current_bit\(2) $ (((\avIntf|I2C_Controller|current_bit\(0)) # (\avIntf|I2C_Controller|current_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(2),
	datac => \avIntf|I2C_Controller|current_bit\(0),
	datad => \avIntf|I2C_Controller|current_bit\(1),
	combout => \avIntf|I2C_Controller|Add0~0_combout\);

-- Location: LCCOMB_X87_Y34_N4
\avIntf|I2C_Controller|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector3~1_combout\ = (!\avIntf|I2C_Controller|current_bit\(2) & (!\avIntf|I2C_Controller|current_bit\(0) & (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & !\avIntf|I2C_Controller|current_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(2),
	datab => \avIntf|I2C_Controller|current_bit\(0),
	datac => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datad => \avIntf|I2C_Controller|current_bit\(1),
	combout => \avIntf|I2C_Controller|Selector3~1_combout\);

-- Location: LCCOMB_X85_Y34_N2
\avIntf|Auto_Initialize|send_start_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|send_start_bit~0_combout\ = (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\) # (\avIntf|Auto_Initialize|send_start_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|send_start_bit~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|send_start_bit~0_combout\);

-- Location: LCCOMB_X69_Y25_N28
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\);

-- Location: LCCOMB_X69_Y25_N30
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\);

-- Location: LCCOMB_X67_Y25_N22
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\);

-- Location: LCCOMB_X67_Y25_N30
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\);

-- Location: LCCOMB_X67_Y25_N26
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\);

-- Location: LCCOMB_X68_Y26_N14
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\);

-- Location: LCCOMB_X68_Y26_N12
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\ & 
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\);

-- Location: LCCOMB_X65_Y25_N24
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\);

-- Location: LCCOMB_X63_Y26_N22
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datad => \KEY[0]~input_o\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[1]~1_combout\);

-- Location: LCCOMB_X67_Y26_N18
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\);

-- Location: LCCOMB_X67_Y26_N2
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ = (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ & (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\);

-- Location: LCCOMB_X66_Y25_N12
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ = (\audio|Audio_Out_Serializer|comb~0_combout\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # (!\audio|Audio_Out_Serializer|comb~0_combout\ & (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\);

-- Location: LCCOMB_X68_Y25_N30
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5) & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(5),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\);

-- Location: LCCOMB_X68_Y25_N2
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~3_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(2),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\);

-- Location: LCCOMB_X66_Y25_N28
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\) # 
-- ((!\audio|Audio_Out_Serializer|comb~0_combout\ & (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\);

-- Location: FF_X88_Y36_N21
\avIntf|Auto_Initialize|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~18_combout\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(7));

-- Location: LCCOMB_X88_Y34_N24
\avIntf|data_to_transfer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~4_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(7),
	combout => \avIntf|data_to_transfer~4_combout\);

-- Location: LCCOMB_X88_Y34_N6
\avIntf|data_to_transfer~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~5_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(2),
	combout => \avIntf|data_to_transfer~5_combout\);

-- Location: LCCOMB_X84_Y36_N22
\avIntf|Auto_Initialize|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector2~0_combout\ = (\avIntf|Auto_Initialize|transfer_data~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\)) # 
-- (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\))))) # (!\avIntf|Auto_Initialize|transfer_data~q\ & 
-- (((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	datab => \avIntf|Auto_Initialize|transfer_data~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|Selector2~0_combout\);

-- Location: LCCOMB_X89_Y36_N20
\avIntf|Auto_Initialize|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Equal0~1_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & \avIntf|Auto_Initialize|rom_address_counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Equal0~1_combout\);

-- Location: LCCOMB_X89_Y36_N6
\avIntf|Auto_Initialize|data_out~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~10_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & !\avIntf|Auto_Initialize|Ram0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datad => \avIntf|Auto_Initialize|Ram0~1_combout\,
	combout => \avIntf|Auto_Initialize|data_out~10_combout\);

-- Location: LCCOMB_X87_Y36_N26
\avIntf|Auto_Initialize|Ram0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~29_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3)) # ((\avIntf|Auto_Initialize|rom_address_counter\(0)) # ((\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~29_combout\);

-- Location: LCCOMB_X87_Y36_N28
\avIntf|Auto_Initialize|Ram0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~30_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & (((!\avIntf|Auto_Initialize|rom_address_counter\(4) & !\avIntf|Auto_Initialize|rom_address_counter\(0))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3)))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(0) & ((!\avIntf|Auto_Initialize|rom_address_counter\(4)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(0) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~30_combout\);

-- Location: LCCOMB_X87_Y36_N22
\avIntf|Auto_Initialize|Ram0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~31_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(1) $ (((\avIntf|Auto_Initialize|rom_address_counter\(3)) # (!\avIntf|Auto_Initialize|rom_address_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~31_combout\);

-- Location: LCCOMB_X87_Y36_N12
\avIntf|Auto_Initialize|Ram0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~32_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(5)) # ((!\avIntf|Auto_Initialize|Ram0~30_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|Ram0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~31_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~30_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~32_combout\);

-- Location: LCCOMB_X87_Y36_N30
\avIntf|Auto_Initialize|Ram0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~33_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(3)) # ((\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~33_combout\);

-- Location: LCCOMB_X87_Y36_N20
\avIntf|Auto_Initialize|Ram0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~34_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~32_combout\ & ((\avIntf|Auto_Initialize|Ram0~33_combout\))) # (!\avIntf|Auto_Initialize|Ram0~32_combout\ & 
-- (!\avIntf|Auto_Initialize|Ram0~29_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (((\avIntf|Auto_Initialize|Ram0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Ram0~29_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~33_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~32_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~34_combout\);

-- Location: LCCOMB_X88_Y36_N28
\avIntf|Auto_Initialize|Ram0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~35_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3)) # ((\avIntf|Auto_Initialize|rom_address_counter\(4)) # ((\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~35_combout\);

-- Location: LCCOMB_X88_Y36_N14
\avIntf|Auto_Initialize|data_out~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~16_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & (((!\avIntf|Auto_Initialize|Ram0~35_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|Ram0~35_combout\,
	combout => \avIntf|Auto_Initialize|data_out~16_combout\);

-- Location: LCCOMB_X87_Y36_N10
\avIntf|Auto_Initialize|Ram0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~36_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|rom_address_counter\(4))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(4) & \avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~36_combout\);

-- Location: LCCOMB_X88_Y36_N8
\avIntf|Auto_Initialize|data_out~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~17_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|Ram0~36_combout\ & (!\avIntf|Auto_Initialize|rom_address_counter\(5)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & 
-- (((\avIntf|Auto_Initialize|data_out~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Ram0~36_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|data_out~16_combout\,
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|data_out~17_combout\);

-- Location: LCCOMB_X88_Y36_N20
\avIntf|Auto_Initialize|data_out~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~18_combout\ = (\avIntf|Auto_Initialize|data_out~9_combout\ & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|Ram0~34_combout\))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & 
-- (\avIntf|Auto_Initialize|data_out~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|data_out~9_combout\,
	datac => \avIntf|Auto_Initialize|data_out~17_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~34_combout\,
	combout => \avIntf|Auto_Initialize|data_out~18_combout\);

-- Location: LCCOMB_X85_Y36_N4
\avIntf|Auto_Initialize|Ram0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~37_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & !\avIntf|Auto_Initialize|rom_address_counter\(1))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~37_combout\);

-- Location: LCCOMB_X85_Y36_N14
\avIntf|Auto_Initialize|Ram0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~38_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & ((!\avIntf|Auto_Initialize|rom_address_counter\(0)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~38_combout\);

-- Location: LCCOMB_X85_Y36_N28
\avIntf|Auto_Initialize|Ram0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~39_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(4) $ (\avIntf|Auto_Initialize|rom_address_counter\(0))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~39_combout\);

-- Location: LCCOMB_X85_Y36_N10
\avIntf|Auto_Initialize|Ram0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~40_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(5)) # ((\avIntf|Auto_Initialize|Ram0~38_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~38_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~39_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~40_combout\);

-- Location: LCCOMB_X85_Y36_N0
\avIntf|Auto_Initialize|Ram0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~41_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (!\avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~41_combout\);

-- Location: LCCOMB_X85_Y36_N2
\avIntf|Auto_Initialize|Ram0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~42_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~40_combout\ & (\avIntf|Auto_Initialize|Ram0~41_combout\)) # (!\avIntf|Auto_Initialize|Ram0~40_combout\ & 
-- ((\avIntf|Auto_Initialize|Ram0~37_combout\))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (((\avIntf|Auto_Initialize|Ram0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datab => \avIntf|Auto_Initialize|Ram0~41_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~37_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~40_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~42_combout\);

-- Location: LCCOMB_X85_Y36_N20
\avIntf|Auto_Initialize|data_out~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~19_combout\ = (\avIntf|Auto_Initialize|data_out~10_combout\) # ((\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & 
-- \avIntf|Auto_Initialize|Ram0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|data_out~10_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~42_combout\,
	combout => \avIntf|Auto_Initialize|data_out~19_combout\);

-- Location: LCCOMB_X85_Y36_N30
\avIntf|Auto_Initialize|Ram0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~43_combout\ = \avIntf|Auto_Initialize|rom_address_counter\(2) $ (((\avIntf|Auto_Initialize|rom_address_counter\(3)) # ((\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~43_combout\);

-- Location: LCCOMB_X85_Y36_N16
\avIntf|Auto_Initialize|Ram0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~44_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(2) $ (((\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(1)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(1))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(0)) # (\avIntf|Auto_Initialize|rom_address_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~44_combout\);

-- Location: LCCOMB_X85_Y36_N22
\avIntf|Auto_Initialize|Ram0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~45_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & (((\avIntf|Auto_Initialize|rom_address_counter\(0)) # (!\avIntf|Auto_Initialize|rom_address_counter\(3))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(3),
	combout => \avIntf|Auto_Initialize|Ram0~45_combout\);

-- Location: LCCOMB_X85_Y36_N12
\avIntf|Auto_Initialize|Ram0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~46_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(5)) # ((!\avIntf|Auto_Initialize|Ram0~44_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|Ram0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~45_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~44_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~46_combout\);

-- Location: LCCOMB_X85_Y36_N26
\avIntf|Auto_Initialize|Ram0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~48_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~46_combout\ & ((\avIntf|Auto_Initialize|Ram0~47_combout\))) # (!\avIntf|Auto_Initialize|Ram0~46_combout\ & 
-- (!\avIntf|Auto_Initialize|Ram0~43_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (((\avIntf|Auto_Initialize|Ram0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Ram0~43_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~47_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~46_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~48_combout\);

-- Location: LCCOMB_X85_Y36_N8
\avIntf|Auto_Initialize|data_out~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~20_combout\ = (\avIntf|Auto_Initialize|data_out~19_combout\) # ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & 
-- \avIntf|Auto_Initialize|Ram0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|Ram0~48_combout\,
	datad => \avIntf|Auto_Initialize|data_out~19_combout\,
	combout => \avIntf|Auto_Initialize|data_out~20_combout\);

-- Location: LCCOMB_X83_Y36_N10
\avIntf|Auto_Initialize|Ram0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~68_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & \avIntf|Auto_Initialize|data_out[0]~6_combout\))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(2) & !\avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~68_combout\);

-- Location: FF_X65_Y25_N1
\audio|Audio_Out_Serializer|data_out_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(1));

-- Location: LCCOMB_X65_Y25_N4
\audio|Audio_Out_Serializer|data_out_shift_reg~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\ = (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (!\audio|Audio_Out_Serializer|always4~0_combout\ & ((\audio|Bit_Clock_Edges|cur_test_clk~q\) # 
-- (!\audio|Bit_Clock_Edges|last_test_clk~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Bit_Clock_Edges|cur_test_clk~q\,
	datac => \audio|Audio_Out_Serializer|always4~0_combout\,
	datad => \audio|Bit_Clock_Edges|last_test_clk~q\,
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\);

-- Location: LCCOMB_X65_Y25_N28
\audio|Audio_Out_Serializer|data_out_shift_reg~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg~26_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0)) # 
-- ((\audio|Audio_Out_Serializer|data_out_shift_reg\(1) & \audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(1) & 
-- (\audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(1),
	datac => \audio|Audio_Out_Serializer|data_out_shift_reg~25_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg~26_combout\);

-- Location: LCCOMB_X65_Y25_N0
\audio|Audio_Out_Serializer|data_out_shift_reg~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg~27_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0))) # 
-- (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & ((\audio|Audio_Out_Serializer|data_out_shift_reg~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(0),
	datad => \audio|Audio_Out_Serializer|data_out_shift_reg~26_combout\,
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg~27_combout\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(10));

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(11));

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(12));

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(13));

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(14));

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(15));

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(16));

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(17));

-- Location: IOOBUF_X81_Y0_N16
\LEDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(18));

-- Location: IOOBUF_X1_Y73_N9
\LEDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(19));

-- Location: IOOBUF_X29_Y73_N9
\I2C_SCLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \avIntf|Clock_Generator_400KHz|new_clk~q\,
	devoe => ww_devoe,
	o => ww_I2C_SCLK);

-- Location: IOOBUF_X0_Y68_N9
\AUD_DACDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \audio|Audio_Out_Serializer|serial_audio_out_data~q\,
	devoe => ww_devoe,
	o => ww_AUD_DACDAT);

-- Location: IOOBUF_X0_Y61_N23
\AUD_XCK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_outclk\,
	devoe => ww_devoe,
	o => ww_AUD_XCK);

-- Location: IOOBUF_X18_Y73_N23
\I2C_SDAT~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \avIntf|I2C_Controller|i2c_sdata~2_combout\,
	oe => \avIntf|I2C_Controller|i2c_sdata~3_combout\,
	devoe => ww_devoe,
	o => I2C_SDAT);

-- Location: LCCOMB_X85_Y34_N8
\avIntf|Clock_Generator_400KHz|clk_counter[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[2]~12_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(2) & (!\avIntf|Clock_Generator_400KHz|clk_counter[1]~11\)) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(2) & 
-- ((\avIntf|Clock_Generator_400KHz|clk_counter[1]~11\) # (GND)))
-- \avIntf|Clock_Generator_400KHz|clk_counter[2]~13\ = CARRY((!\avIntf|Clock_Generator_400KHz|clk_counter[1]~11\) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(2),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[1]~11\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[2]~12_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[2]~13\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X86_Y36_N12
\avIntf|Auto_Initialize|rom_address_counter[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[0]~6_combout\ = \avIntf|Auto_Initialize|rom_address_counter\(0) $ (VCC)
-- \avIntf|Auto_Initialize|rom_address_counter[0]~7\ = CARRY(\avIntf|Auto_Initialize|rom_address_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => VCC,
	combout => \avIntf|Auto_Initialize|rom_address_counter[0]~6_combout\,
	cout => \avIntf|Auto_Initialize|rom_address_counter[0]~7\);

-- Location: LCCOMB_X86_Y36_N14
\avIntf|Auto_Initialize|rom_address_counter[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[1]~8_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|rom_address_counter[0]~7\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter[0]~7\) # (GND)))
-- \avIntf|Auto_Initialize|rom_address_counter[1]~9\ = CARRY((!\avIntf|Auto_Initialize|rom_address_counter[0]~7\) # (!\avIntf|Auto_Initialize|rom_address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => VCC,
	cin => \avIntf|Auto_Initialize|rom_address_counter[0]~7\,
	combout => \avIntf|Auto_Initialize|rom_address_counter[1]~8_combout\,
	cout => \avIntf|Auto_Initialize|rom_address_counter[1]~9\);

-- Location: LCCOMB_X86_Y36_N16
\avIntf|Auto_Initialize|rom_address_counter[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[2]~10_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter[1]~9\ $ (GND))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter[1]~9\ & VCC))
-- \avIntf|Auto_Initialize|rom_address_counter[2]~11\ = CARRY((\avIntf|Auto_Initialize|rom_address_counter\(2) & !\avIntf|Auto_Initialize|rom_address_counter[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => VCC,
	cin => \avIntf|Auto_Initialize|rom_address_counter[1]~9\,
	combout => \avIntf|Auto_Initialize|rom_address_counter[2]~10_combout\,
	cout => \avIntf|Auto_Initialize|rom_address_counter[2]~11\);

-- Location: LCCOMB_X84_Y36_N18
\avIntf|Auto_Initialize|s_i2c_auto_init~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|s_i2c_auto_init~15_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\ & (\KEY[0]~input_o\ & \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\,
	datac => \KEY[0]~input_o\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|s_i2c_auto_init~15_combout\);

-- Location: FF_X84_Y36_N19
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_6_INCREASE_COUNTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|s_i2c_auto_init~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_6_INCREASE_COUNTER~q\);

-- Location: LCCOMB_X84_Y36_N24
\avIntf|Auto_Initialize|s_i2c_auto_init~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_6_INCREASE_COUNTER~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_6_INCREASE_COUNTER~q\,
	combout => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\);

-- Location: FF_X86_Y36_N17
\avIntf|Auto_Initialize|rom_address_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[2]~10_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(2));

-- Location: LCCOMB_X86_Y36_N18
\avIntf|Auto_Initialize|rom_address_counter[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[3]~12_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|rom_address_counter[2]~11\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter[2]~11\) # (GND)))
-- \avIntf|Auto_Initialize|rom_address_counter[3]~13\ = CARRY((!\avIntf|Auto_Initialize|rom_address_counter[2]~11\) # (!\avIntf|Auto_Initialize|rom_address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datad => VCC,
	cin => \avIntf|Auto_Initialize|rom_address_counter[2]~11\,
	combout => \avIntf|Auto_Initialize|rom_address_counter[3]~12_combout\,
	cout => \avIntf|Auto_Initialize|rom_address_counter[3]~13\);

-- Location: FF_X86_Y36_N19
\avIntf|Auto_Initialize|rom_address_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[3]~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(3));

-- Location: FF_X86_Y36_N15
\avIntf|Auto_Initialize|rom_address_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[1]~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(1));

-- Location: LCCOMB_X85_Y36_N18
\avIntf|Auto_Initialize|Ram0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~0_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(2)) # ((\avIntf|Auto_Initialize|rom_address_counter\(3)) # (\avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~0_combout\);

-- Location: LCCOMB_X86_Y36_N20
\avIntf|Auto_Initialize|rom_address_counter[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[4]~14_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter[3]~13\ $ (GND))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter[3]~13\ & VCC))
-- \avIntf|Auto_Initialize|rom_address_counter[4]~15\ = CARRY((\avIntf|Auto_Initialize|rom_address_counter\(4) & !\avIntf|Auto_Initialize|rom_address_counter[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => VCC,
	cin => \avIntf|Auto_Initialize|rom_address_counter[3]~13\,
	combout => \avIntf|Auto_Initialize|rom_address_counter[4]~14_combout\,
	cout => \avIntf|Auto_Initialize|rom_address_counter[4]~15\);

-- Location: FF_X86_Y36_N21
\avIntf|Auto_Initialize|rom_address_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[4]~14_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(4));

-- Location: LCCOMB_X86_Y36_N22
\avIntf|Auto_Initialize|rom_address_counter[5]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|rom_address_counter[5]~16_combout\ = \avIntf|Auto_Initialize|rom_address_counter[4]~15\ $ (\avIntf|Auto_Initialize|rom_address_counter\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \avIntf|Auto_Initialize|rom_address_counter\(5),
	cin => \avIntf|Auto_Initialize|rom_address_counter[4]~15\,
	combout => \avIntf|Auto_Initialize|rom_address_counter[5]~16_combout\);

-- Location: FF_X86_Y36_N23
\avIntf|Auto_Initialize|rom_address_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[5]~16_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(5));

-- Location: LCCOMB_X84_Y36_N8
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~0_combout\ = !\avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	combout => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~0_combout\);

-- Location: FF_X84_Y36_N9
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\);

-- Location: FF_X86_Y36_N13
\avIntf|Auto_Initialize|rom_address_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|rom_address_counter[0]~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|s_i2c_auto_init~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|rom_address_counter\(0));

-- Location: LCCOMB_X85_Y36_N6
\avIntf|Auto_Initialize|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Equal0~0_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|rom_address_counter\(0) & !\avIntf|Auto_Initialize|rom_address_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Equal0~0_combout\);

-- Location: LCCOMB_X85_Y36_N24
\avIntf|Auto_Initialize|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector2~1_combout\ = (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\ & (((!\avIntf|Auto_Initialize|Equal0~0_combout\) # (!\avIntf|Auto_Initialize|rom_address_counter\(5))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\,
	datad => \avIntf|Auto_Initialize|Equal0~0_combout\,
	combout => \avIntf|Auto_Initialize|Selector2~1_combout\);

-- Location: LCCOMB_X84_Y36_N28
\avIntf|Auto_Initialize|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector2~2_combout\ = (\avIntf|Auto_Initialize|Selector2~0_combout\) # ((\avIntf|Auto_Initialize|Ram0~0_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(5) & \avIntf|Auto_Initialize|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Selector2~0_combout\,
	datab => \avIntf|Auto_Initialize|Ram0~0_combout\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|Selector2~1_combout\,
	combout => \avIntf|Auto_Initialize|Selector2~2_combout\);

-- Location: FF_X84_Y36_N29
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|Selector2~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\);

-- Location: LCCOMB_X84_Y36_N26
\avIntf|Auto_Initialize|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector0~0_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & ((!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\) # (!\avIntf|Auto_Initialize|transfer_data~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|transfer_data~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|Selector0~0_combout\);

-- Location: LCCOMB_X84_Y36_N10
\avIntf|Auto_Initialize|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector0~1_combout\ = (\avIntf|Auto_Initialize|Selector0~0_combout\) # ((\avIntf|Auto_Initialize|Selector2~1_combout\ & ((!\avIntf|Auto_Initialize|Ram0~0_combout\) # (!\avIntf|Auto_Initialize|rom_address_counter\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datab => \avIntf|Auto_Initialize|Ram0~0_combout\,
	datac => \avIntf|Auto_Initialize|Selector0~0_combout\,
	datad => \avIntf|Auto_Initialize|Selector2~1_combout\,
	combout => \avIntf|Auto_Initialize|Selector0~1_combout\);

-- Location: FF_X84_Y36_N11
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|Selector0~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\);

-- Location: LCCOMB_X84_Y36_N14
\avIntf|Auto_Initialize|transfer_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|transfer_data~0_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\) # ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\) # ((\avIntf|Auto_Initialize|transfer_data~q\) # 
-- (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\,
	datac => \avIntf|Auto_Initialize|transfer_data~q\,
	datad => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	combout => \avIntf|Auto_Initialize|transfer_data~0_combout\);

-- Location: LCCOMB_X84_Y36_N12
\avIntf|Auto_Initialize|transfer_data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|transfer_data~1_combout\ = (\avIntf|Auto_Initialize|transfer_data~0_combout\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avIntf|Auto_Initialize|transfer_data~0_combout\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|transfer_data~1_combout\);

-- Location: FF_X84_Y36_N13
\avIntf|Auto_Initialize|transfer_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|transfer_data~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|transfer_data~q\);

-- Location: LCCOMB_X84_Y36_N4
\avIntf|Auto_Initialize|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector3~0_combout\ = (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\) # ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\ 
-- & \avIntf|Auto_Initialize|transfer_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\,
	datad => \avIntf|Auto_Initialize|transfer_data~q\,
	combout => \avIntf|Auto_Initialize|Selector3~0_combout\);

-- Location: FF_X84_Y36_N5
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|Selector3~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\);

-- Location: LCCOMB_X84_Y36_N20
\avIntf|Auto_Initialize|s_i2c_auto_init~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|s_i2c_auto_init~13_combout\ = (\KEY[0]~input_o\ & (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\) # 
-- (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_4_WAIT~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|s_i2c_auto_init~13_combout\);

-- Location: FF_X84_Y36_N21
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|s_i2c_auto_init~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\);

-- Location: LCCOMB_X85_Y34_N28
\avIntf|Auto_Initialize|send_stop_bit~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|send_stop_bit~0_combout\ = (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\) # (\avIntf|Auto_Initialize|send_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_5_SEND_STOP_BIT~q\,
	datac => \avIntf|Auto_Initialize|send_stop_bit~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|send_stop_bit~0_combout\);

-- Location: FF_X85_Y34_N29
\avIntf|Auto_Initialize|send_stop_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|send_stop_bit~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|send_stop_bit~q\);

-- Location: LCCOMB_X86_Y34_N2
\avIntf|I2C_Controller|s_i2c_transceiver~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|s_i2c_transceiver~12_combout\ = (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\) # ((!\avIntf|Auto_Initialize|send_start_bit~q\ & (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\ & 
-- !\avIntf|Auto_Initialize|send_stop_bit~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|send_start_bit~q\,
	datab => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	datad => \avIntf|Auto_Initialize|send_stop_bit~q\,
	combout => \avIntf|I2C_Controller|s_i2c_transceiver~12_combout\);

-- Location: LCCOMB_X86_Y34_N6
\avIntf|I2C_Controller|s_i2c_transceiver~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|s_i2c_transceiver~13_combout\ = (\KEY[0]~input_o\ & ((\avIntf|Auto_Initialize|transfer_data~q\) # (!\avIntf|I2C_Controller|s_i2c_transceiver~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \avIntf|Auto_Initialize|transfer_data~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver~12_combout\,
	combout => \avIntf|I2C_Controller|s_i2c_transceiver~13_combout\);

-- Location: FF_X86_Y34_N7
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|s_i2c_transceiver~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\);

-- Location: LCCOMB_X86_Y34_N28
\avIntf|I2C_Controller|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector5~0_combout\ = (!\avIntf|Auto_Initialize|send_start_bit~q\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|send_start_bit~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	combout => \avIntf|I2C_Controller|Selector5~0_combout\);

-- Location: LCCOMB_X86_Y34_N18
\avIntf|I2C_Controller|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector3~0_combout\ = (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\ & ((\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\) # ((!\avIntf|Auto_Initialize|send_stop_bit~q\ & 
-- \avIntf|I2C_Controller|Selector5~0_combout\)))) # (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\ & (!\avIntf|Auto_Initialize|send_stop_bit~q\ & ((\avIntf|I2C_Controller|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	datab => \avIntf|Auto_Initialize|send_stop_bit~q\,
	datac => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datad => \avIntf|I2C_Controller|Selector5~0_combout\,
	combout => \avIntf|I2C_Controller|Selector3~0_combout\);

-- Location: LCCOMB_X86_Y34_N14
\avIntf|I2C_Controller|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector3~2_combout\ = (\avIntf|I2C_Controller|Selector3~1_combout\ & (\avIntf|I2C_Controller|Selector3~0_combout\ & ((\avIntf|Auto_Initialize|transfer_data~q\)))) # (!\avIntf|I2C_Controller|Selector3~1_combout\ & 
-- ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\) # ((\avIntf|I2C_Controller|Selector3~0_combout\ & \avIntf|Auto_Initialize|transfer_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|Selector3~1_combout\,
	datab => \avIntf|I2C_Controller|Selector3~0_combout\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	datad => \avIntf|Auto_Initialize|transfer_data~q\,
	combout => \avIntf|I2C_Controller|Selector3~2_combout\);

-- Location: FF_X86_Y34_N15
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector3~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\);

-- Location: LCCOMB_X87_Y34_N14
\avIntf|I2C_Controller|current_bit~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_bit~5_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ & ((!\avIntf|I2C_Controller|current_bit\(0)))) # 
-- (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ & (\avIntf|num_bits_to_transfer\(0))))) # (!\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & (\avIntf|num_bits_to_transfer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|num_bits_to_transfer\(0),
	datab => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datac => \avIntf|I2C_Controller|current_bit\(0),
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	combout => \avIntf|I2C_Controller|current_bit~5_combout\);

-- Location: LCCOMB_X87_Y34_N0
\avIntf|I2C_Controller|current_bit[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_bit[2]~4_combout\ = ((\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\) # (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	combout => \avIntf|I2C_Controller|current_bit[2]~4_combout\);

-- Location: FF_X87_Y34_N15
\avIntf|I2C_Controller|current_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_bit~5_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|I2C_Controller|current_bit[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_bit\(0));

-- Location: LCCOMB_X87_Y34_N2
\avIntf|I2C_Controller|current_bit~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_bit~2_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	combout => \avIntf|I2C_Controller|current_bit~2_combout\);

-- Location: LCCOMB_X87_Y34_N24
\avIntf|I2C_Controller|current_bit~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_bit~3_combout\ = (\avIntf|I2C_Controller|current_bit~2_combout\ & ((\avIntf|I2C_Controller|current_bit\(0) $ (!\avIntf|I2C_Controller|current_bit\(1))))) # (!\avIntf|I2C_Controller|current_bit~2_combout\ & 
-- (\avIntf|num_bits_to_transfer\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|num_bits_to_transfer\(0),
	datab => \avIntf|I2C_Controller|current_bit\(0),
	datac => \avIntf|I2C_Controller|current_bit\(1),
	datad => \avIntf|I2C_Controller|current_bit~2_combout\,
	combout => \avIntf|I2C_Controller|current_bit~3_combout\);

-- Location: FF_X87_Y34_N25
\avIntf|I2C_Controller|current_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_bit~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|I2C_Controller|current_bit[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_bit\(1));

-- Location: LCCOMB_X87_Y34_N18
\avIntf|I2C_Controller|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector4~2_combout\ = (!\avIntf|I2C_Controller|current_bit\(2) & (!\avIntf|I2C_Controller|current_bit\(0) & !\avIntf|I2C_Controller|current_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(2),
	datac => \avIntf|I2C_Controller|current_bit\(0),
	datad => \avIntf|I2C_Controller|current_bit\(1),
	combout => \avIntf|I2C_Controller|Selector4~2_combout\);

-- Location: LCCOMB_X86_Y34_N4
\avIntf|I2C_Controller|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector4~3_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ & ((\avIntf|I2C_Controller|Selector4~2_combout\)))) # 
-- (!\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & (((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datab => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\,
	datad => \avIntf|I2C_Controller|Selector4~2_combout\,
	combout => \avIntf|I2C_Controller|Selector4~3_combout\);

-- Location: FF_X86_Y34_N5
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector4~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\);

-- Location: LCCOMB_X86_Y34_N26
\avIntf|I2C_Controller|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector6~0_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\) # ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\ & 
-- !\avIntf|Auto_Initialize|transfer_data~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	datab => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_4_TRANSFER_ACK~q\,
	datac => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datad => \avIntf|Auto_Initialize|transfer_data~q\,
	combout => \avIntf|I2C_Controller|Selector6~0_combout\);

-- Location: LCCOMB_X85_Y34_N18
\avIntf|Clock_Generator_400KHz|clk_counter[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[7]~22_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(7) & (\avIntf|Clock_Generator_400KHz|clk_counter[6]~21\ $ (GND))) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(7) & 
-- (!\avIntf|Clock_Generator_400KHz|clk_counter[6]~21\ & VCC))
-- \avIntf|Clock_Generator_400KHz|clk_counter[7]~23\ = CARRY((\avIntf|Clock_Generator_400KHz|clk_counter\(7) & !\avIntf|Clock_Generator_400KHz|clk_counter[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(7),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[6]~21\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[7]~22_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[7]~23\);

-- Location: LCCOMB_X85_Y34_N20
\avIntf|Clock_Generator_400KHz|clk_counter[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[8]~24_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(8) & (!\avIntf|Clock_Generator_400KHz|clk_counter[7]~23\)) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(8) & 
-- ((\avIntf|Clock_Generator_400KHz|clk_counter[7]~23\) # (GND)))
-- \avIntf|Clock_Generator_400KHz|clk_counter[8]~25\ = CARRY((!\avIntf|Clock_Generator_400KHz|clk_counter[7]~23\) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(8),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[7]~23\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[8]~24_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[8]~25\);

-- Location: FF_X85_Y34_N21
\avIntf|Clock_Generator_400KHz|clk_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[8]~24_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(8));

-- Location: LCCOMB_X85_Y34_N22
\avIntf|Clock_Generator_400KHz|clk_counter[9]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[9]~26_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(9) & (\avIntf|Clock_Generator_400KHz|clk_counter[8]~25\ $ (GND))) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(9) & 
-- (!\avIntf|Clock_Generator_400KHz|clk_counter[8]~25\ & VCC))
-- \avIntf|Clock_Generator_400KHz|clk_counter[9]~27\ = CARRY((\avIntf|Clock_Generator_400KHz|clk_counter\(9) & !\avIntf|Clock_Generator_400KHz|clk_counter[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(9),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[8]~25\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[9]~26_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[9]~27\);

-- Location: LCCOMB_X85_Y34_N24
\avIntf|Clock_Generator_400KHz|clk_counter[10]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[10]~28_combout\ = \avIntf|Clock_Generator_400KHz|clk_counter[9]~27\ $ (\avIntf|Clock_Generator_400KHz|clk_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \avIntf|Clock_Generator_400KHz|clk_counter\(10),
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[9]~27\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[10]~28_combout\);

-- Location: FF_X85_Y34_N25
\avIntf|Clock_Generator_400KHz|clk_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[10]~28_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(10));

-- Location: LCCOMB_X85_Y34_N10
\avIntf|Clock_Generator_400KHz|clk_counter[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[3]~14_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(3) & (\avIntf|Clock_Generator_400KHz|clk_counter[2]~13\ $ (GND))) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(3) & 
-- (!\avIntf|Clock_Generator_400KHz|clk_counter[2]~13\ & VCC))
-- \avIntf|Clock_Generator_400KHz|clk_counter[3]~15\ = CARRY((\avIntf|Clock_Generator_400KHz|clk_counter\(3) & !\avIntf|Clock_Generator_400KHz|clk_counter[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(3),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[2]~13\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[3]~14_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[3]~15\);

-- Location: FF_X85_Y34_N11
\avIntf|Clock_Generator_400KHz|clk_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[3]~14_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(3));

-- Location: LCCOMB_X85_Y34_N26
\avIntf|Clock_Generator_400KHz|middle_of_high_level~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(4) & (\avIntf|Clock_Generator_400KHz|clk_counter\(6) & (\avIntf|Clock_Generator_400KHz|clk_counter\(5) & 
-- \avIntf|Clock_Generator_400KHz|clk_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(4),
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(6),
	datac => \avIntf|Clock_Generator_400KHz|clk_counter\(5),
	datad => \avIntf|Clock_Generator_400KHz|clk_counter\(3),
	combout => \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\);

-- Location: LCCOMB_X85_Y34_N30
\avIntf|Clock_Generator_400KHz|middle_of_high_level~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|middle_of_high_level~2_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\ & (\avIntf|Clock_Generator_400KHz|clk_counter\(7) & (\avIntf|Clock_Generator_400KHz|clk_counter\(10) & 
-- \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\,
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(7),
	datac => \avIntf|Clock_Generator_400KHz|clk_counter\(10),
	datad => \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\,
	combout => \avIntf|Clock_Generator_400KHz|middle_of_high_level~2_combout\);

-- Location: FF_X85_Y34_N31
\avIntf|Clock_Generator_400KHz|middle_of_high_level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|middle_of_high_level~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\);

-- Location: LCCOMB_X86_Y34_N24
\avIntf|I2C_Controller|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector5~1_combout\ = (\avIntf|Auto_Initialize|send_stop_bit~q\ & ((\avIntf|I2C_Controller|Selector5~0_combout\) # ((!\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & 
-- \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\)))) # (!\avIntf|Auto_Initialize|send_stop_bit~q\ & (!\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|send_stop_bit~q\,
	datab => \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\,
	datad => \avIntf|I2C_Controller|Selector5~0_combout\,
	combout => \avIntf|I2C_Controller|Selector5~1_combout\);

-- Location: FF_X86_Y34_N25
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector5~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\);

-- Location: LCCOMB_X86_Y34_N0
\avIntf|I2C_Controller|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector6~1_combout\ = (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|transfer_data~q\) # ((\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & 
-- \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\)))) # (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & (\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & 
-- (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	datab => \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\,
	datad => \avIntf|Auto_Initialize|transfer_data~q\,
	combout => \avIntf|I2C_Controller|Selector6~1_combout\);

-- Location: LCCOMB_X86_Y34_N16
\avIntf|I2C_Controller|Selector6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector6~2_combout\ = (\avIntf|I2C_Controller|Selector6~0_combout\) # (\avIntf|I2C_Controller|Selector6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \avIntf|I2C_Controller|Selector6~0_combout\,
	datad => \avIntf|I2C_Controller|Selector6~1_combout\,
	combout => \avIntf|I2C_Controller|Selector6~2_combout\);

-- Location: FF_X86_Y34_N17
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector6~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\);

-- Location: LCCOMB_X85_Y34_N4
\avIntf|Clock_Generator_400KHz|clk_counter[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\ = ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	datab => \KEY[0]~input_o\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\);

-- Location: FF_X85_Y34_N9
\avIntf|Clock_Generator_400KHz|clk_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[2]~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(2));

-- Location: LCCOMB_X85_Y34_N14
\avIntf|Clock_Generator_400KHz|clk_counter[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[5]~18_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(5) & (\avIntf|Clock_Generator_400KHz|clk_counter[4]~17\ $ (GND))) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(5) & 
-- (!\avIntf|Clock_Generator_400KHz|clk_counter[4]~17\ & VCC))
-- \avIntf|Clock_Generator_400KHz|clk_counter[5]~19\ = CARRY((\avIntf|Clock_Generator_400KHz|clk_counter\(5) & !\avIntf|Clock_Generator_400KHz|clk_counter[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(5),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[4]~17\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[5]~18_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[5]~19\);

-- Location: FF_X85_Y34_N15
\avIntf|Clock_Generator_400KHz|clk_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[5]~18_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(5));

-- Location: LCCOMB_X85_Y34_N16
\avIntf|Clock_Generator_400KHz|clk_counter[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|clk_counter[6]~20_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(6) & (!\avIntf|Clock_Generator_400KHz|clk_counter[5]~19\)) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(6) & 
-- ((\avIntf|Clock_Generator_400KHz|clk_counter[5]~19\) # (GND)))
-- \avIntf|Clock_Generator_400KHz|clk_counter[6]~21\ = CARRY((!\avIntf|Clock_Generator_400KHz|clk_counter[5]~19\) # (!\avIntf|Clock_Generator_400KHz|clk_counter\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(6),
	datad => VCC,
	cin => \avIntf|Clock_Generator_400KHz|clk_counter[5]~19\,
	combout => \avIntf|Clock_Generator_400KHz|clk_counter[6]~20_combout\,
	cout => \avIntf|Clock_Generator_400KHz|clk_counter[6]~21\);

-- Location: FF_X85_Y34_N17
\avIntf|Clock_Generator_400KHz|clk_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[6]~20_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(6));

-- Location: FF_X85_Y34_N19
\avIntf|Clock_Generator_400KHz|clk_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[7]~22_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(7));

-- Location: FF_X85_Y34_N23
\avIntf|Clock_Generator_400KHz|clk_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|clk_counter[9]~26_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Clock_Generator_400KHz|clk_counter[6]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|clk_counter\(9));

-- Location: LCCOMB_X84_Y34_N16
\avIntf|Clock_Generator_400KHz|middle_of_high_level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\ = (\avIntf|Clock_Generator_400KHz|clk_counter\(1) & (\avIntf|Clock_Generator_400KHz|clk_counter\(2) & (\avIntf|Clock_Generator_400KHz|clk_counter\(8) & 
-- !\avIntf|Clock_Generator_400KHz|clk_counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|clk_counter\(1),
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(2),
	datac => \avIntf|Clock_Generator_400KHz|clk_counter\(8),
	datad => \avIntf|Clock_Generator_400KHz|clk_counter\(9),
	combout => \avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\);

-- Location: LCCOMB_X85_Y34_N0
\avIntf|Clock_Generator_400KHz|middle_of_low_level~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|middle_of_low_level~0_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\ & (\avIntf|Clock_Generator_400KHz|clk_counter\(7) & (\avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\ & 
-- !\avIntf|Clock_Generator_400KHz|clk_counter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|middle_of_high_level~1_combout\,
	datab => \avIntf|Clock_Generator_400KHz|clk_counter\(7),
	datac => \avIntf|Clock_Generator_400KHz|middle_of_high_level~0_combout\,
	datad => \avIntf|Clock_Generator_400KHz|clk_counter\(10),
	combout => \avIntf|Clock_Generator_400KHz|middle_of_low_level~0_combout\);

-- Location: FF_X85_Y34_N1
\avIntf|Clock_Generator_400KHz|middle_of_low_level\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|middle_of_low_level~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\);

-- Location: LCCOMB_X88_Y36_N0
\avIntf|Auto_Initialize|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector6~0_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\) # ((\avIntf|Auto_Initialize|Equal0~1_combout\ & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\ & 
-- \avIntf|Auto_Initialize|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Equal0~1_combout\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\,
	datad => \avIntf|Auto_Initialize|Equal0~0_combout\,
	combout => \avIntf|Auto_Initialize|Selector6~0_combout\);

-- Location: FF_X88_Y36_N1
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|Selector6~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\);

-- Location: LCCOMB_X87_Y36_N8
\avIntf|num_bits_to_transfer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|num_bits_to_transfer~0_combout\ = (\avIntf|num_bits_to_transfer\(0)) # (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\,
	datac => \avIntf|num_bits_to_transfer\(0),
	combout => \avIntf|num_bits_to_transfer~0_combout\);

-- Location: FF_X87_Y36_N9
\avIntf|num_bits_to_transfer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|num_bits_to_transfer~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|num_bits_to_transfer\(0));

-- Location: LCCOMB_X87_Y34_N12
\avIntf|I2C_Controller|current_bit~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_bit~6_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ & (!\avIntf|I2C_Controller|Add0~0_combout\)) # 
-- (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\ & ((\avIntf|num_bits_to_transfer\(0)))))) # (!\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & (((\avIntf|num_bits_to_transfer\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|Add0~0_combout\,
	datab => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datac => \avIntf|num_bits_to_transfer\(0),
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	combout => \avIntf|I2C_Controller|current_bit~6_combout\);

-- Location: FF_X87_Y34_N13
\avIntf|I2C_Controller|current_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_bit~6_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|I2C_Controller|current_bit[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_bit\(2));

-- Location: LCCOMB_X84_Y36_N2
\avIntf|Auto_Initialize|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Selector1~0_combout\ = (\avIntf|Auto_Initialize|transfer_data~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\)) # 
-- (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\ & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\))))) # (!\avIntf|Auto_Initialize|transfer_data~q\ & 
-- (((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datab => \avIntf|Auto_Initialize|transfer_data~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_6_COMPLETE~q\,
	combout => \avIntf|Auto_Initialize|Selector1~0_combout\);

-- Location: FF_X84_Y36_N3
\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|Selector1~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\);

-- Location: LCCOMB_X84_Y36_N16
\avIntf|Auto_Initialize|data_out[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out[0]~6_combout\ = (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\ & \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\,
	combout => \avIntf|Auto_Initialize|data_out[0]~6_combout\);

-- Location: LCCOMB_X84_Y36_N0
\avIntf|Auto_Initialize|Ram0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~72_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\) # (\avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~72_combout\);

-- Location: LCCOMB_X83_Y36_N30
\avIntf|Auto_Initialize|Ram0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~70_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\) # (\avIntf|Auto_Initialize|rom_address_counter\(2) $ (\avIntf|Auto_Initialize|rom_address_counter\(0))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|data_out[0]~6_combout\ $ ((!\avIntf|Auto_Initialize|rom_address_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~70_combout\);

-- Location: LCCOMB_X83_Y36_N16
\avIntf|Auto_Initialize|Ram0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~69_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(4) $ (!\avIntf|Auto_Initialize|rom_address_counter\(2))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(2) $ (!\avIntf|Auto_Initialize|data_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~69_combout\);

-- Location: LCCOMB_X83_Y36_N0
\avIntf|Auto_Initialize|Ram0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~71_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(1))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- ((!\avIntf|Auto_Initialize|Ram0~69_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|Ram0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|Ram0~70_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~69_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~71_combout\);

-- Location: LCCOMB_X83_Y36_N22
\avIntf|Auto_Initialize|Ram0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~73_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|Ram0~71_combout\ & ((\avIntf|Auto_Initialize|Ram0~72_combout\))) # (!\avIntf|Auto_Initialize|Ram0~71_combout\ & 
-- (\avIntf|Auto_Initialize|Ram0~68_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (((\avIntf|Auto_Initialize|Ram0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Ram0~68_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|Ram0~72_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~71_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~73_combout\);

-- Location: LCCOMB_X82_Y36_N4
\avIntf|Auto_Initialize|data_out~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~25_combout\ = (\KEY[0]~input_o\ & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & \avIntf|Auto_Initialize|rom_address_counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datad => \avIntf|Auto_Initialize|rom_address_counter\(5),
	combout => \avIntf|Auto_Initialize|data_out~25_combout\);

-- Location: LCCOMB_X82_Y36_N8
\avIntf|Auto_Initialize|data_out~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~26_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\) # 
-- (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	combout => \avIntf|Auto_Initialize|data_out~26_combout\);

-- Location: LCCOMB_X82_Y36_N18
\avIntf|Auto_Initialize|Ram0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~67_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(0) & ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(0) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(2))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(2) $ (\avIntf|Auto_Initialize|rom_address_counter\(0))) # 
-- (!\avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~67_combout\);

-- Location: LCCOMB_X82_Y36_N2
\avIntf|Auto_Initialize|data_out~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~27_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|data_out~26_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (((\avIntf|Auto_Initialize|Ram0~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|data_out~26_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~67_combout\,
	combout => \avIntf|Auto_Initialize|data_out~27_combout\);

-- Location: LCCOMB_X82_Y36_N24
\avIntf|Auto_Initialize|data_out~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~28_combout\ = (\avIntf|Auto_Initialize|data_out~25_combout\ & (\avIntf|Auto_Initialize|data_out~27_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(4) $ (\avIntf|Auto_Initialize|rom_address_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|data_out~25_combout\,
	datad => \avIntf|Auto_Initialize|data_out~27_combout\,
	combout => \avIntf|Auto_Initialize|data_out~28_combout\);

-- Location: LCCOMB_X83_Y36_N6
\avIntf|Auto_Initialize|data_out~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~29_combout\ = (\avIntf|Auto_Initialize|data_out~28_combout\) # ((\avIntf|Auto_Initialize|data_out~9_combout\ & (!\avIntf|Auto_Initialize|rom_address_counter\(5) & \avIntf|Auto_Initialize|Ram0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out~9_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~73_combout\,
	datad => \avIntf|Auto_Initialize|data_out~28_combout\,
	combout => \avIntf|Auto_Initialize|data_out~29_combout\);

-- Location: LCCOMB_X84_Y36_N6
\avIntf|Auto_Initialize|data_out~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~9_combout\ = (\KEY[0]~input_o\ & !\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	combout => \avIntf|Auto_Initialize|data_out~9_combout\);

-- Location: LCCOMB_X84_Y36_N30
\avIntf|Auto_Initialize|data_out[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out[0]~30_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\) # (((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\) # (!\avIntf|Auto_Initialize|data_out~9_combout\)) # 
-- (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_2_TRANSFER_BYTE_1~q\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_0_CHECK_STATUS~q\,
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_3_TRANSFER_BYTE_2~q\,
	datad => \avIntf|Auto_Initialize|data_out~9_combout\,
	combout => \avIntf|Auto_Initialize|data_out[0]~30_combout\);

-- Location: FF_X83_Y36_N7
\avIntf|Auto_Initialize|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~29_combout\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(3));

-- Location: LCCOMB_X88_Y34_N28
\avIntf|data_to_transfer~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~8_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(3),
	combout => \avIntf|data_to_transfer~8_combout\);

-- Location: LCCOMB_X88_Y34_N2
\avIntf|data_to_transfer[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer[1]~1_combout\ = (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_7_DONE~q\,
	combout => \avIntf|data_to_transfer[1]~1_combout\);

-- Location: FF_X88_Y34_N29
\avIntf|data_to_transfer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~8_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(3));

-- Location: LCCOMB_X88_Y34_N0
\avIntf|I2C_Controller|current_byte~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~8_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \avIntf|data_to_transfer\(3),
	combout => \avIntf|I2C_Controller|current_byte~8_combout\);

-- Location: LCCOMB_X86_Y34_N8
\avIntf|Clock_Generator_400KHz|new_clk~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Clock_Generator_400KHz|new_clk~0_combout\ = (\KEY[0]~input_o\ & \avIntf|Clock_Generator_400KHz|clk_counter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Clock_Generator_400KHz|clk_counter\(10),
	combout => \avIntf|Clock_Generator_400KHz|new_clk~0_combout\);

-- Location: FF_X86_Y34_N9
\avIntf|Clock_Generator_400KHz|new_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Clock_Generator_400KHz|new_clk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Clock_Generator_400KHz|new_clk~q\);

-- Location: LCCOMB_X86_Y34_N10
\avIntf|I2C_Controller|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector1~1_combout\ = (\avIntf|I2C_Controller|Selector1~0_combout\ & (((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\ & !\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\)) # 
-- (!\avIntf|Clock_Generator_400KHz|new_clk~q\))) # (!\avIntf|I2C_Controller|Selector1~0_combout\ & (((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\ & !\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|Selector1~0_combout\,
	datab => \avIntf|Clock_Generator_400KHz|new_clk~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\,
	datad => \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\,
	combout => \avIntf|I2C_Controller|Selector1~1_combout\);

-- Location: FF_X86_Y34_N11
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector1~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\);

-- Location: LCCOMB_X86_Y34_N20
\avIntf|I2C_Controller|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector2~2_combout\ = (\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & (\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\)))) # 
-- (!\avIntf|Clock_Generator_400KHz|middle_of_low_level~q\ & ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\) # ((\avIntf|Clock_Generator_400KHz|middle_of_high_level~q\ & 
-- \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Clock_Generator_400KHz|middle_of_low_level~q\,
	datab => \avIntf|Clock_Generator_400KHz|middle_of_high_level~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_1_PRE_START~q\,
	combout => \avIntf|I2C_Controller|Selector2~2_combout\);

-- Location: LCCOMB_X86_Y34_N30
\avIntf|I2C_Controller|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Selector2~3_combout\ = (\avIntf|I2C_Controller|Selector2~2_combout\) # ((\avIntf|Auto_Initialize|send_start_bit~q\ & (\avIntf|Clock_Generator_400KHz|new_clk~q\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|send_start_bit~q\,
	datab => \avIntf|I2C_Controller|Selector2~2_combout\,
	datac => \avIntf|Clock_Generator_400KHz|new_clk~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	combout => \avIntf|I2C_Controller|Selector2~3_combout\);

-- Location: FF_X86_Y34_N31
\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|Selector2~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\);

-- Location: LCCOMB_X87_Y34_N16
\avIntf|I2C_Controller|current_byte[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte[2]~1_combout\ = ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\) # (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_0_IDLE~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	combout => \avIntf|I2C_Controller|current_byte[2]~1_combout\);

-- Location: FF_X88_Y34_N1
\avIntf|I2C_Controller|current_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~8_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(3));

-- Location: LCCOMB_X86_Y36_N8
\avIntf|Auto_Initialize|Ram0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~60_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (((!\avIntf|Auto_Initialize|rom_address_counter\(1) & !\avIntf|Auto_Initialize|rom_address_counter\(2))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3)))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(2)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~60_combout\);

-- Location: LCCOMB_X83_Y36_N28
\avIntf|Auto_Initialize|Ram0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~59_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(1) $ (\avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~59_combout\);

-- Location: LCCOMB_X86_Y36_N0
\avIntf|Auto_Initialize|Ram0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~47_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~47_combout\);

-- Location: LCCOMB_X83_Y36_N2
\avIntf|Auto_Initialize|data_out~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~22_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|Ram0~47_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (\avIntf|Auto_Initialize|Ram0~59_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|Ram0~59_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~47_combout\,
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|data_out~22_combout\);

-- Location: LCCOMB_X83_Y36_N4
\avIntf|Auto_Initialize|data_out~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~23_combout\ = (\avIntf|Auto_Initialize|data_out~22_combout\) # ((!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & !\avIntf|Auto_Initialize|Ram0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~60_combout\,
	datad => \avIntf|Auto_Initialize|data_out~22_combout\,
	combout => \avIntf|Auto_Initialize|data_out~23_combout\);

-- Location: LCCOMB_X83_Y36_N18
\avIntf|Auto_Initialize|Ram0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~65_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(0)))) # 
-- (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (!\avIntf|Auto_Initialize|rom_address_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~65_combout\);

-- Location: LCCOMB_X83_Y36_N26
\avIntf|Auto_Initialize|Ram0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~61_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|data_out[0]~6_combout\ $ (((!\avIntf|Auto_Initialize|rom_address_counter\(2)) # (!\avIntf|Auto_Initialize|rom_address_counter\(0)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & \avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~61_combout\);

-- Location: LCCOMB_X83_Y36_N14
\avIntf|Auto_Initialize|Ram0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~63_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\) # (!\avIntf|Auto_Initialize|rom_address_counter\(0)))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|data_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~63_combout\);

-- Location: LCCOMB_X83_Y36_N24
\avIntf|Auto_Initialize|Ram0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~62_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(2)) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\) # (!\avIntf|Auto_Initialize|rom_address_counter\(2)))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (((!\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|rom_address_counter\(2))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~62_combout\);

-- Location: LCCOMB_X83_Y36_N12
\avIntf|Auto_Initialize|Ram0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~64_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(1))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- ((!\avIntf|Auto_Initialize|Ram0~62_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|Ram0~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|Ram0~63_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~62_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~64_combout\);

-- Location: LCCOMB_X83_Y36_N20
\avIntf|Auto_Initialize|Ram0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~66_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|Ram0~64_combout\ & (\avIntf|Auto_Initialize|Ram0~65_combout\)) # (!\avIntf|Auto_Initialize|Ram0~64_combout\ & 
-- ((\avIntf|Auto_Initialize|Ram0~61_combout\))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (((\avIntf|Auto_Initialize|Ram0~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|Ram0~65_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~61_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~64_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~66_combout\);

-- Location: LCCOMB_X83_Y36_N8
\avIntf|Auto_Initialize|data_out~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~24_combout\ = (\avIntf|Auto_Initialize|data_out~9_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|data_out~23_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & 
-- ((\avIntf|Auto_Initialize|Ram0~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out~9_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|data_out~23_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~66_combout\,
	combout => \avIntf|Auto_Initialize|data_out~24_combout\);

-- Location: FF_X83_Y36_N9
\avIntf|Auto_Initialize|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~24_combout\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(0));

-- Location: LCCOMB_X88_Y34_N22
\avIntf|data_to_transfer~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~7_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|Auto_Initialize|data_out\(0),
	combout => \avIntf|data_to_transfer~7_combout\);

-- Location: FF_X88_Y34_N23
\avIntf|data_to_transfer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~7_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(0));

-- Location: LCCOMB_X88_Y34_N16
\avIntf|I2C_Controller|current_byte~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~7_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|data_to_transfer\(0),
	combout => \avIntf|I2C_Controller|current_byte~7_combout\);

-- Location: FF_X88_Y34_N17
\avIntf|I2C_Controller|current_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~7_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(0));

-- Location: LCCOMB_X82_Y36_N16
\avIntf|Auto_Initialize|Ram0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~57_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(3) $ (((!\avIntf|Auto_Initialize|rom_address_counter\(2) & !\avIntf|Auto_Initialize|rom_address_counter\(0)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0) $ (((\avIntf|Auto_Initialize|rom_address_counter\(3) & \avIntf|Auto_Initialize|rom_address_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~57_combout\);

-- Location: LCCOMB_X82_Y36_N30
\avIntf|Auto_Initialize|Ram0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~53_combout\ = \avIntf|Auto_Initialize|rom_address_counter\(0) $ (((\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(3))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(3) & \avIntf|Auto_Initialize|rom_address_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~53_combout\);

-- Location: LCCOMB_X86_Y36_N10
\avIntf|Auto_Initialize|Ram0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~55_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(3) $ (((\avIntf|Auto_Initialize|rom_address_counter\(4) & !\avIntf|Auto_Initialize|rom_address_counter\(2)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & ((!\avIntf|Auto_Initialize|rom_address_counter\(2)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~55_combout\);

-- Location: LCCOMB_X82_Y36_N20
\avIntf|Auto_Initialize|Ram0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~54_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2)) # (\avIntf|Auto_Initialize|rom_address_counter\(4) $ (\avIntf|Auto_Initialize|rom_address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(3),
	combout => \avIntf|Auto_Initialize|Ram0~54_combout\);

-- Location: LCCOMB_X82_Y36_N10
\avIntf|Auto_Initialize|Ram0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~56_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & ((!\avIntf|Auto_Initialize|Ram0~54_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- (!\avIntf|Auto_Initialize|Ram0~55_combout\)))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|Ram0~55_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~54_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~56_combout\);

-- Location: LCCOMB_X82_Y36_N14
\avIntf|Auto_Initialize|Ram0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~58_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (((\avIntf|Auto_Initialize|Ram0~56_combout\)))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|Ram0~56_combout\ & 
-- (\avIntf|Auto_Initialize|Ram0~57_combout\)) # (!\avIntf|Auto_Initialize|Ram0~56_combout\ & ((\avIntf|Auto_Initialize|Ram0~53_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|Ram0~57_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~53_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~56_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~58_combout\);

-- Location: LCCOMB_X82_Y36_N26
\avIntf|Auto_Initialize|Ram0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~49_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|data_out[0]~6_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\) # (!\avIntf|Auto_Initialize|rom_address_counter\(2)))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(2) $ 
-- (((\avIntf|Auto_Initialize|rom_address_counter\(3) & \avIntf|Auto_Initialize|data_out[0]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~49_combout\);

-- Location: LCCOMB_X82_Y36_N28
\avIntf|Auto_Initialize|Ram0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~50_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(2))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(2) & !\avIntf|Auto_Initialize|data_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~50_combout\);

-- Location: LCCOMB_X82_Y36_N22
\avIntf|Auto_Initialize|Ram0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~51_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(0))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(0) & 
-- (!\avIntf|Auto_Initialize|Ram0~49_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|Ram0~50_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datac => \avIntf|Auto_Initialize|Ram0~49_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~50_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~51_combout\);

-- Location: LCCOMB_X86_Y36_N30
\avIntf|Auto_Initialize|Ram0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~4_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & !\avIntf|Auto_Initialize|rom_address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(3),
	combout => \avIntf|Auto_Initialize|Ram0~4_combout\);

-- Location: LCCOMB_X82_Y36_N0
\avIntf|Auto_Initialize|Ram0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~52_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|Ram0~4_combout\ & (\avIntf|Auto_Initialize|data_out[0]~6_combout\ $ (\avIntf|Auto_Initialize|Ram0~51_combout\)))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (((\avIntf|Auto_Initialize|Ram0~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|Ram0~51_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~4_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~52_combout\);

-- Location: LCCOMB_X82_Y36_N12
\avIntf|Auto_Initialize|data_out~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~21_combout\ = (\avIntf|Auto_Initialize|data_out~9_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~52_combout\))) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & 
-- (\avIntf|Auto_Initialize|Ram0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datab => \avIntf|Auto_Initialize|data_out~9_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~58_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~52_combout\,
	combout => \avIntf|Auto_Initialize|data_out~21_combout\);

-- Location: FF_X82_Y36_N13
\avIntf|Auto_Initialize|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~21_combout\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(1));

-- Location: LCCOMB_X88_Y34_N4
\avIntf|data_to_transfer~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~6_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(1),
	combout => \avIntf|data_to_transfer~6_combout\);

-- Location: FF_X88_Y34_N5
\avIntf|data_to_transfer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~6_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(1));

-- Location: LCCOMB_X88_Y34_N14
\avIntf|I2C_Controller|current_byte~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~6_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|data_to_transfer\(1),
	combout => \avIntf|I2C_Controller|current_byte~6_combout\);

-- Location: FF_X88_Y34_N15
\avIntf|I2C_Controller|current_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~6_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(1));

-- Location: LCCOMB_X88_Y34_N18
\avIntf|I2C_Controller|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Mux0~2_combout\ = (\avIntf|I2C_Controller|current_bit\(0) & (((\avIntf|I2C_Controller|current_byte\(1)) # (\avIntf|I2C_Controller|current_bit\(1))))) # (!\avIntf|I2C_Controller|current_bit\(0) & 
-- (\avIntf|I2C_Controller|current_byte\(0) & ((!\avIntf|I2C_Controller|current_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(0),
	datab => \avIntf|I2C_Controller|current_byte\(0),
	datac => \avIntf|I2C_Controller|current_byte\(1),
	datad => \avIntf|I2C_Controller|current_bit\(1),
	combout => \avIntf|I2C_Controller|Mux0~2_combout\);

-- Location: LCCOMB_X87_Y34_N8
\avIntf|I2C_Controller|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Mux0~3_combout\ = (\avIntf|I2C_Controller|current_bit\(1) & ((\avIntf|I2C_Controller|Mux0~2_combout\ & ((\avIntf|I2C_Controller|current_byte\(3)))) # (!\avIntf|I2C_Controller|Mux0~2_combout\ & 
-- (\avIntf|I2C_Controller|current_byte\(2))))) # (!\avIntf|I2C_Controller|current_bit\(1) & (((\avIntf|I2C_Controller|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_byte\(2),
	datab => \avIntf|I2C_Controller|current_bit\(1),
	datac => \avIntf|I2C_Controller|current_byte\(3),
	datad => \avIntf|I2C_Controller|Mux0~2_combout\,
	combout => \avIntf|I2C_Controller|Mux0~3_combout\);

-- Location: LCCOMB_X87_Y34_N22
\avIntf|I2C_Controller|i2c_sdata~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|i2c_sdata~1_combout\ = (!\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\ & !\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\,
	datad => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	combout => \avIntf|I2C_Controller|i2c_sdata~1_combout\);

-- Location: LCCOMB_X88_Y36_N4
\avIntf|Auto_Initialize|Ram0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~27_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(2)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|rom_address_counter\(2) & !\avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~27_combout\);

-- Location: LCCOMB_X88_Y36_N6
\avIntf|Auto_Initialize|Ram0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~28_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(0) $ (((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(1) & !\avIntf|Auto_Initialize|data_out[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~28_combout\);

-- Location: LCCOMB_X88_Y36_N12
\avIntf|Auto_Initialize|data_out~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~13_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|Ram0~27_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- ((\avIntf|Auto_Initialize|Ram0~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|Ram0~27_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~28_combout\,
	combout => \avIntf|Auto_Initialize|data_out~13_combout\);

-- Location: LCCOMB_X88_Y36_N26
\avIntf|Auto_Initialize|data_out~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~14_combout\ = (\avIntf|Auto_Initialize|data_out~13_combout\) # ((!\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|Ram0~4_combout\ & \avIntf|Auto_Initialize|rom_address_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|Ram0~4_combout\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datad => \avIntf|Auto_Initialize|data_out~13_combout\,
	combout => \avIntf|Auto_Initialize|data_out~14_combout\);

-- Location: LCCOMB_X86_Y36_N2
\avIntf|Auto_Initialize|Ram0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~25_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2)) # ((\avIntf|Auto_Initialize|rom_address_counter\(1) & ((!\avIntf|Auto_Initialize|rom_address_counter\(3)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter\(0)) # (\avIntf|Auto_Initialize|rom_address_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(3),
	combout => \avIntf|Auto_Initialize|Ram0~25_combout\);

-- Location: LCCOMB_X88_Y36_N30
\avIntf|Auto_Initialize|Ram0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~21_combout\ = ((\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(2))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~21_combout\);

-- Location: LCCOMB_X88_Y36_N16
\avIntf|Auto_Initialize|Ram0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~22_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(0) $ (\avIntf|Auto_Initialize|rom_address_counter\(3))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(1),
	combout => \avIntf|Auto_Initialize|Ram0~22_combout\);

-- Location: LCCOMB_X88_Y36_N22
\avIntf|Auto_Initialize|Ram0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~23_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & (((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (\avIntf|Auto_Initialize|rom_address_counter\(0))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~23_combout\);

-- Location: LCCOMB_X88_Y36_N24
\avIntf|Auto_Initialize|Ram0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~24_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|Ram0~22_combout\) # ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (((!\avIntf|Auto_Initialize|Ram0~23_combout\ & \avIntf|Auto_Initialize|data_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|Ram0~22_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~23_combout\,
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~24_combout\);

-- Location: LCCOMB_X88_Y36_N10
\avIntf|Auto_Initialize|Ram0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~26_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (((\avIntf|Auto_Initialize|Ram0~24_combout\)))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|Ram0~24_combout\ & 
-- (\avIntf|Auto_Initialize|Ram0~25_combout\)) # (!\avIntf|Auto_Initialize|Ram0~24_combout\ & ((!\avIntf|Auto_Initialize|Ram0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|Ram0~25_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~21_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~24_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~26_combout\);

-- Location: LCCOMB_X88_Y36_N2
\avIntf|Auto_Initialize|data_out~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~31_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & (!\avIntf|Auto_Initialize|Ram0~1_combout\)) # 
-- (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & ((\avIntf|Auto_Initialize|Ram0~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|Ram0~1_combout\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datad => \avIntf|Auto_Initialize|Ram0~26_combout\,
	combout => \avIntf|Auto_Initialize|data_out~31_combout\);

-- Location: LCCOMB_X88_Y36_N18
\avIntf|Auto_Initialize|data_out~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~15_combout\ = (\avIntf|Auto_Initialize|data_out~31_combout\) # ((\avIntf|Auto_Initialize|rom_address_counter\(5) & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & 
-- \avIntf|Auto_Initialize|data_out~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|data_out~14_combout\,
	datad => \avIntf|Auto_Initialize|data_out~31_combout\,
	combout => \avIntf|Auto_Initialize|data_out~15_combout\);

-- Location: FF_X88_Y36_N19
\avIntf|Auto_Initialize|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~15_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(4));

-- Location: LCCOMB_X88_Y34_N30
\avIntf|data_to_transfer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~3_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(4),
	combout => \avIntf|data_to_transfer~3_combout\);

-- Location: FF_X88_Y34_N31
\avIntf|data_to_transfer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~3_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(4));

-- Location: LCCOMB_X88_Y34_N26
\avIntf|I2C_Controller|current_byte~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~3_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|data_to_transfer\(4),
	combout => \avIntf|I2C_Controller|current_byte~3_combout\);

-- Location: FF_X88_Y34_N27
\avIntf|I2C_Controller|current_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~3_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(4));

-- Location: LCCOMB_X89_Y36_N16
\avIntf|Auto_Initialize|Ram0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~15_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(5))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & 
-- (\avIntf|Auto_Initialize|rom_address_counter\(5) & \avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~15_combout\);

-- Location: LCCOMB_X89_Y36_N26
\avIntf|Auto_Initialize|Ram0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~19_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (((\avIntf|Auto_Initialize|rom_address_counter\(5))))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(5) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (\avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~19_combout\);

-- Location: LCCOMB_X86_Y36_N28
\avIntf|Auto_Initialize|Ram0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~16_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (\avIntf|Auto_Initialize|rom_address_counter\(0))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|rom_address_counter\(1) & \avIntf|Auto_Initialize|rom_address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~16_combout\);

-- Location: LCCOMB_X89_Y36_N30
\avIntf|Auto_Initialize|Ram0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~17_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(5) & ((!\avIntf|Auto_Initialize|rom_address_counter\(0)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(5) & !\avIntf|Auto_Initialize|rom_address_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~17_combout\);

-- Location: LCCOMB_X89_Y36_N12
\avIntf|Auto_Initialize|Ram0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~18_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|Ram0~16_combout\) # ((!\avIntf|Auto_Initialize|data_out[0]~6_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & 
-- (((\avIntf|Auto_Initialize|Ram0~17_combout\ & \avIntf|Auto_Initialize|data_out[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datab => \avIntf|Auto_Initialize|Ram0~16_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~17_combout\,
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~18_combout\);

-- Location: LCCOMB_X89_Y36_N4
\avIntf|Auto_Initialize|Ram0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~20_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (((\avIntf|Auto_Initialize|Ram0~18_combout\)))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|Ram0~18_combout\ & 
-- ((!\avIntf|Auto_Initialize|Ram0~19_combout\))) # (!\avIntf|Auto_Initialize|Ram0~18_combout\ & (\avIntf|Auto_Initialize|Ram0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|Ram0~15_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~19_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~18_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~20_combout\);

-- Location: LCCOMB_X89_Y36_N14
\avIntf|Auto_Initialize|Ram0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~13_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(5) & ((!\avIntf|Auto_Initialize|rom_address_counter\(0)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~13_combout\);

-- Location: LCCOMB_X89_Y36_N8
\avIntf|Auto_Initialize|Ram0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~12_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|rom_address_counter\(4) & (!\avIntf|Auto_Initialize|rom_address_counter\(1) & !\avIntf|Auto_Initialize|rom_address_counter\(0))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((!\avIntf|Auto_Initialize|rom_address_counter\(0)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~12_combout\);

-- Location: LCCOMB_X86_Y36_N26
\avIntf|Auto_Initialize|Ram0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~74_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(5) $ (((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (\avIntf|Auto_Initialize|rom_address_counter\(4)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|rom_address_counter\(5) & !\avIntf|Auto_Initialize|rom_address_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(4),
	combout => \avIntf|Auto_Initialize|Ram0~74_combout\);

-- Location: LCCOMB_X89_Y36_N18
\avIntf|Auto_Initialize|Ram0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~75_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (\avIntf|Auto_Initialize|Ram0~74_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(2) $ (!\avIntf|Auto_Initialize|rom_address_counter\(5))))) # 
-- (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~74_combout\,
	datad => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~75_combout\);

-- Location: LCCOMB_X89_Y36_N24
\avIntf|Auto_Initialize|Ram0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~14_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (((\avIntf|Auto_Initialize|Ram0~75_combout\)))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & ((\avIntf|Auto_Initialize|Ram0~75_combout\ & 
-- (\avIntf|Auto_Initialize|Ram0~13_combout\)) # (!\avIntf|Auto_Initialize|Ram0~75_combout\ & ((\avIntf|Auto_Initialize|Ram0~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datab => \avIntf|Auto_Initialize|Ram0~13_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~12_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~75_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~14_combout\);

-- Location: LCCOMB_X89_Y36_N10
\avIntf|Auto_Initialize|data_out~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~11_combout\ = (\avIntf|Auto_Initialize|data_out~10_combout\) # ((!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- \avIntf|Auto_Initialize|Ram0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|data_out~10_combout\,
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datad => \avIntf|Auto_Initialize|Ram0~14_combout\,
	combout => \avIntf|Auto_Initialize|data_out~11_combout\);

-- Location: LCCOMB_X89_Y36_N28
\avIntf|Auto_Initialize|data_out~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~12_combout\ = (\avIntf|Auto_Initialize|data_out~11_combout\) # ((\avIntf|Auto_Initialize|rom_address_counter\(3) & (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & 
-- \avIntf|Auto_Initialize|Ram0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datab => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datac => \avIntf|Auto_Initialize|Ram0~20_combout\,
	datad => \avIntf|Auto_Initialize|data_out~11_combout\,
	combout => \avIntf|Auto_Initialize|data_out~12_combout\);

-- Location: FF_X89_Y36_N29
\avIntf|Auto_Initialize|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~12_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(5));

-- Location: LCCOMB_X88_Y34_N8
\avIntf|data_to_transfer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~2_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(5),
	combout => \avIntf|data_to_transfer~2_combout\);

-- Location: FF_X88_Y34_N9
\avIntf|data_to_transfer[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~2_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(5));

-- Location: LCCOMB_X88_Y34_N20
\avIntf|I2C_Controller|current_byte~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~2_combout\ = (\KEY[0]~input_o\ & \avIntf|data_to_transfer\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \avIntf|data_to_transfer\(5),
	combout => \avIntf|I2C_Controller|current_byte~2_combout\);

-- Location: FF_X88_Y34_N21
\avIntf|I2C_Controller|current_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~2_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(5));

-- Location: LCCOMB_X88_Y34_N12
\avIntf|I2C_Controller|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Mux0~0_combout\ = (\avIntf|I2C_Controller|current_bit\(0) & ((\avIntf|I2C_Controller|current_bit\(1)) # ((\avIntf|I2C_Controller|current_byte\(5))))) # (!\avIntf|I2C_Controller|current_bit\(0) & 
-- (!\avIntf|I2C_Controller|current_bit\(1) & (\avIntf|I2C_Controller|current_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(0),
	datab => \avIntf|I2C_Controller|current_bit\(1),
	datac => \avIntf|I2C_Controller|current_byte\(4),
	datad => \avIntf|I2C_Controller|current_byte\(5),
	combout => \avIntf|I2C_Controller|Mux0~0_combout\);

-- Location: LCCOMB_X89_Y36_N2
\avIntf|Auto_Initialize|Ram0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~1_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4)) # ((\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (\avIntf|Auto_Initialize|rom_address_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~1_combout\);

-- Location: LCCOMB_X87_Y36_N16
\avIntf|Auto_Initialize|Ram0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~2_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(1) & (\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(2)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter\(2) & ((\avIntf|Auto_Initialize|rom_address_counter\(0)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(2) & (\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- !\avIntf|Auto_Initialize|rom_address_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(2),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(0),
	combout => \avIntf|Auto_Initialize|Ram0~2_combout\);

-- Location: LCCOMB_X86_Y36_N4
\avIntf|Auto_Initialize|Ram0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~3_combout\ = (!\avIntf|Auto_Initialize|rom_address_counter\(3) & ((!\avIntf|Auto_Initialize|rom_address_counter\(2)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~3_combout\);

-- Location: LCCOMB_X87_Y36_N18
\avIntf|Auto_Initialize|Ram0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~5_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (((!\avIntf|Auto_Initialize|rom_address_counter\(0) & \avIntf|Auto_Initialize|Ram0~4_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~4_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~5_combout\);

-- Location: LCCOMB_X87_Y36_N4
\avIntf|Auto_Initialize|Ram0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~6_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (((\avIntf|Auto_Initialize|Ram0~5_combout\)))) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|Ram0~2_combout\ & 
-- ((\avIntf|Auto_Initialize|Ram0~5_combout\))) # (!\avIntf|Auto_Initialize|Ram0~2_combout\ & (\avIntf|Auto_Initialize|Ram0~3_combout\ & !\avIntf|Auto_Initialize|Ram0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datab => \avIntf|Auto_Initialize|Ram0~2_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~3_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~5_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~6_combout\);

-- Location: LCCOMB_X86_Y36_N6
\avIntf|Auto_Initialize|Ram0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~8_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(0) & (\avIntf|Auto_Initialize|rom_address_counter\(3) & ((\avIntf|Auto_Initialize|rom_address_counter\(2)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(0) & ((\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(1))) # (!\avIntf|Auto_Initialize|rom_address_counter\(3) & 
-- ((\avIntf|Auto_Initialize|rom_address_counter\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~8_combout\);

-- Location: LCCOMB_X86_Y36_N24
\avIntf|Auto_Initialize|Ram0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~7_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(2) $ (((!\avIntf|Auto_Initialize|rom_address_counter\(0) & !\avIntf|Auto_Initialize|rom_address_counter\(1)))))) # 
-- (!\avIntf|Auto_Initialize|rom_address_counter\(3) & (\avIntf|Auto_Initialize|rom_address_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(0),
	datab => \avIntf|Auto_Initialize|rom_address_counter\(3),
	datac => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datad => \avIntf|Auto_Initialize|rom_address_counter\(2),
	combout => \avIntf|Auto_Initialize|Ram0~7_combout\);

-- Location: LCCOMB_X87_Y36_N14
\avIntf|Auto_Initialize|Ram0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~9_combout\ = (\avIntf|Auto_Initialize|Ram0~7_combout\ & (!\avIntf|Auto_Initialize|Ram0~8_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(1)) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\)))) # 
-- (!\avIntf|Auto_Initialize|Ram0~7_combout\ & ((\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|data_out[0]~6_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(1) & ((\avIntf|Auto_Initialize|Ram0~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~8_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~7_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~9_combout\);

-- Location: LCCOMB_X87_Y36_N0
\avIntf|Auto_Initialize|Ram0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~10_combout\ = (\avIntf|Auto_Initialize|data_out[0]~6_combout\ & (\avIntf|Auto_Initialize|rom_address_counter\(1) & (!\avIntf|Auto_Initialize|Ram0~8_combout\))) # (!\avIntf|Auto_Initialize|data_out[0]~6_combout\ & 
-- (((\avIntf|Auto_Initialize|Ram0~8_combout\ & \avIntf|Auto_Initialize|Ram0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|rom_address_counter\(1),
	datab => \avIntf|Auto_Initialize|data_out[0]~6_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~8_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~7_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~10_combout\);

-- Location: LCCOMB_X87_Y36_N6
\avIntf|Auto_Initialize|Ram0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|Ram0~11_combout\ = (\avIntf|Auto_Initialize|rom_address_counter\(4) & (\avIntf|Auto_Initialize|Ram0~9_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(4) & ((\avIntf|Auto_Initialize|Ram0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|Auto_Initialize|rom_address_counter\(4),
	datac => \avIntf|Auto_Initialize|Ram0~9_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~10_combout\,
	combout => \avIntf|Auto_Initialize|Ram0~11_combout\);

-- Location: LCCOMB_X87_Y36_N24
\avIntf|Auto_Initialize|data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~7_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & (\avIntf|Auto_Initialize|rom_address_counter\(5))) # (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & 
-- ((\avIntf|Auto_Initialize|rom_address_counter\(5) & (\avIntf|Auto_Initialize|Ram0~6_combout\)) # (!\avIntf|Auto_Initialize|rom_address_counter\(5) & ((\avIntf|Auto_Initialize|Ram0~11_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datab => \avIntf|Auto_Initialize|rom_address_counter\(5),
	datac => \avIntf|Auto_Initialize|Ram0~6_combout\,
	datad => \avIntf|Auto_Initialize|Ram0~11_combout\,
	combout => \avIntf|Auto_Initialize|data_out~7_combout\);

-- Location: LCCOMB_X87_Y36_N2
\avIntf|Auto_Initialize|data_out~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|Auto_Initialize|data_out~8_combout\ = (\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & ((\avIntf|Auto_Initialize|data_out~7_combout\ & (!\avIntf|Auto_Initialize|Ram0~0_combout\)) # 
-- (!\avIntf|Auto_Initialize|data_out~7_combout\ & ((\avIntf|Auto_Initialize|Ram0~1_combout\))))) # (!\avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\ & (((\avIntf|Auto_Initialize|data_out~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|Auto_Initialize|s_i2c_auto_init.AUTO_STATE_1_SEND_START_BIT~q\,
	datab => \avIntf|Auto_Initialize|Ram0~0_combout\,
	datac => \avIntf|Auto_Initialize|Ram0~1_combout\,
	datad => \avIntf|Auto_Initialize|data_out~7_combout\,
	combout => \avIntf|Auto_Initialize|data_out~8_combout\);

-- Location: FF_X87_Y36_N3
\avIntf|Auto_Initialize|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|Auto_Initialize|data_out~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	ena => \avIntf|Auto_Initialize|data_out[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|Auto_Initialize|data_out\(6));

-- Location: LCCOMB_X88_Y34_N10
\avIntf|data_to_transfer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|data_to_transfer~0_combout\ = (\KEY[0]~input_o\ & \avIntf|Auto_Initialize|data_out\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \avIntf|Auto_Initialize|data_out\(6),
	combout => \avIntf|data_to_transfer~0_combout\);

-- Location: FF_X88_Y34_N11
\avIntf|data_to_transfer[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|data_to_transfer~0_combout\,
	ena => \avIntf|data_to_transfer[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|data_to_transfer\(6));

-- Location: LCCOMB_X87_Y34_N20
\avIntf|I2C_Controller|current_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|current_byte~0_combout\ = (\avIntf|data_to_transfer\(6) & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \avIntf|data_to_transfer\(6),
	datac => \KEY[0]~input_o\,
	combout => \avIntf|I2C_Controller|current_byte~0_combout\);

-- Location: FF_X87_Y34_N21
\avIntf|I2C_Controller|current_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \avIntf|I2C_Controller|current_byte~0_combout\,
	ena => \avIntf|I2C_Controller|current_byte[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \avIntf|I2C_Controller|current_byte\(6));

-- Location: LCCOMB_X87_Y34_N28
\avIntf|I2C_Controller|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|Mux0~1_combout\ = (\avIntf|I2C_Controller|current_bit\(1) & ((\avIntf|I2C_Controller|Mux0~0_combout\ & (\avIntf|I2C_Controller|current_byte\(7))) # (!\avIntf|I2C_Controller|Mux0~0_combout\ & 
-- ((\avIntf|I2C_Controller|current_byte\(6)))))) # (!\avIntf|I2C_Controller|current_bit\(1) & (((\avIntf|I2C_Controller|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_byte\(7),
	datab => \avIntf|I2C_Controller|current_bit\(1),
	datac => \avIntf|I2C_Controller|Mux0~0_combout\,
	datad => \avIntf|I2C_Controller|current_byte\(6),
	combout => \avIntf|I2C_Controller|Mux0~1_combout\);

-- Location: LCCOMB_X87_Y34_N10
\avIntf|I2C_Controller|i2c_sdata~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|i2c_sdata~2_combout\ = (\avIntf|I2C_Controller|i2c_sdata~1_combout\ & ((\avIntf|I2C_Controller|current_bit\(2) & ((\avIntf|I2C_Controller|Mux0~1_combout\))) # (!\avIntf|I2C_Controller|current_bit\(2) & 
-- (\avIntf|I2C_Controller|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|current_bit\(2),
	datab => \avIntf|I2C_Controller|Mux0~3_combout\,
	datac => \avIntf|I2C_Controller|i2c_sdata~1_combout\,
	datad => \avIntf|I2C_Controller|Mux0~1_combout\,
	combout => \avIntf|I2C_Controller|i2c_sdata~2_combout\);

-- Location: LCCOMB_X86_Y34_N12
\avIntf|I2C_Controller|i2c_sdata~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \avIntf|I2C_Controller|i2c_sdata~3_combout\ = (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\) # ((\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\) # 
-- (\avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_2_START_BIT~q\,
	datab => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_5_STOP_BIT~q\,
	datac => \avIntf|I2C_Controller|s_i2c_transceiver.I2C_STATE_3_TRANSFER_BYTE~q\,
	combout => \avIntf|I2C_Controller|i2c_sdata~3_combout\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y66_N15
\AUD_DACLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_DACLRCK,
	o => \AUD_DACLRCK~input_o\);

-- Location: FF_X65_Y25_N15
\audio|DAC_Left_Right_Clock_Edges|cur_test_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \AUD_DACLRCK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\);

-- Location: FF_X65_Y25_N11
\audio|DAC_Left_Right_Clock_Edges|last_test_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\);

-- Location: LCCOMB_X66_Y25_N18
\audio|done_dac_channel_sync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|done_dac_channel_sync~0_combout\ = (\audio|done_dac_channel_sync~q\) # ((!\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ & \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datac => \audio|done_dac_channel_sync~q\,
	datad => \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\,
	combout => \audio|done_dac_channel_sync~0_combout\);

-- Location: FF_X66_Y25_N19
\audio|done_dac_channel_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|done_dac_channel_sync~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|done_dac_channel_sync~q\);

-- Location: LCCOMB_X65_Y25_N30
\audio|Audio_Out_Serializer|always4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|always4~0_combout\ = (\audio|done_dac_channel_sync~q\ & (\audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\ $ (\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\,
	datab => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datad => \audio|done_dac_channel_sync~q\,
	combout => \audio|Audio_Out_Serializer|always4~0_combout\);

-- Location: LCCOMB_X67_Y26_N4
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ 
-- (((VCC) # (!\audio|Audio_Out_Serializer|comb~1_combout\)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = 
-- CARRY(\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (!\audio|Audio_Out_Serializer|comb~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X63_Y25_N22
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X67_Y26_N0
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ = (\audio|Audio_Out_Serializer|comb~1_combout\ $ (\audio|Audio_Out_Serializer|read_left_channel~combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\);

-- Location: FF_X67_Y26_N7
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: FF_X67_Y26_N5
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: LCCOMB_X68_Y26_N16
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~8_combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (GND)
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\ = CARRY(!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~8_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\);

-- Location: LCCOMB_X68_Y26_N18
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~10_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\))
-- \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # 
-- (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~9\,
	combout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~10_combout\,
	cout => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~11\);

-- Location: FF_X68_Y26_N19
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[1]~10_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(1));

-- Location: FF_X68_Y26_N23
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[3]~14_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(3));

-- Location: FF_X68_Y26_N17
\audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_fifo_write_space[0]~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(0));

-- Location: LCCOMB_X68_Y26_N0
\audio|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Equal6~0_combout\ = (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(2) & (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(1) & (!\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(3) & 
-- !\audio|Audio_Out_Serializer|left_channel_fifo_write_space\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(2),
	datab => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(1),
	datac => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(3),
	datad => \audio|Audio_Out_Serializer|left_channel_fifo_write_space\(0),
	combout => \audio|Equal6~0_combout\);

-- Location: LCCOMB_X68_Y25_N4
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) 
-- $ (((VCC) # (!\audio|Audio_Out_Serializer|comb~0_combout\)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\ = CARRY(\audio|Audio_Out_Serializer|comb~0_combout\ $ 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X68_Y25_N0
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ $ (\audio|Audio_Out_Serializer|comb~0_combout\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|comb~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\);

-- Location: FF_X68_Y25_N5
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0));

-- Location: FF_X68_Y25_N7
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1));

-- Location: LCCOMB_X69_Y25_N8
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~8_combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0) $ (GND)
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\ = CARRY(!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~8_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\);

-- Location: LCCOMB_X69_Y25_N10
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~10_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1)) # 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~9\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~10_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~11\);

-- Location: LCCOMB_X69_Y25_N14
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~14_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\) # (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3)) # 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[2]~13\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~14_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\);

-- Location: FF_X69_Y25_N15
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~14_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(3));

-- Location: FF_X69_Y25_N9
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[0]~8_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(0));

-- Location: FF_X69_Y25_N11
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[1]~10_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(1));

-- Location: LCCOMB_X69_Y25_N26
\audio|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Equal7~0_combout\ = (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(2) & (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(3) & (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(0) & 
-- !\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(2),
	datab => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(3),
	datac => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(0),
	datad => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(1),
	combout => \audio|Equal7~0_combout\);

-- Location: LCCOMB_X69_Y25_N16
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~16_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\ $ (GND)))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[3]~15\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~16_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~17\);

-- Location: LCCOMB_X69_Y25_N20
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~20_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\ & VCC)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- (\audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\ $ (GND)))
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~21\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6) & 
-- !\audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_counter|counter_reg_bit\(6),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[5]~19\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~20_combout\,
	cout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~21\);

-- Location: FF_X69_Y25_N21
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~20_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(6));

-- Location: LCCOMB_X69_Y25_N22
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]~22_combout\ = \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~21\ $ (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	cin => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[6]~21\,
	combout => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]~22_combout\);

-- Location: FF_X69_Y25_N23
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[7]~22_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(7));

-- Location: FF_X69_Y25_N17
\audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|right_channel_fifo_write_space[4]~16_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(4));

-- Location: LCCOMB_X69_Y25_N0
\audio|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Equal7~1_combout\ = (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(5) & (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(6) & (!\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(7) & 
-- !\audio|Audio_Out_Serializer|right_channel_fifo_write_space\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(5),
	datab => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(6),
	datac => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(7),
	datad => \audio|Audio_Out_Serializer|right_channel_fifo_write_space\(4),
	combout => \audio|Equal7~1_combout\);

-- Location: LCCOMB_X68_Y26_N2
\audio|write_ready\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|write_ready~combout\ = (\audio|Equal6~1_combout\ & ((\audio|Equal6~0_combout\) # ((\audio|Equal7~0_combout\ & \audio|Equal7~1_combout\)))) # (!\audio|Equal6~1_combout\ & (((\audio|Equal7~0_combout\ & \audio|Equal7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Equal6~1_combout\,
	datab => \audio|Equal6~0_combout\,
	datac => \audio|Equal7~0_combout\,
	datad => \audio|Equal7~1_combout\,
	combout => \audio|write_ready~combout\);

-- Location: FF_X68_Y26_N3
\processing|write_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|write_ready~combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \processing|write_s~q\);

-- Location: LCCOMB_X68_Y26_N4
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ = (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\) # ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\ & 
-- \audio|Audio_Out_Serializer|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\,
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\);

-- Location: FF_X68_Y26_N5
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\);

-- Location: LCCOMB_X68_Y26_N8
\audio|Audio_Out_Serializer|comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|comb~1_combout\ = (!\processing|write_s~q\ & (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & ((!\audio|Equal6~0_combout\) # (!\audio|Equal6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Equal6~1_combout\,
	datab => \processing|write_s~q\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \audio|Equal6~0_combout\,
	combout => \audio|Audio_Out_Serializer|comb~1_combout\);

-- Location: LCCOMB_X66_Y26_N0
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & (((\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & ((\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)) # (!\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\);

-- Location: LCCOMB_X66_Y26_N28
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\) # 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\ & (!\audio|Audio_Out_Serializer|comb~1_combout\ & \audio|Audio_Out_Serializer|read_left_channel~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~4_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~0_combout\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\);

-- Location: FF_X66_Y26_N29
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_2~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\);

-- Location: LCCOMB_X66_Y26_N18
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ = (\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\ & ((!\audio|Audio_Out_Serializer|read_left_channel~combout\)))) # (!\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- (((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\ & \audio|Audio_Out_Serializer|read_left_channel~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_2_dff~q\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\);

-- Location: LCCOMB_X66_Y26_N10
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\) 
-- # ((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # (!\KEY[0]~input_o\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\);

-- Location: FF_X66_Y26_N11
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\);

-- Location: LCCOMB_X66_Y26_N12
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ = (\KEY[0]~input_o\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\);

-- Location: FF_X66_Y26_N13
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\);

-- Location: LCCOMB_X66_Y26_N16
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & ((\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\))) # (!\audio|Audio_Out_Serializer|comb~1_combout\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & (((\audio|Audio_Out_Serializer|comb~1_combout\) # 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\);

-- Location: LCCOMB_X66_Y26_N22
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\ = (\KEY[0]~input_o\ & (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ & 
-- ((!\audio|Audio_Out_Serializer|comb~1_combout\) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|comb~1_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\);

-- Location: FF_X66_Y26_N23
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\);

-- Location: LCCOMB_X65_Y25_N6
\audio|Audio_Out_Serializer|read_left_channel\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|read_left_channel~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & (\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ & 
-- (\audio|Audio_Out_Serializer|always4~0_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datab => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datac => \audio|Audio_Out_Serializer|always4~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	combout => \audio|Audio_Out_Serializer|read_left_channel~combout\);

-- Location: LCCOMB_X66_Y25_N24
\audio|Audio_Out_Serializer|left_channel_was_read~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|left_channel_was_read~0_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\) # ((!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & \audio|Audio_Out_Serializer|left_channel_was_read~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \audio|Audio_Out_Serializer|left_channel_was_read~q\,
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|left_channel_was_read~0_combout\);

-- Location: FF_X66_Y25_N25
\audio|Audio_Out_Serializer|left_channel_was_read\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|left_channel_was_read~0_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|left_channel_was_read~q\);

-- Location: LCCOMB_X65_Y25_N20
\audio|Audio_Out_Serializer|read_right_channel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|read_right_channel~0_combout\ = (\audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\ & (\audio|done_dac_channel_sync~q\ & (!\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ & 
-- \audio|Audio_Out_Serializer|left_channel_was_read~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|DAC_Left_Right_Clock_Edges|last_test_clk~q\,
	datab => \audio|done_dac_channel_sync~q\,
	datac => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datad => \audio|Audio_Out_Serializer|left_channel_was_read~q\,
	combout => \audio|Audio_Out_Serializer|read_right_channel~0_combout\);

-- Location: LCCOMB_X69_Y25_N24
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & \audio|Audio_Out_Serializer|comb~0_combout\)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|comb~0_combout\ & (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\)) # (!\audio|Audio_Out_Serializer|comb~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~1_combout\,
	datab => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datad => \audio|Audio_Out_Serializer|comb~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\);

-- Location: FF_X69_Y25_N25
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|_~2_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\);

-- Location: LCCOMB_X69_Y25_N2
\audio|Audio_Out_Serializer|comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|comb~0_combout\ = (!\processing|write_s~q\ & (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\ & ((!\audio|Equal7~1_combout\) # (!\audio|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \processing|write_s~q\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|full_dff~q\,
	datac => \audio|Equal7~0_combout\,
	datad => \audio|Equal7~1_combout\,
	combout => \audio|Audio_Out_Serializer|comb~0_combout\);

-- Location: LCCOMB_X63_Y25_N8
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) $ (VCC)
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X63_Y25_N0
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ = (\audio|Audio_Out_Serializer|comb~0_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \audio|Audio_Out_Serializer|comb~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\);

-- Location: FF_X63_Y25_N9
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X63_Y25_N10
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X63_Y25_N11
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X63_Y25_N12
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X63_Y25_N13
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X63_Y25_N14
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X63_Y25_N15
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X63_Y25_N16
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X63_Y25_N17
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X63_Y25_N18
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X63_Y25_N19
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X63_Y25_N20
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ $ 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\);

-- Location: FF_X63_Y25_N21
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LCCOMB_X67_Y25_N18
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ = (\KEY[0]~input_o\ & !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\);

-- Location: LCCOMB_X67_Y25_N14
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \KEY[0]~input_o\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\);

-- Location: FF_X67_Y25_N19
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\);

-- Location: LCCOMB_X67_Y25_N20
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\);

-- Location: FF_X67_Y25_N21
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0));

-- Location: LCCOMB_X67_Y25_N28
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

-- Location: LCCOMB_X68_Y25_N18
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0) $ 
-- (VCC)
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ = CARRY(\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X67_Y25_N16
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ = ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\);

-- Location: FF_X68_Y25_N19
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0));

-- Location: LCCOMB_X67_Y25_N24
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\);

-- Location: LCCOMB_X68_Y25_N20
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\);

-- Location: FF_X68_Y25_N21
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1));

-- Location: LCCOMB_X67_Y25_N10
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\);

-- Location: FF_X67_Y25_N11
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2));

-- Location: LCCOMB_X67_Y25_N8
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\);

-- Location: LCCOMB_X68_Y25_N22
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ & 
-- VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\);

-- Location: FF_X68_Y25_N23
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2));

-- Location: LCCOMB_X67_Y25_N0
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\);

-- Location: LCCOMB_X68_Y25_N24
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\);

-- Location: FF_X68_Y25_N25
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3));

-- Location: LCCOMB_X67_Y25_N2
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\);

-- Location: FF_X67_Y25_N3
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4));

-- Location: LCCOMB_X67_Y25_N12
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\);

-- Location: LCCOMB_X68_Y25_N26
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ & 
-- VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\);

-- Location: FF_X68_Y25_N27
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4));

-- Location: LCCOMB_X67_Y25_N4
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datac => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\);

-- Location: LCCOMB_X68_Y25_N28
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ 
-- $ (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\);

-- Location: FF_X68_Y25_N29
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5));

-- Location: LCCOMB_X65_Y25_N18
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\);

-- Location: FF_X65_Y25_N19
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6));

-- Location: LCCOMB_X65_Y25_N12
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	datad => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\);

-- Location: LCCOMB_X63_Y26_N4
\audio|Audio_Out_Serializer|data_out_shift_reg[22]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[22]~2_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(21)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|data_out_shift_reg\(21),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(21),
	datad => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~2_combout\);

-- Location: LCCOMB_X69_Y26_N0
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) $ (VCC)
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X68_Y26_N6
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\ = (\audio|Audio_Out_Serializer|comb~1_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|comb~1_combout\,
	datac => \KEY[0]~input_o\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\);

-- Location: FF_X69_Y26_N1
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X69_Y26_N2
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X69_Y26_N3
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X69_Y26_N4
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X69_Y26_N5
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X69_Y26_N6
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X69_Y26_N7
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X69_Y26_N8
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ (GND))) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X69_Y26_N9
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X69_Y26_N10
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X69_Y26_N11
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X69_Y26_N12
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ $ 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\);

-- Location: FF_X69_Y26_N13
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LCCOMB_X65_Y25_N16
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\ = (\KEY[0]~input_o\ & !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\);

-- Location: LCCOMB_X65_Y25_N2
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\ = (\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ & 
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\);

-- Location: LCCOMB_X65_Y25_N26
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~2_combout\ = ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & 
-- (\audio|Audio_Out_Serializer|always4~0_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|always4~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~1_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~2_combout\);

-- Location: FF_X65_Y25_N17
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~0_combout\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\);

-- Location: LCCOMB_X65_Y25_N14
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(0),
	datab => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[0]~0_combout\);

-- Location: LCCOMB_X67_Y26_N20
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0) $ (VCC)
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\ = CARRY(\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => VCC,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\);

-- Location: LCCOMB_X66_Y25_N6
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ & 
-- ((\KEY[0]~input_o\) # ((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\ & (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~1_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~0_combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datad => \KEY[0]~input_o\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\);

-- Location: FF_X66_Y25_N7
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\);

-- Location: LCCOMB_X66_Y25_N0
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\ = (\KEY[0]~input_o\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\);

-- Location: FF_X66_Y25_N1
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\);

-- Location: LCCOMB_X66_Y25_N20
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|comb~0_combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\))) # (!\audio|Audio_Out_Serializer|comb~0_combout\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\)))) # (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (((\audio|Audio_Out_Serializer|comb~0_combout\) # 
-- (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_1_dff~q\,
	datac => \audio|Audio_Out_Serializer|comb~0_combout\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_is_0_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\);

-- Location: LCCOMB_X66_Y25_N30
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\ & (\KEY[0]~input_o\ & 
-- ((!\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\) # (!\audio|Audio_Out_Serializer|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|comb~0_combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~0_combout\,
	datac => \KEY[0]~input_o\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|usedw_will_be_1~2_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\);

-- Location: FF_X66_Y25_N31
\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\);

-- Location: LCCOMB_X66_Y26_N24
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\ & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\ & \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_lsb~q\,
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|empty_dff~q\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\);

-- Location: LCCOMB_X66_Y26_N6
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\ = ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\ & 
-- (\audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\ & \audio|Audio_Out_Serializer|always4~0_combout\))) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~0_combout\,
	datac => \audio|DAC_Left_Right_Clock_Edges|cur_test_clk~q\,
	datad => \audio|Audio_Out_Serializer|always4~0_combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\);

-- Location: FF_X67_Y26_N21
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0));

-- Location: LCCOMB_X63_Y26_N12
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(1),
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(0),
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[1]~1_combout\);

-- Location: LCCOMB_X67_Y26_N22
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita0~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\);

-- Location: FF_X67_Y26_N23
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1));

-- Location: LCCOMB_X63_Y26_N14
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datad => \KEY[0]~input_o\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\);

-- Location: FF_X63_Y26_N15
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2));

-- Location: LCCOMB_X63_Y26_N28
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(2),
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(1),
	datad => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[2]~2_combout\);

-- Location: LCCOMB_X67_Y26_N24
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\ & 
-- VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita1~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\);

-- Location: FF_X67_Y26_N25
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2));

-- Location: LCCOMB_X66_Y26_N4
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\);

-- Location: FF_X66_Y26_N5
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3));

-- Location: LCCOMB_X66_Y26_N2
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(3),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(2),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[3]~3_combout\);

-- Location: LCCOMB_X67_Y26_N26
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\)) # (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3) & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # (GND)))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ = 
-- CARRY((!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita2~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\);

-- Location: FF_X67_Y26_N27
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3));

-- Location: LCCOMB_X66_Y26_N8
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\);

-- Location: FF_X66_Y26_N9
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4));

-- Location: LCCOMB_X66_Y26_N26
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(4),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(3),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[4]~4_combout\);

-- Location: LCCOMB_X67_Y26_N28
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\ = (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & (!\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\ & 
-- VCC))
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\ = CARRY((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4) & 
-- !\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	datad => VCC,
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita3~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	cout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\);

-- Location: FF_X67_Y26_N29
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4));

-- Location: LCCOMB_X66_Y26_N20
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\);

-- Location: FF_X66_Y26_N21
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5));

-- Location: LCCOMB_X66_Y26_N30
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(5),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(4),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[5]~5_combout\);

-- Location: LCCOMB_X67_Y26_N30
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\ = \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5) $ 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	cin => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita4~COUT\,
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\);

-- Location: FF_X67_Y26_N31
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_comb_bita5~combout\,
	asdata => \~GND~combout\,
	sload => \ALT_INV_KEY[0]~input_o\,
	ena => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|_~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5));

-- Location: LCCOMB_X66_Y25_N8
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\ = (\KEY[0]~input_o\ & ((\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\);

-- Location: FF_X66_Y25_N9
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6));

-- Location: LCCOMB_X66_Y25_N22
\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\ = (\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- ((\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5)))) # (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & 
-- (\audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datac => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|low_addressa\(6),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|rd_ptr_msb|counter_reg_bit\(5),
	combout => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|ram_read_address[6]~6_combout\);

-- Location: LCCOMB_X65_Y25_N22
\audio|Audio_Out_Serializer|data_out_shift_reg[22]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\ = ((\audio|Audio_Out_Serializer|always4~0_combout\ & (!\audio|Audio_Out_Serializer|read_left_channel~combout\ & !\audio|Audio_Out_Serializer|read_right_channel~0_combout\))) # 
-- (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|always4~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	datad => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\);

-- Location: IOIBUF_X0_Y60_N15
\AUD_BCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_BCLK,
	o => \AUD_BCLK~input_o\);

-- Location: FF_X65_Y25_N9
\audio|Bit_Clock_Edges|cur_test_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \AUD_BCLK~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Bit_Clock_Edges|cur_test_clk~q\);

-- Location: FF_X65_Y25_N31
\audio|Bit_Clock_Edges|last_test_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \audio|Bit_Clock_Edges|cur_test_clk~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Bit_Clock_Edges|last_test_clk~q\);

-- Location: LCCOMB_X65_Y25_N8
\audio|Audio_Out_Serializer|data_out_shift_reg[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\ = (\audio|Audio_Out_Serializer|always4~0_combout\) # (((!\audio|Bit_Clock_Edges|cur_test_clk~q\ & \audio|Bit_Clock_Edges|last_test_clk~q\)) # (!\KEY[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|always4~0_combout\,
	datab => \KEY[0]~input_o\,
	datac => \audio|Bit_Clock_Edges|cur_test_clk~q\,
	datad => \audio|Bit_Clock_Edges|last_test_clk~q\,
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\);

-- Location: FF_X63_Y26_N5
\audio|Audio_Out_Serializer|data_out_shift_reg[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~2_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(21),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(22));

-- Location: LCCOMB_X63_Y26_N2
\audio|Audio_Out_Serializer|data_out_shift_reg[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[23]~1_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(22)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(22),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(22),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[23]~1_combout\);

-- Location: FF_X63_Y26_N3
\audio|Audio_Out_Serializer|data_out_shift_reg[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[23]~1_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(22),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(23));

-- Location: LCCOMB_X63_Y26_N20
\audio|Audio_Out_Serializer|data_out_shift_reg[24]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|data_out_shift_reg[24]~0_combout\ = (\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & ((\audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(23)))) # 
-- (!\audio|Audio_Out_Serializer|read_right_channel~0_combout\ & (\audio|Audio_Out_Serializer|data_out_shift_reg\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \audio|Audio_Out_Serializer|read_right_channel~0_combout\,
	datab => \audio|Audio_Out_Serializer|data_out_shift_reg\(23),
	datad => \audio|Audio_Out_Serializer|Audio_Out_Right_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(23),
	combout => \audio|Audio_Out_Serializer|data_out_shift_reg[24]~0_combout\);

-- Location: FF_X63_Y26_N21
\audio|Audio_Out_Serializer|data_out_shift_reg[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|data_out_shift_reg[24]~0_combout\,
	asdata => \audio|Audio_Out_Serializer|Audio_Out_Left_Channel_FIFO|Sync_FIFO|auto_generated|dpfifo|FIFOram|q_b\(23),
	sclr => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~23_combout\,
	sload => \audio|Audio_Out_Serializer|read_left_channel~combout\,
	ena => \audio|Audio_Out_Serializer|data_out_shift_reg[22]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|data_out_shift_reg\(24));

-- Location: LCCOMB_X63_Y26_N0
\audio|Audio_Out_Serializer|serial_audio_out_data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \audio|Audio_Out_Serializer|serial_audio_out_data~0_combout\ = (\KEY[0]~input_o\ & \audio|Audio_Out_Serializer|data_out_shift_reg\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \audio|Audio_Out_Serializer|data_out_shift_reg\(24),
	combout => \audio|Audio_Out_Serializer|serial_audio_out_data~0_combout\);

-- Location: FF_X63_Y26_N1
\audio|Audio_Out_Serializer|serial_audio_out_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \audio|Audio_Out_Serializer|serial_audio_out_data~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \audio|Audio_Out_Serializer|serial_audio_out_data~q\);

-- Location: IOIBUF_X58_Y0_N22
\CLOCK2_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK2_50,
	o => \CLOCK2_50~input_o\);

-- Location: PLL_4
\cgen|DE_Clock_Generator_Audio|pll\ : cycloneive_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 16,
	c0_initial => 1,
	c0_low => 15,
	c0_mode => "odd",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 31,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 14,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 37037,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 14,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3757,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 330,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \cgen|DE_Clock_Generator_Audio|pll~FBOUT\,
	inclk => \cgen|DE_Clock_Generator_Audio|pll_INCLK_bus\,
	fbout => \cgen|DE_Clock_Generator_Audio|pll~FBOUT\,
	clk => \cgen|DE_Clock_Generator_Audio|pll_CLK_bus\);

-- Location: CLKCTRL_G18
\cgen|DE_Clock_Generator_Audio|_clk0~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cgen|DE_Clock_Generator_Audio|_clk0~clkctrl_outclk\);

-- Location: IOIBUF_X0_Y69_N8
\AUD_ADCLRCK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCLRCK,
	o => \AUD_ADCLRCK~input_o\);

-- Location: IOIBUF_X0_Y68_N1
\AUD_ADCDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUD_ADCDAT,
	o => \AUD_ADCDAT~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(18),
	o => \SW[18]~input_o\);

-- Location: IOIBUF_X1_Y0_N15
\SW[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(19),
	o => \SW[19]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\I2C_SDAT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => I2C_SDAT,
	o => \I2C_SDAT~input_o\);
END structure;


