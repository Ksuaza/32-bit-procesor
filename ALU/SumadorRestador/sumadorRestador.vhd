library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity sumadorRestador is  port(
  q, p  :in std_logic_vector (31 downto 0);
  s     :out std_logic_vector (31 downto 0);
  c0     :out std_logic;
  c1     :in std_logic
);
end sumadorRestador;

architecture interna of sumadorRestador is

component sumador is port (
  a, b, Ci, r :in std_logic;
  S, Co    :out std_logic
);
end component;

signal w0 :std_logic;
signal w1 :std_logic;
signal w2 :std_logic;
signal w3 :std_logic;
signal w4 :std_logic;
signal w5 :std_logic;
signal w6 :std_logic;
signal w7 :std_logic;
signal w8 :std_logic;
signal w9 :std_logic;
signal w10 :std_logic;
signal w11 :std_logic;
signal w12 :std_logic;
signal w13 :std_logic;
signal w14 :std_logic;
signal w15 :std_logic;
signal w16 :std_logic;
signal w17 :std_logic;
signal w18 :std_logic;
signal w19 :std_logic;
signal w20 :std_logic;
signal w21 :std_logic;
signal w22 :std_logic;
signal w23 :std_logic;
signal w24 :std_logic;
signal w25 :std_logic;
signal w26 :std_logic;
signal w27 :std_logic;
signal w28 :std_logic;
signal w29 :std_logic;
signal w30 :std_logic;

begin

SUM0: sumador port map (q(0), p(0), c1, c1, s(0), w0);
SUM1: sumador port map (q(1), p(1), w0, c1, s(1), w1);
SUM2: sumador port map (q(2), p(2), w1, c1, s(2), w2);
SUM3: sumador port map (q(3), p(3), w2, c1, s(3), w3);
SUM4: sumador port map (q(4), p(4), w3, c1, s(4), w4);
SUM5: sumador port map (q(5), p(5), w4, c1, s(5), w5);
SUM6: sumador port map (q(6), p(6), w5, c1, s(6), w6);
SUM7: sumador port map (q(7), p(7), w6, c1, s(7), w7);
SUM8: sumador port map (q(8), p(8), w7, c1, s(8), w8);
SUM9: sumador port map (q(9), p(9), w8, c1, s(9), w9);
SUM10: sumador port map (q(10), p(10), w9, c1, s(10), w10);
SUM11: sumador port map (q(11), p(11), w10, c1, s(11), w11);
SUM12: sumador port map (q(12), p(12), w11, c1, s(12), w12);
SUM13: sumador port map (q(13), p(13), w12, c1, s(13), w13);
SUM14: sumador port map (q(14), p(14), w13, c1, s(14), w14);
SUM15: sumador port map (q(15), p(15), w14, c1, s(15), w15);
SUM16: sumador port map (q(16), p(16), w15, c1, s(16), w16);
SUM17: sumador port map (q(17), p(17), w16, c1, s(17), w17);
SUM18: sumador port map (q(18), p(18), w17, c1, s(18), w18);
SUM19: sumador port map (q(19), p(19), w18, c1, s(19), w19);
SUM20: sumador port map (q(20), p(20), w19, c1, s(20), w20);
SUM21: sumador port map (q(21), p(21), w20, c1, s(21), w21);
SUM22: sumador port map (q(22), p(22), w21, c1, s(22), w22);
SUM23: sumador port map (q(23), p(23), w22, c1, s(23), w23);
SUM24: sumador port map (q(24), p(24), w23, c1, s(24), w24);
SUM25: sumador port map (q(25), p(25), w24, c1, s(25), w25);
SUM26: sumador port map (q(26), p(26), w25, c1, s(26), w26);
SUM27: sumador port map (q(27), p(27), w26, c1, s(27), w27);
SUM28: sumador port map (q(28), p(28), w27, c1, s(28), w28);
SUM29: sumador port map (q(29), p(29), w28, c1, s(29), w29);
SUM30: sumador port map (q(30), p(30), w29, c1, s(30), w30);
SUM31: sumador port map (q(31), p(31), w30, c1, s(31), c0);

end interna;

-- Kevin Suaza