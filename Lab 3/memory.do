restart -f -nowave    	
view signals wave 
add wave ADDR WE DATAIN CLK OUTPUT


force clk 0 0, 1 50ns -repeat 100ns

force datain b"11111111"
force we 0
force addr b"00000010"

run 55ns

force we 1

run 20ns

force we 0

run 25ns

run 60ns

force we 1

run 60ns

force we 0

run 80ns

force we 1

run 75

force we 0 

run 125