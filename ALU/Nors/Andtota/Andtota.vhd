library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity Andtota is port (
  A, B   :in std_logic;
  s      :out std_logic
);

end Andtota;

architecture interna of Andtota is
begin
s <= A and B;
end interna;
