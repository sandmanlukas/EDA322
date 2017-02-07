
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY cla IS

	PORT(
		a    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		b    : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		cin  : IN STD_LOGIC;
		sum  : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		cout : OUT STD_LOGIC
	    );

END cla;

ARCHITECTURE structural OF cla IS

	COMPONENT pg_creator
		PORT(
			x : IN STD_LOGIC;
			y : IN STD_LOGIC;
			p : OUT STD_LOGIC;
			g : OUT STD_LOGIC
		    );
	END COMPONENT;

	COMPONENT pg_combiner	
		PORT(
			p   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			g   : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			c   : IN STD_LOGIC;
			co  : OUT STD_LOGIC_VECTOR(3 DOWNTO 1);
			po  : OUT STD_LOGIC;
			go  : OUT STD_LOGIC
		);
	END COMPONENT;

	COMPONENT fa
		PORT (
			a  : IN STD_LOGIC;
			b  : IN STD_LOGIC;
			ci : IN STD_LOGIC;
			s  : OUT STD_LOGIC;
			co : OUT STD_LOGIC
		);
	END COMPONENT;

SIGNAL c_adders_int : STD_LOGIC_VECTOR(7 DOWNTO 0); -- dummy

SIGNAL c_int : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL p_int : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL g_int : STD_LOGIC_VECTOR(7 DOWNTO 0);

SIGNAL po_int : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Index 3 and 2 are unused
SIGNAL go_int : STD_LOGIC_VECTOR(3 DOWNTO 0); -- Index 3 and 2 are unused
SIGNAL c_top_int : STD_LOGIC_VECTOR(3 DOWNTO 1); -- Index 3 is unused
SIGNAL p_top_int : STD_LOGIC; -- dummy
SIGNAL g_top_int : STD_LOGIC; -- dummy

BEGIN

c_int(0) <= cin;

G1: FOR i IN 0 to 7 GENERATE
	pg_creators: pg_creator
		PORT MAP(
			a(i),
			b(i),
			p_int(i),
			g_int(i)
		       );
END GENERATE;

G2 : FOR i IN 0 TO 1 GENERATE
	pg_combinersLow : pg_combiner
		PORT MAP(
			p_int(4*i+3 DOWNTO 4*i),
			g_int(4*i+3 DOWNTO 4*i),
			c_int(4*i),
			c_int(4*i+3 DOWNTO 4*i+1),
			po_int(i),
			go_int(i)
		        );
END GENERATE;

c_int(4) <= c_top_int(1);
cout <= c_top_int(2);

pg_combiner_top : pg_combiner
	PORT MAP(
		po_int,
		go_int,
		cin,
		c_top_int,
		p_top_int,
		g_top_int
		);

G3: FOR i IN 0 to 7 GENERATE
	adders: fa
		PORT MAP(
			a(i),
			b(i),
			c_int(i),
			sum(i),
			c_adders_int(i)
			);
END GENERATE;

END structural;









