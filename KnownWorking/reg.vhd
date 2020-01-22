library ieee;
use ieee.std_logic_1164.all;
entity reg is
  generic (N: integer := 24);
  port(clk, reset, w : in std_logic;
       d: in std_logic_vector(N-1 downto 0);
       q: out std_logic_vector(N-1 downto 0));
end reg;

architecture behv of reg is
begin
  process(clk, reset, w, d) is
    variable state: std_logic_vector(N-1 downto 0);
  begin
    if reset = '1' then
      state := (others => '0');
    elsif rising_edge(clk) then
      if w = '1' then
        state := d;
      end if;
    end if;
    q <= state;
  end process;
end behv;
