library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiplexador32_b is port (
  A, B, C, D, E, F, G, H :in std_logic_vector (31 downto 0);
  S2, s1, s0     :in std_logic;
  Q       :out std_logic_vector (31 downto 0)
);
end multiplexador32_b;

architecture interna of multiplexador32_b is

component multiplexador8_1 is port (
  A, B, C, D, E, F, G, H, S0, S1, S2 :in std_logic;
  Q       :out std_logic
);
end component;
begin
ciclo: FOR I IN 31 DOWNTO 0 GENERATE
MULTItotal: multiplexador8_1 port map (A(I), B(I), C(I), D(I), E(I), F(I), G(I), H(I), s0, s1, S2, Q(I));
END GENERATE;
end interna;