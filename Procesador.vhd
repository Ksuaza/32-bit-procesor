library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity Procesador is port (
Reloj :in std_logic;
Cambio :in std_logic;
Salida :out std_logic_vector (31 downto 0);
Co :out std_logic
);
end Procesador;

architecture interna of Procesador is

component Kernel is port (
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
end component;

component Memoria IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (63 DOWNTO 0)
	);
end component;

component Contador IS
	PORT
	(
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		sload		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (9 DOWNTO 0)
	);
end component;

component multiplexador8_1 is port (
  A, B, C, D, E, F, G, H, S0, S1, S2 :in std_logic;
  Q       :out std_logic
);
end component;

component MapaDeMemoria is port (
Data :in std_logic_vector (31 downto 0);
Direccion :in std_logic_vector (10 downto 0);
Clk, W :in std_logic;
Q :out std_logic_vector (31 downto 0)
);
end component;

component multiplexador32_b_2_1 is port (
A, B :in std_logic_vector (31 downto 0);
S    :in std_logic;
Q    :out std_logic_vector (31 downto 0)
);
end component;

signal puente :std_logic_vector (9 downto 0);
signal x :std_logic_vector (63 downto 0);
signal Zi :std_logic;
signal Pi :std_logic;
signal r :std_logic;
signal t :std_logic;
signal SalidaVuelta :std_logic_vector (31 downto 0);
signal Intercambio :std_logic_vector (31 downto 0);

signal v1 :std_logic;
signal v2 :std_logic;
signal v3 :std_logic;
signal v4 :std_logic;
signal v5 :std_logic;

signal Silitor :std_logic;
signal Salidita : std_logic_vector (31 downto 0);
signal ErrorChimbo : std_logic_vector (31 downto 0);

begin
v1 <= not Zi;
v2 <= Pi and not Zi;
v3 <= not Zi and not Pi;
v4 <= Pi or Zi;
v5 <= Pi xnor Zi;

kernel0 : kernel port map (x(31 downto 0), x(32), x(35 downto 33), Co, Zi, Pi, x(46), x(45 downto 43), x(42 downto 40), x(39 downto 37), x(36), Reloj, x(63), SalidaVuelta, Intercambio);
Mem0 : Memoria port map (Puente, Cambio, x);
Cont0 : Contador port map (Reloj, x(9 downto 0), t, puente);
muxi : multiplexador8_1 port map(Zi, v1, v2, v3, v4, v5, '1', '0', x(47), x(48), x(49), r);
Mapota : MapaDeMemoria port map (SalidaVuelta, Salidita(10 downto 0), Cambio, x(62), Intercambio);
Mux2 : multiplexador32_b_2_1 port map (ErrorChimbo, SalidaVuelta, Silitor, Salidita);
t <= r and x(50);
Salida <= Intercambio;
Silitor<= x(49) and x(48) and x(47);
ErrorChimbo<= "000000000000000000000" & x(61 downto 51);

end interna;

-- Kevin Suaza