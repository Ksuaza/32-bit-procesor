library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Xors is port (
A, B :in std_logic_vector (31 downto 0);
S    :out std_logic_vector (31 downto 0)
);
end Xors;

architecture interna of Xors is
begin

bucle: FOR I IN 31 DOWNTO 0 GENERATE
S(I)<= A(I) xor B(I);
END GENERATE;

end interna;

-- Kevin Suaza