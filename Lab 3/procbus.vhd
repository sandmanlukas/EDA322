LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY procBus IS
	PORT(
		INSTRUCTION : in STD_LOGIC_VECTOR (7 downto 0);
 		DATA        : in STD_LOGIC_VECTOR (7 downto 0);
 		ACC         : in STD_LOGIC_VECTOR (7 downto 0);
 		EXTDATA     : in STD_LOGIC_VECTOR (7 downto 0);
 		OUTPUT      : out STD_LOGIC_VECTOR (7 downto 0);
 		ERR         : out STD_LOGIC;
 		instrSEL    : in STD_LOGIC;
 		dataSEL     : in STD_LOGIC;
 		accSEL      : in STD_LOGIC;
 		extdataSEL  : in STD_LOGIC);
END procBus;

ARCHITECTURE dataflow OF procBus IS

TYPE vec_array IS ARRAY (0 TO 7) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL array_of_inputs: vec_array;

	COMPONENT mux4to1
		PORT(
	     		i : IN STD_LOGIC_VECTOR(3 downto 0);
	     		s : IN STD_LOGIC_VECTOR(1 downto 0);
	     		y : OUT STD_LOGIC
	    	    );
	END COMPONENT;

SIGNAL sel    : STD_LOGIC_VECTOR(3 DOWNTO 0); -- The 4 select signals in a vector
SIGNAL muxSel : STD_LOGIC_VECTOR(1 DOWNTO 0); -- The mux select signal

BEGIN

G2: 	FOR i IN 0 TO 7 GENERATE
		array_of_inputs(i) <= (instruction(i)&data(i)&acc(i)&extdata(i));
	END GENERATE;

sel <= instrSEL & dataSEL & accSEl& extdataSEL;

	WITH sel SELECT		   	    -- Decode select signals to the mux select signal
		muxSel <= "00" WHEN "0001",
			  "01" WHEN "0010",
			  "10" WHEN "0100",
			  "11" WHEN "1000",
			  "00" WHEN "0000", -- What should we output when noselect?
			  "00" WHEN OTHERS; -- What should we output when too many?
	
	WITH sel SELECT
		err <= '0' WHEN "0001",
		       '0' WHEN "0010",
		       '0' WHEN "0100",
		       '0' WHEN "1000",
		       '1' WHEN "0000", -- Error if no selection?
		       '1' WHEN OTHERS;
	-- in general, is it so that when err=1, the bus value is undefined?

G1: 	FOR i IN 0 TO 7 GENERATE
		muxes: mux4to1
			PORT MAP(
				array_of_inputs(i),
				muxSel,
				output(i)
				);
	END GENERATE;

END dataflow;





