
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1 IS
	PORT(
	     i : IN STD_LOGIC_VECTOR(1 downto 0);
	     s : IN STD_LOGIC;
	     y : OUT STD_LOGIC
	    );
END mux2to1;

ARCHITECTURE dataflow OF mux2to1 IS
BEGIN

y <= i(0) WHEN s = '0' ELSE i(1);

END dataflow;
