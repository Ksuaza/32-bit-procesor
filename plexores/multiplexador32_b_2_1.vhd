library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiplexador32_b_2_1 is port (
A, B :in std_logic_vector (31 downto 0);
S    :in std_logic;
Q    :out std_logic_vector (31 downto 0)
);
end multiplexador32_b_2_1;

architecture interna of multiplexador32_b_2_1 is

component multiplexador is port (
  A, B, S :in std_logic;
  Q       :out std_logic
);
end component;

begin

ciclo: FOR I IN 31 DOWNTO 0 GENERATE
MULTI: multiplexador port map (A(I), B(I), S, Q(I));
END GENERATE;

end interna;

--Kevin Suaza