library ieee;
use ieee.std_logic_1164.all;

entity multiplexador is port (
  A, B, S :in std_logic;
  Q       :out std_logic
);
end multiplexador;

architecture interna of multiplexador is
begin
Q<= (B and S) or (A and not S);
end interna;