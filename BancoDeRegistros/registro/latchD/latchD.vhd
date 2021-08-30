library ieee;
use ieee.std_logic_1164.all;

entity latchD is port (
  d, en :in std_logic;
  q, qn :out std_logic
);
end latchD;

architecture interna of latchD is
signal q1 : std_logic :='0';
signal qn1 : std_logic :='1';
begin
q1<= (d nand en) nand qn1;
qn1<= (not d nand  en) nand q1;

q <= q1;
qn <= qn1;
end interna;
-- Kevin Suaza