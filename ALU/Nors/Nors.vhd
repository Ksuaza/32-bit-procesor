library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity Nors is port (
  A     :in std_logic_vector (31 DOWNTO 0);
  B     :in std_logic;
  s     :out std_logic_vector (31 DOWNTO 0)
);
end Nors;

architecture interna of Nors is
begin
bucle: FOR I IN 31 DOWNTO 0 GENERATE

s(I) <= A(I) nor B;

END GENERATE;
end interna;
