
--Adder used for the program counter. Increments the input and outputs is.

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY pcinc IS
	PORT(
		pc_in  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		pc_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END pcinc;

ARCHITECTURE structural OF pcinc IS

SIGNAL cout : STD_LOGIC; -- Dummy signal for cout

BEGIN
	rca : ENTITY work.rca(structural)
		PORT MAP(
			pc_in,
			B"00000000",
			'1',
			pc_out,
			cout	
		);
END structural;
