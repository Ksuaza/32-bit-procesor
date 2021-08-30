library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity demultiplexor4_1 is port (
  A, s0, s1 :in std_logic;
  Q0, Q1, Q2, Q3 :out std_logic
);
end demultiplexor4_1;

architecture interna of demultiplexor4_1 is

component demultiplexor is port (
  A, s :in std_logic;
  Q0, Q1 :out std_logic
);
end component;

signal z0 :std_logic;
signal z1 :std_logic;

begin
DEMULTI1: demultiplexor port map (A, s1, z0, z1);
DEMULTI2: demultiplexor port map (z0, s0, Q0, Q1);
DEMULTI3: demultiplexor port map (Z1, s0, Q2, Q3);
end interna;
--Kevin Suaza