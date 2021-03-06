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
SIGNAL next_state : states;			--Internal sinal for the next state

BEGIN
reg_process:	PROCESS(clk, aresetn, master_load_enable)
		BEGIN
			IF (aresetn = '0') THEN
				state <= FE;
			ELSIF (rising_edge(clk) AND master_load_enable = '1') THEN
				state <= next_state;
			END IF;
		END PROCESS reg_process;

cmb_process:	PROCESS(opcode, state) --Process for calculating the next state
		BEGIN
			IF(state = FE) THEN
				next_state <= DE;	
			ELSIF(state = ME OR state = EX) THEN
				next_state <= FE;
			ELSIF(state = DE) THEN
				CASE opcode IS
					WHEN X"8" | X"9" | X"A"       				   => next_state <= DE2;
					WHEN X"0" | X"1" | X"2" | X"3" | X"4" | X"5" | X"6" | X"F" => next_state <= EX;
					WHEN X"7" 						   => next_state <= ME;
					WHEN X"B" | X"C" | X"D" | X"E"				   => next_state <= FE;
					WHEN others 						   => next_state <= FE; --If somethings not right it's safest to go to fetch. This should never happen.
				END CASE;
			ELSIF(state = DE2) THEN
				CASE opcode IS
					WHEN X"8" | X"9" => next_state <= EX;
					WHEN X"A" 	 => next_state <= ME;
					WHEN others 	 => next_state <= FE;
				END CASE;
			END IF;
		END PROCESS;

out_process: PROCESS(opcode, neq, eq, state)
	BEGIN
		-- pcSel
		IF (opcode = X"C" AND state = DE) THEN
			pcSel <= '1';
		ELSIF (opcode = X"D" AND state = DE) THEN
			pcSel <= neq;
		ELSIF (opcode = X"E" AND state = DE) THEN
		  	pcSel <= eq;
		ELSE
			pcSel <= '0';
		END IF;

		-- pcLd
		IF ((opcode = X"0" AND state = EX) OR
		    (opcode = X"1" AND state = EX) OR
		    (opcode = X"2" AND state = EX) OR
		    (opcode = X"3" AND state = EX) OR
		    (opcode = X"4" AND state = EX) OR
		    (opcode = X"5" AND state = EX) OR
		    (opcode = X"6" AND state = EX) OR
		    (opcode = X"7" AND state = ME) OR
		    (opcode = X"8" AND state = EX) OR
		    (opcode = X"9" AND state = EX) OR
		    (opcode = X"A" AND state = ME) OR
		    (opcode = X"B" AND state = DE) OR
		    (opcode = X"C" AND state = DE) OR
		    (opcode = X"D" AND state = DE) OR
		    (opcode = X"E" AND state = DE) OR
		    (opcode = X"F" AND state = EX)) THEN
			pcLd <= '1';
		ELSE
			pcLd <= '0';
		END IF;

		-- dataLd
		IF ((opcode = X"0" AND state = DE) OR
		    (opcode = X"1" AND state = DE) OR
		    (opcode = X"2" AND state = DE) OR
		    (opcode = X"3" AND state = DE) OR
		    (opcode = X"4" AND state = DE) OR
		    (opcode = X"5" AND state = DE) OR
		    (opcode = X"6" AND state = DE) OR
		    (opcode = X"8" AND state = DE) OR
		    (opcode = X"8" AND state = DE2) OR
		    (opcode = X"9" AND state = DE) OR
		    (opcode = X"9" AND state = DE2) OR
		    (opcode = X"A" AND state = DE)) THEN
			dataLd <= '1';
		ELSE
			dataLd <= '0';
		END IF;

		-- instrLd
		instrLd <= '1';

		-- addrMd
		IF ((opcode = X"8" AND state = DE2) OR
		    (opcode = X"9" AND state = DE2) OR
		    (opcode = X"A" AND state = ME)) THEN
			addrMd <= '1';
		ELSE
			addrMd <= '0';
		END IF;

		-- dmWr
		IF ((opcode = X"7" AND state = ME) OR
		    (opcode = X"A" AND state = ME) OR
		    (opcode = X"B" AND state = DE)) THEN
			dmWr <= '1';
		ELSE
			dmWr <= '0';
		END IF;

		-- flagLd
		IF ((opcode = X"0" AND state = EX) OR
		    (opcode = X"1" AND state = EX) OR
		    (opcode = X"2" AND state = EX) OR
		    (opcode = X"3" AND state = EX) OR
		    (opcode = X"4" AND state = EX) OR
		    (opcode = X"5" AND state = EX) OR
		    (opcode = X"8" AND state = EX)) THEN
			flagLd <= '1';
		ELSE
			flagLd <= '0';
		END IF;

		-- accSel
		IF ((opcode = X"6" AND state = EX) OR
		    (opcode = X"9" AND state = EX)) THEN
			accSel <= '1';
		ELSE
			accSel <= '0';
		END IF;

		-- accLd
		IF ((opcode = X"0" AND state = EX) OR
		    (opcode = X"1" AND state = EX) OR
		    (opcode = X"2" AND state = EX) OR
		    (opcode = X"3" AND state = EX) OR
		    (opcode = X"4" AND state = EX) OR
		    (opcode = X"6" AND state = EX) OR
		    (opcode = X"8" AND state = EX) OR
		    (opcode = X"9" AND state = EX)) THEN
			accLd <= '1';
		ELSE
			accLd <= '0';
		END IF;

		-- im2bus
		IF ((opcode = X"C") OR
		    (opcode = X"D") OR
		    (opcode = X"E")) THEN	
			im2bus <= '1';
		ELSE
			im2bus <= '0';
		END IF;

		-- dmRd
		IF ((opcode = X"0" AND state = EX) OR
		    (opcode = X"1" AND state = EX) OR
		    (opcode = X"2" AND state = EX) OR
		    (opcode = X"3" AND state = EX) OR
		    (opcode = X"4" AND state = EX) OR
		    (opcode = X"5" AND state = EX) OR
		    (opcode = X"6" AND state = EX) OR
		    (opcode = X"8" AND state = EX) OR
		    (opcode = X"9" AND state = EX)) THEN
			dmRd <= '1';
		ELSE
			dmRd <= '0';
		END IF;

		-- acc2bus
		IF ((opcode = X"7") OR
		    (opcode = X"A")) THEN	
			acc2bus <= '1';
		ELSE
			acc2bus <= '0';
		END IF;

		-- ext2bus
		IF ((opcode = X"B")) THEN	
			ext2bus <= '1';
		ELSE
			ext2bus <= '0';
		END IF;

		-- dispLd
		IF ((opcode = X"F" AND state = EX)) THEN	
			dispLd <= '1';
		ELSE
			dispLd <= '0';
		END IF;

		-- aluMd
		IF (opcode = X"0") THEN
			aluMd <= "00";
		ELSIF (opcode = X"1") THEN
			aluMd <= "01";
		ELSIF (opcode = X"2") THEN
			aluMd <= "00";
		ELSIF (opcode = X"3") THEN
			aluMd <= "11";
		ELSIF (opcode = X"4") THEN
			aluMd <= "10";
		ELSIF (opcode = X"8") THEN
			aluMd <= "00";
		ELSIF (opcode = X"F") THEN
			aluMd <= "00";
		ELSE
			aluMd <= "00";
		END IF;
		
	END PROCESS out_process;

END mixed;






