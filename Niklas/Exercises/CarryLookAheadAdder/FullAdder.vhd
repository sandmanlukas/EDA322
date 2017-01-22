LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY fulladder IS
	PORT(
		a  : IN STD_LOGIC;
		b  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		s  : OUT STD_LOGIC);
END fulladder;

ARCHITECTURE dataflow OF fulladder IS
BEGIN
	s <=  (a XOR b) XOR ci;
END dataflow;