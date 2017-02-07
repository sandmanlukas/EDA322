LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY procController IS
    PORT ( 	
		master_load_enable : in STD_LOGIC;
		opcode 		   : in  STD_LOGIC_VECTOR (3 downto 0);
		neq                : in STD_LOGIC;
		eq 		   : in STD_LOGIC; 
		CLK 		   : in STD_LOGIC;
		ARESETN 	   : in STD_LOGIC;
		pcSel 		   : out  STD_LOGIC;
		pcLd 	 	   : out  STD_LOGIC;
		instrLd 	   : out  STD_LOGIC;
		addrMd 		   : out  STD_LOGIC;
		dmWr 		   : out  STD_LOGIC;
		dataLd 		   : out  STD_LOGIC;
		flagLd 		   : out  STD_LOGIC;
		accSel 		   : out  STD_LOGIC;
		accLd 		   : out  STD_LOGIC;
		im2bus 		   : out  STD_LOGIC;
		dmRd 		   : out  STD_LOGIC;
		acc2bus 	   : out  STD_LOGIC;
		ext2bus 	   : out  STD_LOGIC;
		dispLd	   	   : out STD_LOGIC;
		aluMd		   : out STD_LOGIC_VECTOR(1 downto 0));
END procController;

ARCHITECTURE mixed OF procController IS

TYPE states IS (FE,DE,DE2,EX,ME);

SIGNAL state : states;				--Internal signal for representing the current state

BEGIN
	PROCESS(clk,aresetn)
		BEGIN
			IF (aresetn='0') THEN	--When the reset signal is set a transition to FE must take place. 
				state <= FE;	--The aresetn signal is connected to the reset signal of the registers.
			ELSIF (rising_edge(clk) AND master_load_enable = '1') THEN --Master_load_enable needs to be 1 for transitions to be possible
				IF(state = FE) THEN
					state <= DE;	
				ELSIF(state = ME OR state = EX) THEN
					state <= FE;
				ELSIF(state = DE) THEN
					CASE opcode IS
						WHEN X"8" | X"9" | X"A"       				   => state <= DE2;
						WHEN X"0" | X"1" | X"2" | X"3" | X"4" | X"5" | X"6" | X"F" => state <= EX;
						WHEN X"7" 						   => state <= ME;
						WHEN X"B" | X"C" | X"D" | X"E"				   => state <= FE;
						WHEN others => state <= FE; --If somethings not right it's safest to go to fetch. This should never happen.
					END CASE;
				ELSIF(state = DE2) THEN
					CASE opcode IS
						WHEN X"8" | X"9" => state <= EX;
						WHEN X"A" 	 => state <= ME;
						WHEN others 	 => state <= FE;
					END CASE;
				END IF;
			END IF;
	END PROCESS;

pcSel <= '1' WHEN opcode = X"C" AND state = DE ELSE
	 neq WHEN opcode = X"D" AND state = DE ELSE -- JNE, pcSel should be 1 if not equal from prev alu op
	 eq  WHEN opcode = X"E" AND state = DE ELSE
	 '0';

pcLd <= '1' WHEN opcode = X"0" AND state = EX ELSE
	'1' WHEN opcode = X"1" AND state = EX ELSE
	'1' WHEN opcode = X"2" AND state = EX ELSE
	'1' WHEN opcode = X"3" AND state = EX ELSE
	'1' WHEN opcode = X"4" AND state = EX ELSE
	'1' WHEN opcode = X"5" AND state = EX ELSE
	'1' WHEN opcode = X"6" AND state = EX ELSE
	'1' WHEN opcode = X"7" AND state = ME ELSE
	'1' WHEN opcode = X"8" AND state = EX ELSE
	'1' WHEN opcode = X"9" AND state = EX ELSE
	'1' WHEN opcode = X"A" AND state = ME ELSE
	'1' WHEN opcode = X"B" AND state = DE ELSE
	'1' WHEN opcode = X"C" AND state = DE ELSE
	'1' WHEN opcode = X"D" AND state = DE ELSE
	'1' WHEN opcode = X"E" AND state = DE ELSE
	'1' WHEN opcode = X"F" AND state = EX ELSE
	'0';

instrLd <= '1';

addrMd <= '1' WHEN opcode = X"8" AND state = DE2 ELSE
	  '1' WHEN opcode = X"9" AND state = DE2 ELSE
	  '1' WHEN opcode = X"A" AND state = ME ELSE
	  '0';

dmWr <= '1' WHEN opcode = X"7" AND state = ME ELSE
	'1' WHEN opcode = X"A" AND state = ME ELSE
	'1' WHEN opcode = X"B" AND state = DE ELSE
	'0';

dataLd <= '1' WHEN opcode = X"0" AND state = DE ELSE
	  '1' WHEN opcode = X"1" AND state = DE ELSE
	  '1' WHEN opcode = X"2" AND state = DE ELSE
	  '1' WHEN opcode = X"3" AND state = DE ELSE
	  '1' WHEN opcode = X"4" AND state = DE ELSE
	  '1' WHEN opcode = X"5" AND state = DE ELSE
	  '1' WHEN opcode = X"6" AND state = DE ELSE
	  '1' WHEN opcode = X"8" AND state = DE ELSE
	  '1' WHEN opcode = X"8" AND state = DE2 ELSE
	  '1' WHEN opcode = X"9" AND state = DE ELSE
	  '1' WHEN opcode = X"9" AND state = DE2 ELSE
	  '1' WHEN opcode = X"A" AND state = DE ELSE
	  '0';

flagLd <= '1' WHEN opcode = X"0" AND state = EX ELSE
	  '1' WHEN opcode = X"1" AND state = EX ELSE
	  '1' WHEN opcode = X"2" AND state = EX ELSE
	  '1' WHEN opcode = X"3" AND state = EX ELSE
	  '1' WHEN opcode = X"4" AND state = EX ELSE
	  '1' WHEN opcode = X"5" AND state = EX ELSE
	  '1' WHEN opcode = X"8" AND state = EX ELSE
	  '0';

accSel <= '1' WHEN opcode = X"6" AND state = EX ELSE
	  '1' WHEN opcode = X"9" AND state = EX ELSE
	  '0';

accLd <= '1' WHEN opcode = X"0" AND state = EX ELSE
	 '1' WHEN opcode = X"1" AND state = EX ELSE
	 '1' WHEN opcode = X"2" AND state = EX ELSE
	 '1' WHEN opcode = X"3" AND state = EX ELSE
	 '1' WHEN opcode = X"4" AND state = EX ELSE
	 '1' WHEN opcode = X"6" AND state = EX ELSE
	 '1' WHEN opcode = X"8" AND state = EX ELSE
	 '1' WHEN opcode = X"9" AND state = EX ELSE
	 '0';

im2bus <= '1' WHEN opcode = X"C" ELSE
	  '1' WHEN opcode = X"D" ELSE
	  '1' WHEN opcode = X"E" ELSE
	  '0';

dmRd <= '1' WHEN opcode = X"0" AND state = EX ELSE
	'1' WHEN opcode = X"1" AND state = EX ELSE
	'1' WHEN opcode = X"2" AND state = EX ELSE
	'1' WHEN opcode = X"3" AND state = EX ELSE
	'1' WHEN opcode = X"4" AND state = EX ELSE --!!!ADDED!!!
	'1' WHEN opcode = X"5" AND state = EX ELSE
	'1' WHEN opcode = X"6" AND state = EX ELSE
	'1' WHEN opcode = X"8" AND state = EX ELSE
	'1' WHEN opcode = X"9" AND state = EX ELSE
	'0';

acc2bus <= '1' WHEN opcode = X"7" ELSE
	   '1' WHEN opcode = X"A" ELSE
	   '0';

ext2bus <= '1' WHEN opcode = X"B" ELSE
	   '0';

dispLd <= '1' WHEN opcode = X"F" AND state = EX ELSE
	  '0';

aluMd <= "00" WHEN opcode = X"0" ElSE
	 "01" WHEN opcode = X"1" ELSE
	 "00" WHEN opcode = X"2" ELSE
	 "11" WHEN opcode = X"3" ELSE
	 "10" WHEN opcode = X"4" ELSE
	 "00" WHEN opcode = X"8" ELSE
	 "00" WHEN opcode = X"F" ELSE
	 "00";

END mixed;





