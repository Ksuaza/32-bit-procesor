library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity BancoDeRegistros is port (
  Data :in std_logic_vector (31 downto 0) := x"00000000";
  Fuente1, Fuente2, Destino :in std_logic_vector (2 downto 0);
  W    :in std_logic;
  A, B :out std_logic_vector (31 downto 0)
);
end BancoDeRegistros;

architecture interna of BancoDeRegistros is

component demultiplexor8_1 is port (
  A, S0, S1, S2 :in std_logic;
  Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7 :out std_logic
);
end component;

component registro is port (
  D :in std_logic_vector (31 downto 0);
  EN :in std_logic;
  Q :out std_logic_vector (31 downto 0)
);
end component;

component multiplexador32_b is port (
  A, B, C, D, E, F, G, H :in std_logic_vector (31 downto 0);
  S2, s1, s0     :in std_logic;
  Q       :out std_logic_vector (31 downto 0)
);
end component;

signal x0 :std_logic;
signal x1 :std_logic;
signal x2 :std_logic;
signal x3 :std_logic;
signal x4 :std_logic;
signal x5 :std_logic;
signal x6 :std_logic;
signal x7 :std_logic;
signal z0 :std_logic_vector (31 downto 0);
signal z1 :std_logic_vector (31 downto 0);
signal z2 :std_logic_vector (31 downto 0);
signal z3 :std_logic_vector (31 downto 0);
signal z4 :std_logic_vector (31 downto 0);
signal z5 :std_logic_vector (31 downto 0);
signal z6 :std_logic_vector (31 downto 0);
signal z7 :std_logic_vector (31 downto 0);

begin

banco0: registro port map (Data,x0,z0);
banco1: registro port map (Data,x1,z1);
banco2: registro port map (Data,x2,z2);
banco3: registro port map (Data,x3,z3);
banco4: registro port map (Data,x4,z4);
banco5: registro port map (Data,x5,z5);
banco6: registro port map (Data,x6,z6);
banco7: registro port map (Data,x7,z7);

multi0: multiplexador32_b port map (z0, z1, z2, z3, z4, z5, z6, z7, Fuente1(2), Fuente1(1), Fuente1(0), A);
multi1: multiplexador32_b port map (z0, z1, z2, z3, z4, z5, z6, z7, Fuente2(2), Fuente2(1), Fuente2(0), B);

demulti0: demultiplexor8_1 port map (W, Destino(0), Destino(1), Destino(2), x0, x1, x2, x3, x4, x5, x6, x7);
end interna;
-- Kevin Suaza