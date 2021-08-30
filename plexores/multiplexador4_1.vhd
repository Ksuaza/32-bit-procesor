library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity multiplexador4_1 is port (
  A, B, C, D, S0, S1 :in std_logic;
  Q       :out std_logic
);
end multiplexador4_1;

architecture interna of multiplexador4_1 is

component multiplexador is port (
  A, B, S :in std_logic;
  Q       :out std_logic
);
end component;

signal z0 :std_logic;
signal z1 :std_logic;

begin
MULTI1:multiplexador port map (A, B, S0, z0);
MULTI2:multiplexador port map (C, D, S0, z1);
MULTI3:multiplexador port map (z0, z1, S1, Q);
end interna;