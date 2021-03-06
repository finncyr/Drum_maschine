LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.STD_LOGIC_SIGNED.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY rythmcontroller_tb  IS 
  GENERIC (
    Pattern_size  : INTEGER   := 16 ;  
    BPM_max  : INTEGER   := 240 ;  
    BPM_stepsize  : INTEGER   := 10 ;  
    BPM_min  : INTEGER   := 60 ); 
END ; 
 
ARCHITECTURE rythmcontroller_tb_arch OF rythmcontroller_tb IS
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL sample1_pattern   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL sample1_en   :  STD_LOGIC  ; 
  SIGNAL BPM   :  std_logic_vector (15 downto 0)  ; 
  COMPONENT RythmController  
    GENERIC ( 
      Pattern_size  : INTEGER ; 
      BPM_max  : INTEGER ; 
      BPM_stepsize  : INTEGER ; 
      BPM_min  : INTEGER  );  
    PORT ( 
      CLOCK_50  : in STD_LOGIC ; 
      sample1_pattern  : in std_logic_vector (15 downto 0) ; 
      sample1_en  : out STD_LOGIC ; 
      BPM  : in std_logic_vector (15 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : RythmController  
    GENERIC MAP ( 
      Pattern_size  => Pattern_size  ,
      BPM_max  => BPM_max  ,
      BPM_stepsize  => BPM_stepsize  ,
      BPM_min  => BPM_min   )
    PORT MAP ( 
      CLOCK_50   => CLOCK_50  ,
      sample1_pattern   => sample1_pattern  ,
      sample1_en   => sample1_en  ,
      BPM   => BPM   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 bpm  <= "0000000000111100"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 ms, Period = 0 ns
  Process
	Begin
	 sample1_pattern  <= "1000100010001000"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 ms, Period = 20 us
  Process
	Begin
	 clock_50  <= '1'  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
 
 CLOCK_50 <= NOT CLOCK_50 after 20 us;
END;
