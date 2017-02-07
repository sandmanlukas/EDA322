
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pg_creator IS

	PORT(
		x : IN STD_LOGIC;
		y : IN STD_LOGIC;
		p : OUT STD_LOGIC;
		g : OUT STD_LOGIC
	    );

END pg_creator;

ARCHITECTURE dataflow OF pg_creator IS
BEGIN

p <= x XOR y;
g <= x AND y;

END dataflow;
