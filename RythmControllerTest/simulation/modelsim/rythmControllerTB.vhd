LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.STD_LOGIC_SIGNED.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY rythmControllerTB  IS 
  GENERIC (
    Pattern_size  : INTEGER   := 16 ;  
    BPM_max  : INTEGER   := 240 ;  
    BPM_stepsize  : INTEGER   := 10 ;  
    BPM_min  : INTEGER   := 60 ); 
END ; 
 
ARCHITECTURE rythmControllerTB_arch OF rythmControllerTB IS
  SIGNAL sample4_en   :  STD_LOGIC  ; 
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL sample1_pattern   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL sample1_en   :  STD_LOGIC  ; 
  SIGNAL sample2_pattern   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL sample2_en   :  STD_LOGIC  ; 
  SIGNAL sample3_pattern   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL sample3_en   :  STD_LOGIC  ; 
  SIGNAL sample4_pattern   :  std_logic_vector (15 downto 0)  ; 
  SIGNAL BPM   :  std_logic_vector (15 downto 0)  ; 
  COMPONENT RythmController  
    GENERIC ( 
      Pattern_size  : INTEGER ; 
      BPM_max  : INTEGER ; 
      BPM_stepsize  : INTEGER ; 
      BPM_min  : INTEGER  );  
    PORT ( 
      sample4_en  : out STD_LOGIC ; 
      CLOCK_50  : in STD_LOGIC ; 
      sample1_pattern  : in std_logic_vector (15 downto 0) ; 
      sample1_en  : out STD_LOGIC ; 
      sample2_pattern  : in std_logic_vector (15 downto 0) ; 
      sample2_en  : out STD_LOGIC ; 
      sample3_pattern  : in std_logic_vector (15 downto 0) ; 
      sample3_en  : out STD_LOGIC ; 
      sample4_pattern  : in std_logic_vector (15 downto 0) ; 
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
      sample4_en   => sample4_en  ,
      CLOCK_50   => CLOCK_50  ,
      sample1_pattern   => sample1_pattern  ,
      sample1_en   => sample1_en  ,
      sample2_pattern   => sample2_pattern  ,
      sample2_en   => sample2_en  ,
      sample3_pattern   => sample3_pattern  ,
      sample3_en   => sample3_en  ,
      sample4_pattern   => sample4_pattern  ,
      BPM   => BPM   ) ; 



-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 bpm  <= "0000000000111100"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 sample1_pattern  <= "1000100010001000"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 sample2_pattern  <= "0100010001000100"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 sample3_pattern  <= "0010001000100010"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 sample4_pattern  <= "0001000100010001"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 10 ns
  Process
	Begin
	for Z in 1 to 50
	loop
	    clock_50  <= '1'  ;
	   wait for 10 ns ;
	    clock_50  <= '0'  ;
	   wait for 10 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;
END;
