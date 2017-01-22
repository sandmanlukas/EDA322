LIBRARY ieee;
USE ieee.std_logic_1164.all;

--Calculates common g and p function for two full adders and gives the cout signal for the first off them (g0, b0)
ENTITY gpfunc2 IS
	PORT(
		g0 : IN STD_LOGIC;
		p0 : IN STD_LOGIC;
		g1 : IN STD_LOGIC;
		p1 : IN STD_LOGIC;
		ci : IN STD_LOGIC;	--Cin from previos step
		co : OUT STD_LOGIC;	--The cout for g0 b0
		g  : OUT STD_LOGIC;
		p  : OUT STD_LOGIC
	);
END gpfunc2;

ARCHITECTURE dataflow OF gpfunc2 IS 
BEGIN
	g <= g0 OR g1;			--Common generate function
	p <= p0 AND p1;			--Common propagate function
	co <= g0 OR (ci AND p0);	--Cout for full-adder 0. Either generated or propagated.
END dataflow;