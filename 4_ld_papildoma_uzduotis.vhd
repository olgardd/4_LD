library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity orr is port (
i1, i2, i3, i4: in std_logic;
o1: out std_logic
);
end orr;

architecture dataflow of orr is
begin
o1 <=((i1 or i2)or(i3 or i4));
end dataflow;


library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity LD is port (
A, B, C, D : in std_logic;
F : out std_logic
);
end LD;

architecture structural of LD is
	signal AA, BB, CC, DD: std_logic;
	
component orr is port (
i1, i2, i3, i4: in std_logic;
o1: out std_logic
);
end component;


begin
C1: orr port map (i1 => AA, i2 => BB, i3 => CC, i4 => DD, o1 => F);
end structural;