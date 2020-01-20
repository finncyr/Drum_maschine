LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.STD_LOGIC_SIGNED.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY sampleMixerTB  IS 
END ; 
 
ARCHITECTURE sampleMixerTB_arch OF sampleMixerTB IS
  SIGNAL synth3_out   :  std_logic_vector (23 downto 0)  ; 
  SIGNAL sample4_en   :  STD_LOGIC  ; 
  SIGNAL CLOCK_50   :  STD_LOGIC  ; 
  SIGNAL aud_out   :  std_logic_vector (23 downto 0)  ; 
  SIGNAL synth4_out   :  std_logic_vector (23 downto 0)  ; 
  SIGNAL sample1_en   :  STD_LOGIC  ; 
  SIGNAL synth1_out   :  std_logic_vector (23 downto 0)  ; 
  SIGNAL sample2_en   :  STD_LOGIC  ; 
  SIGNAL synth2_out   :  std_logic_vector (23 downto 0)  ; 
  SIGNAL sample3_en   :  STD_LOGIC  ; 
  COMPONENT sampleMixer  
    PORT ( 
      synth3_out  : in std_logic_vector (23 downto 0) ; 
      sample4_en  : in STD_LOGIC ; 
      CLOCK_50  : in STD_LOGIC ; 
      aud_out  : out std_logic_vector (23 downto 0) ; 
      synth4_out  : in std_logic_vector (23 downto 0) ; 
      sample1_en  : in STD_LOGIC ; 
      synth1_out  : in std_logic_vector (23 downto 0) ; 
      sample2_en  : in STD_LOGIC ; 
      synth2_out  : in std_logic_vector (23 downto 0) ; 
      sample3_en  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : sampleMixer  
    PORT MAP ( 
      synth3_out   => synth3_out  ,
      sample4_en   => sample4_en  ,
      CLOCK_50   => CLOCK_50  ,
      aud_out   => aud_out  ,
      synth4_out   => synth4_out  ,
      sample1_en   => sample1_en  ,
      synth1_out   => synth1_out  ,
      sample2_en   => sample2_en  ,
      synth2_out   => synth2_out  ,
      sample3_en   => sample3_en   ) ; 



-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 1 ns
  Process
	Begin
	for Z in 1 to 500
	loop
	    clock_50  <= '1'  ;
	   wait for 1 ns ;
	    clock_50  <= '0'  ;
	   wait for 1 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 1 ns
  Process
	Begin
	for Z in 1 to 500
	loop
	    sample1_en  <= '1'  ;
	   wait for 1 ns ;
	    sample1_en  <= '0'  ;
	   wait for 1 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 2 ns
  Process
	Begin
	for Z in 1 to 250
	loop
	    sample2_en  <= '1'  ;
	   wait for 2 ns ;
	    sample2_en  <= '0'  ;
	   wait for 2 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 4 ns
  Process
	Begin
	for Z in 1 to 125
	loop
	    sample3_en  <= '1'  ;
	   wait for 4 ns ;
	    sample3_en  <= '0'  ;
	   wait for 4 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 8 ns
  Process
	Begin
	for Z in 1 to 62
	loop
	    sample4_en  <= '1'  ;
	   wait for 8 ns ;
	    sample4_en  <= '0'  ;
	   wait for 8 ns ;
-- 992 ns, repeat pattern in loop.
	end  loop;
	    sample4_en  <= '1'  ;
	   wait for 8 ns ;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 1 ns
  Process
	Begin
	for Z in 1 to 500
	loop
	    synth1_out  <= "100000000000000000000000"  ;
	   wait for 1 ns ;
	    synth1_out  <= "000000000000000000000000"  ;
	   wait for 1 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 2 ns
  Process
	Begin
	for Z in 1 to 250
	loop
	    synth2_out  <= "100000000000000000000000"  ;
	   wait for 2 ns ;
	    synth2_out  <= "000000000000000000000000"  ;
	   wait for 2 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 4 ns
  Process
	Begin
	for Z in 1 to 125
	loop
	    synth3_out  <= "100000000000000000000000"  ;
	   wait for 4 ns ;
	    synth3_out  <= "000000000000000000000000"  ;
	   wait for 4 ns ;
-- 1 us, repeat pattern in loop.
	end  loop;
	wait;
 End Process;


-- "Repeater Pattern" Repeat Forever
-- Start Time = 0 ns, End Time = 1 us, Period = 8 ns
  Process
	Begin
	for Z in 1 to 62
	loop
	    synth4_out  <= "100000000000000000000000"  ;
	   wait for 8 ns ;
	    synth4_out  <= "000000000000000000000000"  ;
	   wait for 8 ns ;
-- 992 ns, repeat pattern in loop.
	end  loop;
	    synth4_out  <= "100000000000000000000000"  ;
	   wait for 8 ns ;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;
END;
