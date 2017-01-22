LIBRARY ieee;
USE ieee.std_logic_1164.all;

--An 8 bit carry look ahead adder
ENTITY carrylookaheadadder IS
	PORT(
		a   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		b   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cin : IN STD_LOGIC;
		s   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		co  : OUT STD_LOGIC
);
END carrylookaheadadder;

ARCHITECTURE structural OF carrylookaheadadder IS
	COMPONENT gpfunc
		PORT(
			a : IN STD_LOGIC;
			b : IN STD_LOGIC;
			g : OUT STD_LOGIC;
			p : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT gpfunc2
		PORT(
			g0 : IN STD_LOGIC;
			p0 : IN STD_LOGIC;
			g1 : IN STD_LOGIC;
			p1 : IN STD_LOGIC;
			ci : IN STD_LOGIC;	--Cin from previos step
			co : OUT STD_LOGIC;	--The cout for g0 b0
			g  : OUT STD_LOGIC;
			p  : OUT STD_LOGIC);
	END COMPONENT;

	COMPONENT fulladder 
		PORT(
			a  : IN STD_LOGIC;
			b  : IN STD_LOGIC;
			ci : IN STD_LOGIC;
			s  : OUT STD_LOGIC);
	END COMPONENT;

--g and p functions (result) from lowest level
SIGNAL g0_int : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p0_int : STD_LOGIC_VECTOR(7 DOWNTO 0);

--All c signals. Cin, c1, c2,....,c7.
SIGNAL cs_int : STD_LOGIC_VECTOR(7 DOWNTO 0);

--g and p functions (results) from second level
SIGNAL g1_int :	STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL p1_int : STD_LOGIC_VECTOR(3 DOWNTO 0);

--g and p functions (results) from third level
SIGNAL g2_int : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL p2_int : STD_LOGIC_VECTOR(1 DOWNTO 0);

--g and p functions (results) from fourt level
SIGNAL g3_int : STD_LOGIC;
SIGNAL p3_int : STD_LOGIC;




BEGIN

	cs_int(0) <= cin;
	--ALL COMPONENTS FOR G AND P FUNCTIONS
	--Components that give g and p function at "lowest level"
	G1 : FOR i IN 0 TO 7 GENERATE
		gpfuncs0 : gpfunc PORT MAP(
			a(i),b(i),g0_int(i),p0_int(i));
	END GENERATE;

	--Components that give g and function at second level
	G2 : FOR i IN 0 TO 3 GENERATE
		gpfuncs1 : gpfunc2 PORT MAP (
			g0_int(i*2),p0_int(i*2),g0_int(i*2+1),p0_int(i*2+1),cs_int(i*2),cs_int(i*2+1),g1_int(i),p1_int(i));
	END GENERATE;

	--gpfuncs1_0 : gpfunc2 PORT MAP(g0_int(0),p0_int(0),g0_int(1),p0_int(1),cin,cs_int(2),g1_int(0),p1_int(0));
	--Components that give g and p function at third level
	gpfunc2_0 : gpfunc2 PORT MAP(g1_int(0),p1_int(0),g1_int(1),p1_int(1),cs_int(0),cs_int(2),g2_int(0),p2_int(0));
	gpfunc2_1 : gpfunc2 PORT MAP(g1_int(2),p1_int(2),g1_int(3),p1_int(3),cs_int(4),cs_int(6),g2_int(1),p2_int(1));
	
	--Component that gives g and p function at fourth level
	gpfunc2_3 : gpfunc2 PORT MAP(g2_int(0),p2_int(0),g2_int(1),p2_int(1),cs_int(0),cs_int(4),g3_int,p3_int);
	
	G3: FOR i IN 0 to 7 GENERATE
		adders : fulladder PORT MAP (
			a(i),b(i),cs_int(i),s(i));
	END GENERATE;

	co <= g0_int(7) OR (p0_int(7) AND cs_int(7));
		
END structural;