library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity demultiplexor is port (
  A, s :in std_logic;
  Q0, Q1 :out std_logic
);
end demultiplexor;

architecture interna of demultiplexor is
begin
Q0<= A and not s;
Q1<= A and S;
end interna;
--Kevin Suaza