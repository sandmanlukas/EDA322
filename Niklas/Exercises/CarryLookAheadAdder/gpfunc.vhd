LIBRARY ieee;
USE ieee.std_logic_1164.all;

--Calculates g and p function for one full-adder
ENTITY gpfunc IS
	PORT(
		a : IN STD_LOGIC;
		b : IN STD_LOGIC;
		g : OUT STD_LOGIC;
		p : OUT STD_LOGIC
	);
END gpfunc;

ARCHITECTURE dataflow OF gpfunc IS
BEGIN
	g <= a AND b;
	p <= a XOR b;
END dataflow;