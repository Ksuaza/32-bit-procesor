library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_1164.all;

entity Zero is port (
  A     :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic
);

end Zero;

architecture interna of Zero is

component Nors is port (
  A     :in std_logic_vector (31 DOWNTO 0);
  B     :in std_logic;
  s     :out std_logic_vector (31 DOWNTO 0)
);
end component;

component Andtota32_1 is port (
  A      :in std_logic_vector (31 downto 0);
  s      :out std_logic
);
end component;

signal x: std_logic_vector (31 downto 0);
signal Z: std_logic;

begin
z <= '0' ;
Norero: Nors port map (A, Z, X);
Andero: Andtota32_1 port map(X, S);

end interna;
