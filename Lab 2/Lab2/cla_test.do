
force cin 0
force x b"00000000"
force y b"00000000"

run 100ns

force y b"00000001"

run 100ns

force x b"00001000"
force y b"00010000"

run 100ns

force cin 1

run 100ns

force x b"01101100"
force y b"11100101"

run 100

force x b"11111111"
force y b"11111111"

run 100