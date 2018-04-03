library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity LD is port (
A : in std_logic_vector (1 downto 0);
D : out std_logic_vector (2 downto 0);
D2 : out std_logic_vector (2 downto 0)
);
end LD;
architecture design_style of LD is
begin
process (A)
begin

if 	A="00" 	then 	D<="011";
elsif 	A="01" 	then 	D<="100";
elsif 	A="10" 	then 	D<="101";
else 			D<="110";
end if;

case A is
when "00" => D2 <= "011";
when "01" => D2 <= "100";
when "10" => D2 <= "101";
when "11" => D2 <= "110";
when others => null;
end case;

end process;
end;



