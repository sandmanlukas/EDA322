LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY bitcntr IS
	PORT(
		input  : IN  STD_LOGIC_VECTOR(6 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END bitcntr;

ARCHITECTURE structural OF bitcntr IS

COMPONENT fulladder 
	PORT(
		a  : IN STD_LOGIC;
		b  : IN STD_LOGIC;
		ci : IN STD_LOGIC;
		s  : OUT STD_LOGIC;
		co : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL cs_int : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	cs_int(0) <= input(0);

	G1 : FOR i IN 0 TO 2 GENERATE
		adders : fulladder
			PORT MAP(
				input((i*2)+1),
				input((i*2)+2),
				cs_int(i),
				output(i),
				cs_int(i+1)
			);
	END GENERATE;
		
END structural;