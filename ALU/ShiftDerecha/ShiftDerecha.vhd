library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ShiftDerecha is port (
  A :in std_logic_vector (31 downto 0);
  S :out std_logic_vector (31 downto 0)
);
end ShiftDerecha;

architecture interna of ShiftDerecha is
begin

S<= A(30 downto 0) & "0";
end interna;

-- Kevin Suaza