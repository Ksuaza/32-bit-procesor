library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity ands is port (
  i0, i1 :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic_vector (31 DOWNTO 0)
);

end ands;

architecture interna of ands is
begin
bucle: FOR I IN 31 DOWNTO 0 GENERATE

s(I) <= i0(I) and i1(I);

END GENERATE;
end interna;
