library ieee;
use ieee.std_logic_1164.all;
entity sumador is
  port(
  a, b, Ci, r :in std_logic;
  S, Co    :out std_logic
  );
end sumador;

architecture interna of sumador is

signal x :std_logic;

begin
x <= b xor r;
S <= (Ci and not x and not A) or (x and not A and not Ci) or (A and not x and not Ci) or (A and x and Ci);
Co <= (Ci and x and not A) or (A and x and not Ci) or (A and not x and Ci) or (A and x and Ci);
end interna;

-- Kevin Suaza