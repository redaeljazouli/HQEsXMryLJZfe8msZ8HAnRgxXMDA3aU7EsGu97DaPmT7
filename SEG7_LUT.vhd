library ieee;
use ieee.std_logic_1164.all;

entity SEG7_LUT is port(
DIGIT: in std_logic_vector(3 downto 0);
HEX: out std_logic_vector(6 downto 0));
end SEG7_LUT;

architecture one of SEG7_LUT is

begin

process(DIGIT)
begin
case DIGIT is
when "0000" => HEX<="1000000"; -- 0
when "0001" => HEX<="1111001"; -- 1
when "0010" => HEX<="0100100"; -- 2
when "0011" => HEX<="0110000"; -- 3
when "0100" => HEX<="0011001"; -- 4
when "0101" => HEX<="0010010"; -- 5
when "0110" => HEX<="0000010"; -- 6
when "0111" => HEX<="1111000"; -- 7
when "1000" => HEX<="0000000"; -- 8
when "1001" => HEX<="0011000"; -- 9
when "1010" => HEX<="0001000"; -- A
when "1011" => HEX<="0000011"; -- B
when "1100" => HEX<="1000110"; -- C
when "1101" => HEX<="0100001"; -- D
when "1110" => HEX<="0000110"; -- E
when "1111" => HEX<="0001110"; -- F
when others => 
end case;
end process;

end one;







