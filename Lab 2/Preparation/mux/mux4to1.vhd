
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY mux4to1 IS

	PORT(
	     i : IN STD_LOGIC_VECTOR(3 downto 0);
	     s : IN STD_LOGIC_VECTOR(1 downto 0);
	     y : OUT STD_LOGIC
	    );

END mux4to1;

ARCHITECTURE structural OF mux4to1 IS

SIGNAL m : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL i10 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL i32 : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL m10 : STD_LOGIC_VECTOR(1 downto 0);

COMPONENT mux2to1

	PORT(
	     i : IN STD_LOGIC_VECTOR(1 downto 0);
	     s : IN STD_LOGIC;
	     y : OUT STD_LOGIC
	    );

END COMPONENT;

BEGIN

i10 <= i(1) & i(0);
i32 <= i(3) & i(2);
m10 <= m(1) & m(0);

mux1: entity work.mux2to1(dataflow)
	PORT MAP(
		 i10,
		 s(0),
		 m(0)
		 );

mux2: entity work.mux2to1(dataflow)
	PORT MAP(
		 i32,
		 s(0),
		 m(1)
		);

mux3: entity work.mux2to1(dataflow)
	PORT MAP(
		 m10,
		 s(1),
		 y
		);

END structural;
