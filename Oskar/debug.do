restart -f -nowave

view signals wave
add wave externalIn CLK master_load_enable ARESETN pc2seg instr2seg Addr2seg dMemOut2seg aluOut2seg acc2seg flag2seg busOut2seg disp2seg errSig2seg ovf zero pc addr InstrMemOut MemDataOut

force aresetn 0
force clk 1 1,0 50ns -repeat 100ns
force externalin 0
force master_load_enable 1

run 300