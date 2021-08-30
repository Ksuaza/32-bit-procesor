library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity MapaDeMemoria is port (
Data :in std_logic_vector (31 downto 0);
Direccion :in std_logic_vector (10 downto 0);
Clk, W :in std_logic;
Q :out std_logic_vector (31 downto 0)
);
end MapaDeMemoria;

architecture interna of MapaDeMemoria is

component Ramsota IS PORT (
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
);
END component;

component Salidas is port (
 Data :in std_logic_vector (31 downto 0);
 Direccion :in std_logic_vector (2 downto 0);
 W :in std_logic
);
end component;

component Entradas is port (
Q :out std_logic_vector (31 downto 0)
);
end component;

component multiplexador32_b_2_1 is port (
A, B :in std_logic_vector (31 downto 0);
S    :in std_logic;
Q    :out std_logic_vector (31 downto 0)
);
end component;

component demultiplexor is port (
  A, s :in std_logic;
  Q0, Q1 :out std_logic
);
end component;

signal R0 :std_logic;
signal R1 :std_logic_vector (31 downto 0);
signal I :std_logic_vector (31 downto 0);
signal O :std_logic;
signal o0 :std_logic;

begin
O<= O0 and not Direccion(9);
Ram1: Ramsota port map (Direccion(9 downto 0), Clk, Data, R0, R1);
Out1: Salidas port map (Data, Direccion(2 downto 0), O);
In1: Entradas port map (I);
Multi1: multiplexador32_b_2_1 port map (R1, I, Direccion(10), Q);
Demulti1: demultiplexor port map (W, Direccion(10), R0, o0);

end interna;

--Kevin Suaza