library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity demultiplexor8_1 is port (
  A, S0, S1, S2 :in std_logic;
  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 :out std_logic
);
end demultiplexor8_1;

architecture interna of demultiplexor8_1 is

component demultiplexor is port (
  A, s :in std_logic;
  Q0, Q1 :out std_logic
);
end component;
component demultiplexor4_1 is port (
  A, s0, s1 :in std_logic;
  Q0, Q1, Q2, Q3 :out std_logic
);
end component;

signal z0 :std_logic;
signal z1 :std_logic;

begin
DEMULTI1: demultiplexor port map (A, S2, z0, z1);
DEMULTI2: demultiplexor4_1 port map (z0, s0, S1, Q0, Q1, Q2, Q3);
DEMULTI3: demultiplexor4_1 port map (Z1, s0, S1, Q4, Q5, Q6, Q7);
end interna;
--Kevin Suaza