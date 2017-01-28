LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reggister IS
	GENERIC (
		data_width : INTEGER := 8
	);

	PORT(
		data_in     : IN STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);
		clk         : IN STD_LOGIC;
		aresetn	    : IN STD_LOGIC;
		load_enable : IN STD_LOGIC;
		res 	    : OUT STD_LOGIC_VECTOR(data_width-1 DOWNTO 0)
	);
END reggister;

ARCHITECTURE behavorial OF reggister IS

SIGNAL data : STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);

BEGIN

	PROCESS (aresetn, clk, load_enable, data_in)
	BEGIN
		IF (aresetn = '0') THEN
			data <= (OTHERS => '0');
			res  <= (OTHERS => '0');
		ELSIF (clk'event AND clk = '1' AND load_enable = '1') THEN
			data <= data_in;
			res  <= data_in;
		END IF;
	END PROCESS;

END behavorial;








