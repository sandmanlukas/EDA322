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

ARCHITECTURE behavioral OF reggister IS
BEGIN
	PROCESS (clk,aresetn)
	BEGIN
		IF(aresetn = '0') THEN
			res <= (OTHERS => '0');
		ELSIF(clk'event AND clk = '1' AND load_enable = '1') THEN
			res <= data_in;
		END IF;
	END PROCESS;
END behavioral;