LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY mux2to1 IS
	PORT(	b0, b1, s   : IN   	STD_LOGIC; 	--Input bits and select bit
			f			: OUT	STD_LOGIC  	--Result
		);
END muxto1;

ARCHITECTURE dataflow OF mux2to1 IS
BEGIN
	f <= b0 WHEN s ='0' ELSE b1;			--When select is 0 we choose b0
END dataflow;