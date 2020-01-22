library ieee;
use ieee.std_logic_1164.all;

package sine_package is

  constant max_table_value: integer := 16777216;
  subtype table_value_type is integer range 0 to max_table_value;

  constant max_table_index: integer := 11;
  subtype table_index_type is integer range 0 to max_table_index;

  subtype sine_vector_type is std_logic_vector( 23 downto 0 );

  function get_table_value (table_index: table_index_type) return table_value_type;

end;

package body sine_package is

  function get_table_value (table_index: table_index_type) return table_value_type is
    variable table_value: table_value_type;
  begin
    case table_index is
      when 0 =>
        table_value :=  8388608;
      when 1 =>
        table_value := 12582911;
      when 2 =>
        table_value := 15653355;
      when 3 =>
        table_value := 16777215;
      when 4 =>
        table_value := 15653355;
      when 5 =>
        table_value := 12582911;
      when 6 =>
        table_value := 8388608;
      when 7 =>
        table_value := 4194304;
      when 8 =>
        table_value := 1123860;
      when 9 =>
        table_value := 0;
      when 10 =>
        table_value := 1123860;
      when 11 =>
        table_value := 4194304;
  
    end case;
    return table_value;
  end;

end;