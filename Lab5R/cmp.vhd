
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cmp IS
	PORT (
		a   : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		b   : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
		eq  : OUT STD_LOGIC;
		neq : OUT STD_LOGIC
	);
END cmp;

ARCHITECTURE dataflow OF cmp IS
SIGNAL res : STD_LOGIC_VECTOR (7 DOWNTO 0);
SIGNAL neq_int : STD_LOGIC; 
BEGIN
	res <= (a XOR b);
	neq_int <= res(7) OR res(6) OR res(5) OR res(4) OR res(3) OR res(2) OR res(1) OR res(0);
	neq <= neq_int;
	eq <= NOT neq_int;
END dataflow;

--Alternatively you can subtract A and B and check if the result is zero