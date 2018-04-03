library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal r_SIG3   : std_logic := '0';
  signal r_SIG4   : std_logic := '0';
  signal w_RESULT1 : std_logic;
-- naudoti 4ARBA vhd
  component orr is
    port (
      i1    : in  std_logic;
      i2    : in  std_logic;
      i3    : in  std_logic;
      i4    : in  std_logic;
      o1 : out std_logic
	  );
  end component orr;
--behin behave
begin

  and_gate_INST : orr
    port map (
      i1    => r_SIG1,
      i2    => r_SIG2,
      i3    => r_SIG3,
      i4    => r_SIG4,
	  o1 =>w_RESULT1
      );
	  
	  -- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
    r_SIG4 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '0';
    r_SIG4 <= '0';
    wait for 10 ns;
    r_SIG1 <= '0';
    r_SIG2 <= '0';
    r_SIG3 <= '1';
    r_SIG4 <= '1';
    wait for 10 ns;
    r_SIG1 <= '1';
    r_SIG2 <= '1';
    r_SIG3 <= '1';
    r_SIG4 <= '1';
    wait for 10 ns;
  end process;

end behave;
