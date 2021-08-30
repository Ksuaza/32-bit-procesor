library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity UnidadLogica is port (
  A, B :in std_logic_vector (31 downto 0);
  Res  :out std_logic_vector (31 downto 0);
  Oper :in std_logic_vector (2 downto 0);
  co, Z, Posi   :out std_logic;
  Ci   :in std_logic
);
end UnidadLogica;

architecture interna of UnidadLogica is

component multiplexador32_b is port (
  A, B, C, D, E, F, G, H :in std_logic_vector (31 downto 0);
  S2, s1, s0     :in std_logic;
  Q       :out std_logic_vector (31 downto 0)
);
end component;

component Ors is port (
  i0, i1 :in std_logic_vector (31 DOWNTO 0);
   s    :out std_logic_vector (31 DOWNTO 0)
);
end component;

component Ands is port (
  i0, i1 :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic_vector (31 DOWNTO 0)
);
end component;

component sumadorRestador is port (
  q, p  :in std_logic_vector (31 downto 0);
  s     :out std_logic_vector (31 downto 0);
  c0     :out std_logic;
  c1     :in std_logic
);
end component;

component Xors is port (
A, B :in std_logic_vector (31 downto 0);
S    :out std_logic_vector (31 downto 0)
);
end component;

component ShiftDerecha is port (
  A :in std_logic_vector (31 downto 0);
  S :out std_logic_vector (31 downto 0)
);
end component;

component ShiftIzquierda is port (
 A :in std_logic_vector (31 downto 0);
 S :out std_logic_vector (31 downto 0)
);
end component;

component Nots is port (
  i0    :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic_vector (31 DOWNTO 0)
);
end component;

component Zero is port (
  A     :in std_logic_vector (31 DOWNTO 0);
  s     :out std_logic
);
end component;



signal Conexion0 :std_logic_vector (31 downto 0);
signal Conexion1 :std_logic_vector (31 downto 0);
signal Conexion2 :std_logic_vector (31 downto 0);
signal Conexion3 :std_logic_vector (31 downto 0);
signal Conexion4 :std_logic_vector (31 downto 0);
signal Conexion5 :std_logic_vector (31 downto 0);
signal Conexion6 :std_logic_vector (31 downto 0);
signal v :std_logic_vector (31 downto 0);

begin

plexor: multiplexador32_b port map (Conexion0, Conexion1, Conexion2, Conexion3, Conexion4, Conexion5, Conexion6, B, Oper(2), Oper(1), Oper(0), v);
sumador: sumadorRestador port map (A, B, Conexion0, co, Ci);
and0: Ands port map (A, B, Conexion1);
or0: Ors port map (A, B, Conexion2);
not0: Nots port map (A, Conexion3);
Xor0: Xors port map (A, B, Conexion4);
shift0: ShiftDerecha port map (A, Conexion5);
shift1: ShiftIzquierda port map (A, Conexion6);
bandera1: Zero port map (v, Z);
Posi <= not v(31);
Res <= v;

end interna;
-- Kevin Suaza