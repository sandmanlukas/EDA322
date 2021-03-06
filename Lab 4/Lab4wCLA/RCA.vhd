
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY rca IS

	PORT(
	     a    : IN STD_LOGIC_VECTOR(7 downto 0);
	     b    : IN STD_LOGIC_VECTOR(7 downto 0);
	     cin  : IN STD_LOGIC;
	     sum  : OUT STD_LOGIC_VECTOR(7 downto 0);
	     cout : OUT STD_LOGIC
	    );

END rca;

ARCHITECTURE structural OF rca IS

SIGNAL c_int : STD_LOGIC_VECTOR(6 downto 0);

BEGIN

fa0: entity work.fa(dataflow)
	PORT MAP(a(0),
		 b(0),
		 cin,
		 sum(0),
		 c_int(0)
		 );

fa1: entity work.fa(dataflow)
	PORT MAP(a(1),
		 b(1),
		 c_int(0),
		 sum(1),
		 c_int(1)
		 );

fa2: entity work.fa(dataflow)
	PORT MAP(a(2),
		 b(2),
		 c_int(1),
		 sum(2),
		 c_int(2)
		 );

fa3: entity work.fa(dataflow)
	PORT MAP(a(3),
		 b(3),
		 c_int(2),
		 sum(3),
		 c_int(3)
		 );

fa4: entity work.fa(dataflow)
	PORT MAP(a(4),
		 b(4),
		 c_int(3),
		 sum(4),
		 c_int(4)
		 );

fa5: entity work.fa(dataflow)
	PORT MAP(a(5),
		 b(5),
		 c_int(4),
		 sum(5),
		 c_int(5)
		 );

fa6: entity work.fa(dataflow)
	PORT MAP(a(6),
		 b(6),
		 c_int(5),
		 sum(6),
		 c_int(6)
		 );

fa7: entity work.fa(dataflow)
	PORT MAP(a(7),
		 b(7),
		 c_int(6),
		 sum(7),
		 cout
		 );

END structural;
