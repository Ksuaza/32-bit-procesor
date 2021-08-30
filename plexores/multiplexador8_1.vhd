library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiplexador8_1 is port (
  A, B, C, D, E, F, G, H, S0, S1, S2 :in std_logic;
  Q       :out std_logic
);
end multiplexador8_1;

architecture interna of multiplexador8_1 is

component multiplexador4_1 is port (
A, B, C, D, S0, S1 :in std_logic;
Q                  :out std_logic
);
end component;
component multiplexador is port (
  A, B, S :in std_logic;
  Q       :out std_logic
);
end component;

signal z0 :std_logic;
signal z1 :std_logic;

begin
MULTI1:multiplexador4_1 port map (A, B, C, D, S0, S1, z0);
MULTI2:multiplexador4_1 port map (E, F, G, H, S0, S1, z1);
MULTI3:multiplexador port map (z0, z1, S2, Q);
end interna;