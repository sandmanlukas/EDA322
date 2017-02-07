
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux2to1_8wide IS

	PORT(
		x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		y : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s : IN STD_LOGIC;
		o : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	    );

END mux2to1_8wide;

ARCHITECTURE structural OF mux2to1_8wide IS

COMPONENT mux2to1_bit

	PORT(
		b0 : IN STD_LOGIC;
		b1 : IN STD_LOGIC;
		s  : IN STD_LOGIC;
		f  : OUT STD_LOGIC
	    );

END COMPONENT;

BEGIN

G1:	FOR i IN 0 TO 7 GENERATE
		muxes: mux2to1_bit
			PORT MAP(
				x(i),
				y(i),
				s,
				o(i)
				);
	END GENERATE;

END structural;
