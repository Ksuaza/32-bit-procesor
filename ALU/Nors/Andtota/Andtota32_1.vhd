library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity Andtota32_1 is port (
  A      :in std_logic_vector (31 downto 0);
  s      :out std_logic
);
end Andtota32_1;

architecture interna of Andtota32_1 is

component Andtota is port (
  A, B   :in std_logic;
  s      :out std_logic
);
end component;

signal X :std_logic_vector (29 downto 0);

begin

Ant0 : Andtota port map (A(0), A(1), X(0));
Ant1 : Andtota port map (A(2), A(3), X(1));
Ant2 : Andtota port map (A(4), A(5), X(2));
Ant3 : Andtota port map (A(6), A(7), X(3));
Ant4 : Andtota port map (A(8), A(9), X(4));
Ant5 : Andtota port map (A(10), A(11), X(5));
Ant6 : Andtota port map (A(12), A(13), X(6));
Ant7 : Andtota port map (A(14), A(15), X(7));
Ant8 : Andtota port map (A(16), A(17), X(8));
Ant9 : Andtota port map (A(18), A(19), X(9));
Ant10 : Andtota port map (A(20), A(21), X(10));
Ant11 : Andtota port map (A(22), A(23), X(11));
Ant12 : Andtota port map (A(24), A(25), X(12));
Ant13 : Andtota port map (A(26), A(27), X(13));
Ant14 : Andtota port map (A(28), A(29), X(14));
Ant15 : Andtota port map (A(30), A(31), X(15));
Ant16 : Andtota port map (x(0), x(1), x(16));
Ant17 : Andtota port map (x(2), x(3), x(17));
Ant18 : Andtota port map (x(4), x(5), x(18));
Ant19 : Andtota port map (x(6), x(7), x(19));
Ant20 : Andtota port map (x(8), x(9), x(20));
Ant21 : Andtota port map (x(10), x(11), x(21));
Ant22 : Andtota port map (x(12), x(13), x(22));
Ant23 : Andtota port map (x(14), x(15), x(23));
Ant24 : Andtota port map (x(16), x(17), x(24));
Ant25 : Andtota port map (x(18), x(19), x(25));
Ant26 : Andtota port map (x(20), x(21), x(26));
Ant27 : Andtota port map (x(22), x(23), x(27));
Ant28 : Andtota port map (x(24), x(25), x(28));
Ant29 : Andtota port map (x(26), x(27), x(29));
Ant30 : Andtota port map (x(28), x(29), s);

end interna;
