restart -f -nowave

view signals wave
add wave output addr clk we datain

force we 0
force clk 1 1,0 50ns -repeat 100ns
force addr b"00000101"

run 30ns

force addr b"00000110"

run 40ns

force addr b"11111110"

run 100ns

force datain b"111100001111"

run 100ns

force we 1

run 50ns

force we 0

run 10ns

force datain b"111111110000"

force we 1

run 200ns

force we 0

run 100

force addr b"11111100"

run 20

force addr b"11111110"

run 80