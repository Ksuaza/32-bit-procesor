library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity flipFlop is port (
D, Clk :in std_logic;
Q, Qn  :out std_logic
);
end flipFlop;

architecture interna of flipFlop is

component latchD is port (
  d, en :in std_logic;
  q, qn :out std_logic
);
end component;

signal x: std_logic :='0';
signal z: std_logic :='1';
signal y: std_logic;

begin
--y <= not Clk;
--latch1: latchD port map (D, y, x, z);
--latch2: latchD port map (x, Clk, Q, Qn);

process (Clk)
begin
	if Clk' event and Clk= '1' then
		x <= D;
	end if;
end process;
Q <= x;
Qn <= not x;

end interna;

--Kevin Suaza