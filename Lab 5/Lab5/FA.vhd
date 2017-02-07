LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fa IS
	PORT (
		a  : IN STD_LOGIC;
		b  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		s  : OUT STD_LOGIC;
		co : OUT STD_LOGIC
	);
END fa;

ARCHITECTURE dataflow OF fa IS
BEGIN
	s  <= (a XOR b) XOR ci;
	co <= (ci AND b) OR (a AND b) OR (ci AND a);
END dataflow;

