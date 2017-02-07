LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_textio.all;
USE std.textio.all;

ENTITY EDA322Testbench IS
END EDA322Testbench;

ARCHITECTURE behavioral OF EDA322Testbench IS

SIGNAL externalIn 		: STD_LOGIC_VECTOR (7 downto 0); -- ?extIn? in Figure 1
SIGNAL CLK 			: STD_LOGIC := '0';
SIGNAL master_load_enable	: STD_LOGIC;
SIGNAL ARESETN 			: STD_LOGIC := '0';
SIGNAL pc2seg 			: STD_LOGIC_VECTOR (7 downto 0); -- PC
SIGNAL instr2seg 		: STD_LOGIC_VECTOR (11 downto 0); -- Instruction register
SIGNAL Addr2seg 		: STD_LOGIC_VECTOR (7 downto 0); -- Address register
SIGNAL dMemOut2seg 		: STD_LOGIC_VECTOR (7 downto 0); -- Data memory output
SIGNAL aluOut2seg 		: STD_LOGIC_VECTOR (7 downto 0); -- ALU output
SIGNAL acc2seg 			: STD_LOGIC_VECTOR (7 downto 0); -- Accumulator
SIGNAL flag2seg 		: STD_LOGIC_VECTOR (3 downto 0); -- Flags
SIGNAL busOut2seg 		: STD_LOGIC_VECTOR (7 downto 0); -- Value on the bus
SIGNAL disp2seg			: STD_LOGIC_VECTOR(7 downto 0); --Display register
SIGNAL errSig2seg 		: STD_LOGIC; -- Bus Error signal
SIGNAL ovf 			: STD_LOGIC; -- Overflow
SIGNAL zero 			: STD_LOGIC; -- Zero

CONSTANT clk_period		: TIME := 10 ns;
CONSTANT dmemouttrace_length	: INTEGER := 20;

TYPE test_vector_dmemouttrace IS ARRAY (0 TO dmemouttrace_length-1) OF STD_LOGIC_VECTOR(7 DOWNTO 0);

--Function for reading test vectors from a file to an array
IMPURE FUNCTION read_dmemouttrace (test : INTEGER)
	RETURN test_vector_dmemouttrace IS
	VARIABLE file_name : STRING := "dMemOuttrace.txt"; 
	FILE vector_file : TEXT OPEN read_mode IS file_name;
	VARIABLE temp_array : test_vector_dmemouttrace;
	VARIABLE index	    : NATURAL := 0;
	VARIABLE vector_line: LINE;
BEGIN
	WHILE (NOT ENDFILE (vector_file)) AND (index < dmemouttrace_length) LOOP	--While there are lines to read
		readline(vector_file, vector_line); 					--Read the next line from file, save in vector_line
		read(vector_line, temp_array(index));					--Read vector_line and store in teamp_array(index)
		index := index + 1;							--Increment index
	END LOOP;
	RETURN temp_array;
END readTestValues;

SIGNAL dmemouttrace : test_vector := read_dmemouttrace(0);
--SIGNAL flagtrace : test_vector :=(readTestValues("flagtrace.txt"));
--SIGNAL pctrace : test_vector :=(readTestValues("pctrace.txt"));
--SIGNAL acctrace : test_vector :=(readTestValues("acctrace.txt"));
--SIGNAL disptrace : test_vector :=(readTestValues("disptrace.txt"));

BEGIN

processor : ENTITY work.EDA322_processor(structural)
	PORT MAP(
		externalIn,
		CLK,
		master_load_enable,
		ARESETN,
		pc2seg,
		instr2seg,
		Addr2seg,
		dMemOut2seg,
		aluOut2seg,
		acc2seg,
		flag2seg,
		busOut2seg,
		disp2seg,
		errSig2seg,
		ovf,
		zero
	);

externalIn <= "00000000";
master_load_enable <= '1';         --Should always be 1
clk <= NOT clk AFTER clk_period/2;
aresetn <= '1' AFTER clk_period*2; --Reset is active for two cycles and then becomes 1

END behavioral;

