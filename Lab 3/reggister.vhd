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

ARCHITECTURE dataflow OF reggister IS
BEGIN
END dataflow;