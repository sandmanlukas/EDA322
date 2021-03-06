LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE std.textio.all;

ENTITY mem_array IS
	GENERIC (
		data_width: INTEGER := 12;
		addr_width: INTEGER := 8;
		init_file:  STRING := "inst
_mem.mif"
	);
	
	PORT(
		addr   : IN STD_LOGIC_VECTOR (addr_width-1 DOWNTO 0);	--The address to access
		datain : IN STD_LOGIC_VECTOR (data_width-1 DOWNTO 0);   --Data to be written
		clk    : IN STD_LOGIC;					--Write operation is synchronous, read asynchronous
		we     : IN STD_LOGIC;
		output : OUT STD_LOGIC_VECTOR (data_width-1 DOWNTO 0)	--Output in case of read
	);
END mem_array;

ARCHITECTURE behavioral OF mem_array IS

	Type MEMORY_ARRAY IS ARRAY (0 TO (2**addr_width)-1) OF STD_LOGIC_VECTOR(data_width-1 DOWNTO 0);	

	impure function init_memory_wfile(mif_file_name : in string) return MEMORY_ARRAY is
    		file mif_file : text open read_mode is mif_file_name;
    		variable mif_line : line;
    		variable temp_bv : bit_vector(DATA_WIDTH-1 downto 0);
    		variable temp_mem : MEMORY_ARRAY;
	begin
	    for i in MEMORY_ARRAY'range loop
	        readline(mif_file, mif_line);
	        read(mif_line, temp_bv);
	        temp_mem(i) := to_stdlogicvector(temp_bv);
	    end loop;
	    return temp_mem;
	end function;

	SIGNAL memory : MEMORY_ARRAY := (init_memory_wfile(init_file));

BEGIN
	--When we write to the memory some time needs to pass (couple of ns's) before the data is possible to read.
	--If we try to update the output signal in the same iteration as data is written we get the data previously stored
	--at the address. Do we need to update output directly or can it wait until negative flank?
	PROCESS(clk)
		BEGIN
			IF(clk'event AND clk='1' AND we='1') THEN			--If triggered by clock on positive flank and we = 1
				memory(to_integer(unsigned(addr))) <= datain;		--we write
--				output <= memory(to_integer(unsigned(addr)));
--			ELSE
--			output <= memory(to_integer(unsigned(addr)));
			END IF;
		END PROCESS;
	output <= memory(to_integer(unsigned(addr)));

END behavioral;
	

