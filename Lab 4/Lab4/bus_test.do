

force INSTRUCTION B"00001111"
force DATA B"11110000"
force ACC B"11111111"
force EXTDATA B"10101010"

force instrSel 1
force dataSel 0
force accSel 0
force extdataSel 0

run 100

force dataSel 1
run 100