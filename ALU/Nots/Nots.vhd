library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity nots is port (
  i0    :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic_vector (31 DOWNTO 0)
);

end nots;

architecture interna of nots is
begin
bucle: FOR I IN 31 DOWNTO 0 GENERATE

s(I) <= not i0(I);

END GENERATE;
end interna;
