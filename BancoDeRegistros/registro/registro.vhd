library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity registro is port (
  D :in std_logic_vector (31 downto 0);
  EN :in std_logic;
  Q :out std_logic_vector (31 downto 0)
);
end registro;

architecture interna of registro is

component flipFlop is port (
D, Clk :in std_logic;
Q, Qn  :out std_logic
);
end component;

signal X :std_logic_vector (31 downto 0) ;

begin

ciclo: FOR I IN 31 DOWNTO 0 GENERATE
flip: flipFlop port map (D(I), EN, Q(I), X(I));
END GENERATE;

end interna;
--Kevin Suaza