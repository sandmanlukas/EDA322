
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY alu_wRCA IS

	PORT(
		ALU_inA   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		ALU_inB   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		Operation : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		ALU_out   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		Carry     : OUT STD_LOGIC;
		NotEq     : OUT STD_LOGIC;
		Eq        : OUT STD_LOGIC;
		isOutZero : OUT STD_LOGIC
	);

END alu_wRCA;


ARCHITECTURE dataflow OF alu_wRCA IS

-- And, Not ---------------------------------------------
SIGNAL andOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL notOut : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- Add, Sub ---------------------------------------------
SIGNAL sub : STD_LOGIC;
SIGNAL b_int : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sumOut : STD_LOGIC_VECTOR(7 DOWNTO 0);

-- Eq, Neq ----------------------------------------------
SIGNAL ALU_Out_int: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL neq_placeholder : STD_LOGIC;

BEGIN

-- And, Not ---------------------------------------------

andOut <= ALU_inA AND ALU_inB;
notOut <= NOT ALU_inA;


-- Add, Sub ---------------------------------------------

-- Only need to check the LSB to determine if subtracting
sub <= Operation(0);

-- 1's complement on second operand if doing subtraction
b_int(0) <= ALU_inB(0) XOR sub;
b_int(1) <= ALU_inB(1) XOR sub;
b_int(2) <= ALU_inB(2) XOR sub;
b_int(3) <= ALU_inB(3) XOR sub;
b_int(4) <= ALU_inB(4) XOR sub;
b_int(5) <= ALU_inB(5) XOR sub;
b_int(6) <= ALU_inB(6) XOR sub;
b_int(7) <= ALU_inB(7) XOR sub;

adder: entity work.rca(structural)
	PORT MAP(
		ALU_inA,
		b_int,
		sub, -- Add 1 to make 2's complement when subtracting
		sumOut,
		Carry -- Carry may be 1 even if OP is and or not. Should it always be 0 then?
		);

WITH Operation SELECT
	ALU_Out_int <= andOut WHEN "10",
		   notOut WHEN "11",
		   sumOut WHEN OTHERS;


-- Eq, Neq ----------------------------------------------

cmp: entity work.cmp(dataflow)
	PORT MAP(
		ALU_inA,
		ALU_inB,
		Eq,
		NotEq
		);

cmpZero: entity work.cmp(dataflow)
	PORT MAP(
		Alu_Out_int,
		B"00000000",
		isOutZero,
		neq_placeholder
		);

Alu_Out <= Alu_Out_int;

END dataflow;










