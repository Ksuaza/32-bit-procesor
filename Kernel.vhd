library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Kernel is port (
Di :in std_logic_vector (31 downto 0);
Sdi :in std_logic;
Oper :in std_logic_vector (2 downto 0);
Co, Z, Posi :out std_logic;
Ci :in std_logic;
Fuente1, Fuente2, Destino :in std_logic_vector (2 downto 0);
W, Reloj ,SelectorIn   :in std_logic;
Salida :out std_logic_vector (31 downto 0);
Datos :in std_logic_vector (31 downto 0)
);
end Kernel;

architecture interna of Kernel is

component UnidadLogica is port(
  A, B :in std_logic_vector (31 downto 0);
  Res  :out std_logic_vector (31 downto 0);
  Oper :in std_logic_vector (2 downto 0);
  co, Z, Posi   :out std_logic;
  Ci   :in std_logic
);
end component;

component BancoDeRegistros is port (
  Data :in std_logic_vector (31 downto 0) := x"00000000";
  Fuente1, Fuente2, Destino :in std_logic_vector (2 downto 0);
  W    :in std_logic;
  A, B :out std_logic_vector (31 downto 0)
);
end component;

component multiplexador32_b_2_1 is port (
A, B :in std_logic_vector (31 downto 0);
S    :in std_logic;
Q    :out std_logic_vector (31 downto 0)
);
end component;

signal T0 :std_logic_vector (31 downto 0);
signal x0 :std_logic_vector (31 downto 0);
signal x1 :std_logic_vector (31 downto 0);
signal x2 :std_logic_vector (31 downto 0);
signal x3 :std_logic_vector (31 downto 0);
signal m  :std_logic;

begin

m<= W and Reloj;
BancoR: BancoDeRegistros port map (T0, Fuente1, Fuente2, Destino, m, x1, x2);
Alu0: UnidadLogica port map (x1, x3, x0, Oper, Co, Z, Posi, Ci);
DDI: multiplexador32_b_2_1 port map (x2, Di, sdi, x3);
MinMapa: multiplexador32_b_2_1 port map(x0, Datos, SelectorIn, T0);
Salida<= x0;

end interna;

-- Kevin Suaza