library IEEE;					--Standard library stuff
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY mux4to1 IS 
	PORT(
		b0	:	IN	STD_LOGIC;		-- Input bits
		b1	:	IN	STD_LOGIC;
		b2	:	IN	STD_LOGIC;
		b3	:	IN 	STD_LOGIC;
		s0	:	IN 	STD_LOGIC;		-- Select bits
		s1 	: 	IN 	STD_LOGIC;
		f	:	OUT	STD_LOGIC		-- Result
	);
END mux4to1;

ARCHITECTURE structural OF mux4to1 IS	-- Should be structural, combines predefined components

SIGNAL m0_out	:	STD_LOGIC;		-- Out signal from first mux
SIGNAL m1_out	:	STD_LOGIC;		-- Out signal from second mux

-- Can be removed if in same package
COMPONENT mux2to1
	PORT(
		i1	:	IN 	STD_LOGIC;
		i2	:	IN 	STD_LOGIC;
		s 	:	IN 	STD_LOGIC;
		o 	:	IN 	STD_LOGIC
	);
END COMPONENT;

BEGIN
	m0: ENTITY mux2to1(dataflow)
			PORT MAP(b0,b1,s0,m0_out);

	m1: ENTITY mux2to1(dataflow)
			PORT MAP(b2,b3,s1,m1_out);

	m2: ENTITY mux2to1(dataflow)
			PORT MAP(m0_out,m1_out,s1,f);		-- Select signal for the third mux should be s1 since if it's 0 it's either b0 or b1 
												-- and if it's 1 it's either b2 or b3 (s1s0 = 00,01,10,11)

END structural;