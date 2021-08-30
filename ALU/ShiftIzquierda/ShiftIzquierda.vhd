library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ShiftIzquierda is port (
 A :in std_logic_vector (31 downto 0);
 S :out std_logic_vector (31 downto 0)
);
end ShiftIzquierda;

architecture interna of ShiftIzquierda is
begin

S<="0" & A(31 downto 1);
end interna;

-- Kevin Suaza