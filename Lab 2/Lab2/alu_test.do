
force Operation b"10"
force ALU_inA b"10101001"
force ALU_inB b"10010111"

run 100

force Operation b"11"
force ALU_inA b"10100011"

run 100

force Operation b"00"
force ALU_inA b"00001000"
force ALU_inB b"00110100"

run 100

force Operation b"01"
force ALU_inB b"00000110"

run 100
