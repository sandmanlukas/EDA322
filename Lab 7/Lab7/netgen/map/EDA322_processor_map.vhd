--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: EDA322_processor_map.vhd
-- /___/   /\     Timestamp: Tue Feb 21 13:02:09 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 3 -pcf EDA322_processor.pcf -rpw 100 -tpw 0 -ar Structure -tm EDA322_processor -w -dir netgen/map -ofmt vhdl -sim EDA322_processor_map.ncd EDA322_processor_map.vhd 
-- Device	: 6slx16csg324-3 (PRODUCTION 1.23 2013-10-13)
-- Input file	: EDA322_processor_map.ncd
-- Output file	: \\file00.chalmers.se\home\osklunds\NyaMappen\EDA322\Lab 7\Lab7\netgen\map\EDA322_processor_map.vhd
-- # of Entities	: 1
-- Design Name	: EDA322_processor
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity EDA322_processor is
  port (
    CLK : in STD_LOGIC := 'X'; 
    master_load_enable : in STD_LOGIC := 'X'; 
    ARESETN : in STD_LOGIC := 'X'; 
    errSig2seg : out STD_LOGIC; 
    ovf : out STD_LOGIC; 
    zero : out STD_LOGIC; 
    externalIn : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    pc2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    instr2seg : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    Addr2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    dMemOut2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    aluOut2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    acc2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    flag2seg : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    busOut2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    disp2seg : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end EDA322_processor;

architecture Structure of EDA322_processor is
  signal N22 : STD_LOGIC; 
  signal busOut2seg_6_OBUF_1914 : STD_LOGIC; 
  signal busOut2seg_5_OBUF_1915 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal controller_state_FSM_FFd3_1917 : STD_LOGIC; 
  signal controller_state_FSM_FFd2_1918 : STD_LOGIC; 
  signal fe_de_register_res_8_Q : STD_LOGIC; 
  signal fe_de_register_res_10_Q : STD_LOGIC; 
  signal fe_de_register_res_9_Q : STD_LOGIC; 
  signal fe_de_register_res_11_Q : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal busOut2seg_4_OBUF_1925 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal busOut2seg_3_OBUF_1929 : STD_LOGIC; 
  signal dataLd : STD_LOGIC; 
  signal controller_state_FSM_FFd1_1931 : STD_LOGIC; 
  signal CLK_BUFGP : STD_LOGIC; 
  signal master_load_enable_IBUF_0 : STD_LOGIC; 
  signal acc_register_aresetn_inv : STD_LOGIC; 
  signal dispLd : STD_LOGIC; 
  signal InstrMemOut_10_0 : STD_LOGIC; 
  signal aluOut2seg_1_OBUF_1944 : STD_LOGIC; 
  signal alu_Mmux_ALU_Out_int4 : STD_LOGIC; 
  signal alu_Mmux_ALU_Out_int6 : STD_LOGIC; 
  signal flagLd : STD_LOGIC; 
  signal aluOut2seg_6_OBUF_1948 : STD_LOGIC; 
  signal aluOut2seg_4_OBUF_1949 : STD_LOGIC; 
  signal aluOut2seg_2_OBUF_1950 : STD_LOGIC; 
  signal aluOut2seg_0_OBUF_1951 : STD_LOGIC; 
  signal aluOut2seg_7_OBUF_1952 : STD_LOGIC; 
  signal busOut2seg_7_OBUF_1954 : STD_LOGIC; 
  signal externalIn_7_IBUF_0 : STD_LOGIC; 
  signal im2bus : STD_LOGIC; 
  signal acc2bus : STD_LOGIC; 
  signal dmRd : STD_LOGIC; 
  signal ext2bus : STD_LOGIC; 
  signal buss_G1_7_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal fe_de_register_res_6_Q : STD_LOGIC; 
  signal InstrMemOut_11_0 : STD_LOGIC; 
  signal InstrMemOut_0_0 : STD_LOGIC; 
  signal fe_de_register_res_0_1_1969 : STD_LOGIC; 
  signal addrMd : STD_LOGIC; 
  signal Addr2seg_0_OBUF_1971 : STD_LOGIC; 
  signal fe_de_register_res_1_Q : STD_LOGIC; 
  signal fe_de_register_res_0_Q : STD_LOGIC; 
  signal Addr2seg_1_OBUF_0 : STD_LOGIC; 
  signal InstrMemOut_1_0 : STD_LOGIC; 
  signal fe_de_register_res_1_1_1980 : STD_LOGIC; 
  signal alu_cmp_neq_int_0_2 : STD_LOGIC; 
  signal busOut2seg_1_OBUF_1982 : STD_LOGIC; 
  signal busOut2seg_2_OBUF_1983 : STD_LOGIC; 
  signal busOut2seg_0_OBUF_1984 : STD_LOGIC; 
  signal alu_cmp_neq_int_0_3_1985 : STD_LOGIC; 
  signal freg_res_1_0 : STD_LOGIC; 
  signal InstrMemOut_2_0 : STD_LOGIC; 
  signal fe_de_register_res_2_1_1989 : STD_LOGIC; 
  signal fe_de_register_res_8_1_1990 : STD_LOGIC; 
  signal InstrMemOut_8_0 : STD_LOGIC; 
  signal alu_b_int_2_Q : STD_LOGIC; 
  signal alu_adder_c_int_1_Q : STD_LOGIC; 
  signal externalIn_6_IBUF_0 : STD_LOGIC; 
  signal InstrMemOut_3_0 : STD_LOGIC; 
  signal fe_de_register_res_3_1_1997 : STD_LOGIC; 
  signal accSel : STD_LOGIC; 
  signal accLd : STD_LOGIC; 
  signal InstrMemOut_9_0 : STD_LOGIC; 
  signal InstrMemOut_4_0 : STD_LOGIC; 
  signal fe_de_register_res_4_1_2002 : STD_LOGIC; 
  signal fe_de_register_res_9_2_2003 : STD_LOGIC; 
  signal InstrMemOut_5_0 : STD_LOGIC; 
  signal fe_de_register_res_6_3_2005 : STD_LOGIC; 
  signal controller_dmWr : STD_LOGIC; 
  signal externalIn_5_IBUF_0 : STD_LOGIC; 
  signal fe_de_register_res_6_2_2009 : STD_LOGIC; 
  signal fe_de_register_res_6_1_2010 : STD_LOGIC; 
  signal fe_de_register_res_10_1_2011 : STD_LOGIC; 
  signal fe_de_register_res_11_1_2012 : STD_LOGIC; 
  signal fe_de_register_res_8_2_2013 : STD_LOGIC; 
  signal buss_G1_4_muxes_mux3_Mmux_y12_2014 : STD_LOGIC; 
  signal externalIn_4_IBUF_0 : STD_LOGIC; 
  signal buss_G1_4_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal fe_de_register_res_4_Q : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal fe_de_register_res_9_3_2020 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal alu_adder_c_int_3_Q : STD_LOGIC; 
  signal externalIn_3_IBUF_0 : STD_LOGIC; 
  signal fe_de_register_res_3_Q : STD_LOGIC; 
  signal errSig2seg_OBUF_2027 : STD_LOGIC; 
  signal fe_de_register_res_2_Q : STD_LOGIC; 
  signal externalIn_2_IBUF_0 : STD_LOGIC; 
  signal buss_G1_2_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal fe_de_register_res_10_2_2032 : STD_LOGIC; 
  signal fe_de_register_res_11_2_2033 : STD_LOGIC; 
  signal Addr2seg_6_OBUF_2034 : STD_LOGIC; 
  signal Addr2seg_7_OBUF_0 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal dmWr_0 : STD_LOGIC; 
  signal pcSel_0 : STD_LOGIC; 
  signal Addr2seg_2_OBUF_2039 : STD_LOGIC; 
  signal Addr2seg_3_OBUF_0 : STD_LOGIC; 
  signal pcincer_rca_c_int_1_Q : STD_LOGIC; 
  signal pcincer_rca_c_int_3_0 : STD_LOGIC; 
  signal Addr2seg_4_OBUF_2047 : STD_LOGIC; 
  signal Addr2seg_5_OBUF_0 : STD_LOGIC; 
  signal aluOut2seg_3_OBUF_2049 : STD_LOGIC; 
  signal aluOut2seg_5_OBUF_2051 : STD_LOGIC; 
  signal externalIn_0_IBUF_0 : STD_LOGIC; 
  signal externalIn_1_IBUF_0 : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_0 : STD_LOGIC; 
  signal N38_0 : STD_LOGIC; 
  signal N39_0 : STD_LOGIC; 
  signal N41_0 : STD_LOGIC; 
  signal alu_b_int_7_Q : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N35_0 : STD_LOGIC; 
  signal N33_0 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N36_0 : STD_LOGIC; 
  signal pcLd : STD_LOGIC; 
  signal pcincer_rca_c_int_5_Q : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal buss_G1_3_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal controller_pcLd : STD_LOGIC; 
  signal controller_dataLd : STD_LOGIC; 
  signal controller_state_FSM_FFd3_In1_2078 : STD_LOGIC; 
  signal N01 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal buss_G1_5_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal buss_G1_6_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal buss_G1_1_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal fe_de_register_res_9_1_2089 : STD_LOGIC; 
  signal buss_G1_0_muxes_mux3_Mmux_y1 : STD_LOGIC; 
  signal alu_adder_c_int_5_Q : STD_LOGIC; 
  signal externalIn_0_IBUF_161 : STD_LOGIC; 
  signal externalIn_1_IBUF_166 : STD_LOGIC; 
  signal externalIn_2_IBUF_171 : STD_LOGIC; 
  signal externalIn_3_IBUF_176 : STD_LOGIC; 
  signal externalIn_4_IBUF_181 : STD_LOGIC; 
  signal externalIn_5_IBUF_186 : STD_LOGIC; 
  signal externalIn_6_IBUF_189 : STD_LOGIC; 
  signal externalIn_7_IBUF_194 : STD_LOGIC; 
  signal ProtoComp37_IINV_OUT : STD_LOGIC; 
  signal acc_register_aresetn_inv_non_inverted : STD_LOGIC; 
  signal CLK_BUFGP_IBUFG_215 : STD_LOGIC; 
  signal master_load_enable_IBUF_224 : STD_LOGIC; 
  signal de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_3_INV_data_memory_Mram_memory4_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_3_INV_data_memory_Mram_memory4_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory4_A_267 : STD_LOGIC; 
  signal data_memory_Mram_memory4_B_259 : STD_LOGIC; 
  signal data_memory_Mram_memory4_C_250 : STD_LOGIC; 
  signal data_memory_Mram_memory4_D_240 : STD_LOGIC; 
  signal data_memory_Mram_memory4_F7_A_238 : STD_LOGIC; 
  signal data_memory_Mram_memory4_F7_B_237 : STD_LOGIC; 
  signal de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_0_INV_data_memory_Mram_memory1_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_0_INV_data_memory_Mram_memory1_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory1_A_307 : STD_LOGIC; 
  signal data_memory_Mram_memory1_B_299 : STD_LOGIC; 
  signal data_memory_Mram_memory1_C_290 : STD_LOGIC; 
  signal data_memory_Mram_memory1_D_280 : STD_LOGIC; 
  signal data_memory_Mram_memory1_F7_A_278 : STD_LOGIC; 
  signal data_memory_Mram_memory1_F7_B_277 : STD_LOGIC; 
  signal de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_6_INV_data_memory_Mram_memory7_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_6_INV_data_memory_Mram_memory7_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory7_A_347 : STD_LOGIC; 
  signal data_memory_Mram_memory7_B_339 : STD_LOGIC; 
  signal data_memory_Mram_memory7_C_330 : STD_LOGIC; 
  signal data_memory_Mram_memory7_D_320 : STD_LOGIC; 
  signal data_memory_Mram_memory7_F7_A_318 : STD_LOGIC; 
  signal data_memory_Mram_memory7_F7_B_317 : STD_LOGIC; 
  signal de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_5_INV_data_memory_Mram_memory6_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_5_INV_data_memory_Mram_memory6_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory6_A_387 : STD_LOGIC; 
  signal data_memory_Mram_memory6_B_379 : STD_LOGIC; 
  signal data_memory_Mram_memory6_C_370 : STD_LOGIC; 
  signal data_memory_Mram_memory6_D_360 : STD_LOGIC; 
  signal data_memory_Mram_memory6_F7_A_358 : STD_LOGIC; 
  signal data_memory_Mram_memory6_F7_B_357 : STD_LOGIC; 
  signal de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_1_INV_data_memory_Mram_memory2_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_1_INV_data_memory_Mram_memory2_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory2_A_427 : STD_LOGIC; 
  signal data_memory_Mram_memory2_B_419 : STD_LOGIC; 
  signal data_memory_Mram_memory2_C_410 : STD_LOGIC; 
  signal data_memory_Mram_memory2_D_400 : STD_LOGIC; 
  signal data_memory_Mram_memory2_F7_A_398 : STD_LOGIC; 
  signal data_memory_Mram_memory2_F7_B_397 : STD_LOGIC; 
  signal de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_2_INV_data_memory_Mram_memory3_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_2_INV_data_memory_Mram_memory3_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory3_A_467 : STD_LOGIC; 
  signal data_memory_Mram_memory3_B_459 : STD_LOGIC; 
  signal data_memory_Mram_memory3_C_450 : STD_LOGIC; 
  signal data_memory_Mram_memory3_D_440 : STD_LOGIC; 
  signal data_memory_Mram_memory3_F7_A_438 : STD_LOGIC; 
  signal data_memory_Mram_memory3_F7_B_437 : STD_LOGIC; 
  signal de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_4_INV_data_memory_Mram_memory5_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_4_INV_data_memory_Mram_memory5_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory5_A_507 : STD_LOGIC; 
  signal data_memory_Mram_memory5_B_499 : STD_LOGIC; 
  signal data_memory_Mram_memory5_C_490 : STD_LOGIC; 
  signal data_memory_Mram_memory5_D_480 : STD_LOGIC; 
  signal data_memory_Mram_memory5_F7_A_478 : STD_LOGIC; 
  signal data_memory_Mram_memory5_F7_B_477 : STD_LOGIC; 
  signal de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE2 : STD_LOGIC; 
  signal de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE1 : STD_LOGIC; 
  signal de_ex_register_res_7_INV_data_memory_Mram_memory8_CWE2 : STD_LOGIC; 
  signal de_ex_register_res_7_INV_data_memory_Mram_memory8_BWE1 : STD_LOGIC; 
  signal data_memory_Mram_memory8_A_547 : STD_LOGIC; 
  signal data_memory_Mram_memory8_B_539 : STD_LOGIC; 
  signal data_memory_Mram_memory8_C_530 : STD_LOGIC; 
  signal data_memory_Mram_memory8_D_520 : STD_LOGIC; 
  signal data_memory_Mram_memory8_F7_A_518 : STD_LOGIC; 
  signal data_memory_Mram_memory8_F7_B_517 : STD_LOGIC; 
  signal InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE2 : STD_LOGIC; 
  signal InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE1 : STD_LOGIC; 
  signal InstrMemOut_5_INV_instruction_memory_Mram_memory6_CWE2 : STD_LOGIC; 
  signal InstrMemOut_5_INV_instruction_memory_Mram_memory6_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_A_584 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_B_576 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_C_568 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_D_558 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_F7_A_556 : STD_LOGIC; 
  signal instruction_memory_Mram_memory6_F7_B_555 : STD_LOGIC; 
  signal InstrMemOut_5_Q : STD_LOGIC; 
  signal InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE2 : STD_LOGIC; 
  signal InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE1 : STD_LOGIC; 
  signal InstrMemOut_4_INV_instruction_memory_Mram_memory5_CWE2 : STD_LOGIC; 
  signal InstrMemOut_4_INV_instruction_memory_Mram_memory5_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_A_621 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_B_613 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_C_605 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_D_595 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_F7_A_593 : STD_LOGIC; 
  signal instruction_memory_Mram_memory5_F7_B_592 : STD_LOGIC; 
  signal InstrMemOut_4_Q : STD_LOGIC; 
  signal InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE2 : STD_LOGIC; 
  signal InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE1 : STD_LOGIC; 
  signal InstrMemOut_2_INV_instruction_memory_Mram_memory3_CWE2 : STD_LOGIC; 
  signal InstrMemOut_2_INV_instruction_memory_Mram_memory3_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_A_658 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_B_650 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_C_642 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_D_632 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_F7_A_630 : STD_LOGIC; 
  signal instruction_memory_Mram_memory3_F7_B_629 : STD_LOGIC; 
  signal InstrMemOut_2_Q : STD_LOGIC; 
  signal Addr2seg_3_OBUF_677 : STD_LOGIC; 
  signal Addr2seg_5_OBUF_670 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal Addr2seg_7_OBUF_738 : STD_LOGIC; 
  signal N42_pack_9 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE2 : STD_LOGIC; 
  signal InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE1 : STD_LOGIC; 
  signal InstrMemOut_1_INV_instruction_memory_Mram_memory2_CWE2 : STD_LOGIC; 
  signal InstrMemOut_1_INV_instruction_memory_Mram_memory2_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_A_876 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_B_868 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_C_860 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_D_850 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_F7_A_848 : STD_LOGIC; 
  signal instruction_memory_Mram_memory2_F7_B_847 : STD_LOGIC; 
  signal InstrMemOut_1_Q : STD_LOGIC; 
  signal controller_dataLd_pack_15 : STD_LOGIC; 
  signal controller_state_FSM_FFd3_In : STD_LOGIC; 
  signal dmWr : STD_LOGIC; 
  signal pcSel : STD_LOGIC; 
  signal Addr2seg_1_OBUF_979 : STD_LOGIC; 
  signal controller_state_FSM_FFd2_pack_2 : STD_LOGIC; 
  signal controller_state_FSM_FFd2_In_1019 : STD_LOGIC; 
  signal controller_state_FSM_FFd1_In : STD_LOGIC; 
  signal N4_pack_4 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N32_pack_9 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal acc_register_res_2_pack_10 : STD_LOGIC; 
  signal InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE2 : STD_LOGIC; 
  signal InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE1 : STD_LOGIC; 
  signal InstrMemOut_9_INV_instruction_memory_Mram_memory10_CWE2 : STD_LOGIC; 
  signal InstrMemOut_9_INV_instruction_memory_Mram_memory10_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_A_1482 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_B_1474 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_C_1466 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_D_1456 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_F7_A_1454 : STD_LOGIC; 
  signal instruction_memory_Mram_memory10_F7_B_1453 : STD_LOGIC; 
  signal InstrMemOut_9_Q : STD_LOGIC; 
  signal InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE2 : STD_LOGIC; 
  signal InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE1 : STD_LOGIC; 
  signal InstrMemOut_10_INV_instruction_memory_Mram_memory11_CWE2 : STD_LOGIC; 
  signal InstrMemOut_10_INV_instruction_memory_Mram_memory11_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_A_1519 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_B_1511 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_C_1503 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_D_1493 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_F7_A_1491 : STD_LOGIC; 
  signal instruction_memory_Mram_memory11_F7_B_1490 : STD_LOGIC; 
  signal InstrMemOut_10_Q : STD_LOGIC; 
  signal InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE2 : STD_LOGIC; 
  signal InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE1 : STD_LOGIC; 
  signal InstrMemOut_8_INV_instruction_memory_Mram_memory9_CWE2 : STD_LOGIC; 
  signal InstrMemOut_8_INV_instruction_memory_Mram_memory9_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_A_1556 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_B_1548 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_C_1540 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_D_1530 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_F7_A_1528 : STD_LOGIC; 
  signal instruction_memory_Mram_memory9_F7_B_1527 : STD_LOGIC; 
  signal InstrMemOut_8_Q : STD_LOGIC; 
  signal InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE2 : STD_LOGIC; 
  signal InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE1 : STD_LOGIC; 
  signal InstrMemOut_3_INV_instruction_memory_Mram_memory4_CWE2 : STD_LOGIC; 
  signal InstrMemOut_3_INV_instruction_memory_Mram_memory4_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_A_1593 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_B_1585 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_C_1577 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_D_1567 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_F7_A_1565 : STD_LOGIC; 
  signal instruction_memory_Mram_memory4_F7_B_1564 : STD_LOGIC; 
  signal InstrMemOut_3_Q : STD_LOGIC; 
  signal InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE2 : STD_LOGIC; 
  signal InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE1 : STD_LOGIC; 
  signal InstrMemOut_0_INV_instruction_memory_Mram_memory1_CWE2 : STD_LOGIC; 
  signal InstrMemOut_0_INV_instruction_memory_Mram_memory1_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_A_1630 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_B_1622 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_C_1614 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_D_1604 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_F7_A_1602 : STD_LOGIC; 
  signal instruction_memory_Mram_memory1_F7_B_1601 : STD_LOGIC; 
  signal InstrMemOut_0_Q : STD_LOGIC; 
  signal InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE2 : STD_LOGIC; 
  signal InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE1 : STD_LOGIC; 
  signal InstrMemOut_11_INV_instruction_memory_Mram_memory12_CWE2 : STD_LOGIC; 
  signal InstrMemOut_11_INV_instruction_memory_Mram_memory12_BWE1 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_A_1667 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_B_1659 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_C_1651 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_D_1641 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_F7_A_1639 : STD_LOGIC; 
  signal instruction_memory_Mram_memory12_F7_B_1638 : STD_LOGIC; 
  signal InstrMemOut_11_Q : STD_LOGIC; 
  signal pcincer_rca_c_int_3_Q : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal acc_register_res : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal aluMd : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal display_rgister_res : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal freg_res : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal de_ex_register_res : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal fe_register_res : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal MemDataOut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal nxtpc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal ACCIn : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal FlagInp : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  fe_de_register_res_0_1 : X_FF
    generic map(
      LOC => "OLOGIC_X8Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_0_0,
      O => fe_de_register_res_0_1_1969,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_1_1 : X_FF
    generic map(
      LOC => "OLOGIC_X11Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_1_0,
      O => fe_de_register_res_1_1_1980,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_2_1 : X_FF
    generic map(
      LOC => "OLOGIC_X9Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_2_0,
      O => fe_de_register_res_2_1_1989,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_3_1 : X_FF
    generic map(
      LOC => "OLOGIC_X9Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_3_0,
      O => fe_de_register_res_3_1_1997,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_4_1 : X_FF
    generic map(
      LOC => "OLOGIC_X9Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_4_0,
      O => fe_de_register_res_4_1_2002,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_6_3 : X_FF
    generic map(
      LOC => "OLOGIC_X9Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_5_0,
      O => fe_de_register_res_6_3_2005,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_6_2 : X_FF
    generic map(
      LOC => "OLOGIC_X10Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_5_0,
      O => fe_de_register_res_6_2_2009,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_6_1 : X_FF
    generic map(
      LOC => "OLOGIC_X10Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_5_0,
      O => fe_de_register_res_6_1_2010,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_8_2 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y62",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_8_0,
      O => fe_de_register_res_8_2_2013,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_9_3 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y61",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_9_0,
      O => fe_de_register_res_9_3_2020,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_10_2 : X_FF
    generic map(
      LOC => "OLOGIC_X11Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_10_0,
      O => fe_de_register_res_10_2_2032,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  fe_de_register_res_11_2 : X_FF
    generic map(
      LOC => "OLOGIC_X12Y63",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_11_0,
      O => fe_de_register_res_11_2_2033,
      SET => GND,
      RST => acc_register_aresetn_inv
    );
  busOut2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD19"
    )
    port map (
      I => busOut2seg_2_OBUF_1983,
      O => busOut2seg(2)
    );
  dMemOut2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD13"
    )
    port map (
      I => de_ex_register_res(3),
      O => dMemOut2seg(3)
    );
  zero_OBUF : X_OBUF
    generic map(
      LOC => "PAD40"
    )
    port map (
      I => freg_res(0),
      O => zero
    );
  busOut2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD10"
    )
    port map (
      I => busOut2seg_3_OBUF_1929,
      O => busOut2seg(3)
    );
  dMemOut2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD27"
    )
    port map (
      I => de_ex_register_res(4),
      O => dMemOut2seg(4)
    );
  instr2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD32"
    )
    port map (
      I => fe_de_register_res_0_1_1969,
      O => instr2seg(0)
    );
  busOut2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD17"
    )
    port map (
      I => busOut2seg_4_OBUF_1925,
      O => busOut2seg(4)
    );
  dMemOut2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD16"
    )
    port map (
      I => de_ex_register_res(5),
      O => dMemOut2seg(5)
    );
  instr2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD39"
    )
    port map (
      I => fe_de_register_res_1_1_1980,
      O => instr2seg(1)
    );
  busOut2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD14"
    )
    port map (
      I => busOut2seg_5_OBUF_1915,
      O => busOut2seg(5)
    );
  dMemOut2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD15"
    )
    port map (
      I => de_ex_register_res(6),
      O => dMemOut2seg(6)
    );
  instr2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD34"
    )
    port map (
      I => fe_de_register_res_2_1_1989,
      O => instr2seg(2)
    );
  busOut2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD21"
    )
    port map (
      I => busOut2seg_6_OBUF_1914,
      O => busOut2seg(6)
    );
  dMemOut2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD20"
    )
    port map (
      I => de_ex_register_res(7),
      O => dMemOut2seg(7)
    );
  Addr2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD1"
    )
    port map (
      I => Addr2seg_0_OBUF_1971,
      O => Addr2seg(0)
    );
  instr2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD35"
    )
    port map (
      I => fe_de_register_res_3_1_1997,
      O => instr2seg(3)
    );
  busOut2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD25"
    )
    port map (
      I => busOut2seg_7_OBUF_1954,
      O => busOut2seg(7)
    );
  Addr2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD2"
    )
    port map (
      I => Addr2seg_1_OBUF_0,
      O => Addr2seg(1)
    );
  instr2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD36"
    )
    port map (
      I => fe_de_register_res_4_1_2002,
      O => instr2seg(4)
    );
  errSig2seg_OBUF : X_OBUF
    generic map(
      LOC => "PAD75"
    )
    port map (
      I => errSig2seg_OBUF_2027,
      O => errSig2seg
    );
  Addr2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD3"
    )
    port map (
      I => Addr2seg_2_OBUF_2039,
      O => Addr2seg(2)
    );
  instr2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD33"
    )
    port map (
      I => fe_de_register_res_6_3_2005,
      O => instr2seg(5)
    );
  Addr2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD4"
    )
    port map (
      I => Addr2seg_3_OBUF_0,
      O => Addr2seg(3)
    );
  instr2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD38"
    )
    port map (
      I => fe_de_register_res_6_2_2009,
      O => instr2seg(6)
    );
  Addr2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD5"
    )
    port map (
      I => Addr2seg_4_OBUF_2047,
      O => Addr2seg(4)
    );
  instr2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD37"
    )
    port map (
      I => fe_de_register_res_6_1_2010,
      O => instr2seg(7)
    );
  aluOut2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD41"
    )
    port map (
      I => aluOut2seg_0_OBUF_1951,
      O => aluOut2seg(0)
    );
  Addr2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD6"
    )
    port map (
      I => Addr2seg_5_OBUF_0,
      O => Addr2seg(5)
    );
  instr2seg_8_OBUF : X_OBUF
    generic map(
      LOC => "PAD44"
    )
    port map (
      I => fe_de_register_res_8_2_2013,
      O => instr2seg(8)
    );
  aluOut2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD46"
    )
    port map (
      I => aluOut2seg_1_OBUF_1944,
      O => aluOut2seg(1)
    );
  Addr2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD7"
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => Addr2seg(6)
    );
  instr2seg_9_OBUF : X_OBUF
    generic map(
      LOC => "PAD45"
    )
    port map (
      I => fe_de_register_res_9_3_2020,
      O => instr2seg(9)
    );
  flag2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => freg_res(0),
      O => flag2seg(0)
    );
  aluOut2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD47"
    )
    port map (
      I => aluOut2seg_2_OBUF_1950,
      O => aluOut2seg(2)
    );
  Addr2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD8"
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => Addr2seg(7)
    );
  flag2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD28"
    )
    port map (
      I => freg_res_1_0,
      O => flag2seg(1)
    );
  aluOut2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => aluOut2seg_3_OBUF_2049,
      O => aluOut2seg(3)
    );
  flag2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => freg_res(2),
      O => flag2seg(2)
    );
  aluOut2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD53"
    )
    port map (
      I => aluOut2seg_4_OBUF_1949,
      O => aluOut2seg(4)
    );
  flag2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD31"
    )
    port map (
      I => freg_res(3),
      O => flag2seg(3)
    );
  aluOut2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD54"
    )
    port map (
      I => aluOut2seg_5_OBUF_2051,
      O => aluOut2seg(5)
    );
  aluOut2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD55"
    )
    port map (
      I => aluOut2seg_6_OBUF_1948,
      O => aluOut2seg(6)
    );
  acc2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD59"
    )
    port map (
      I => acc_register_res(0),
      O => acc2seg(0)
    );
  aluOut2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD56"
    )
    port map (
      I => aluOut2seg_7_OBUF_1952,
      O => aluOut2seg(7)
    );
  acc2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD62"
    )
    port map (
      I => acc_register_res(1),
      O => acc2seg(1)
    );
  acc2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD61"
    )
    port map (
      I => acc_register_res(2),
      O => acc2seg(2)
    );
  acc2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD60"
    )
    port map (
      I => acc_register_res(3),
      O => acc2seg(3)
    );
  acc2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD63"
    )
    port map (
      I => acc_register_res(4),
      O => acc2seg(4)
    );
  acc2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD64"
    )
    port map (
      I => acc_register_res(5),
      O => acc2seg(5)
    );
  acc2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD65"
    )
    port map (
      I => acc_register_res(6),
      O => acc2seg(6)
    );
  instr2seg_10_OBUF : X_OBUF
    generic map(
      LOC => "PAD42"
    )
    port map (
      I => fe_de_register_res_10_2_2032,
      O => instr2seg(10)
    );
  acc2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD66"
    )
    port map (
      I => acc_register_res(7),
      O => acc2seg(7)
    );
  instr2seg_11_OBUF : X_OBUF
    generic map(
      LOC => "PAD43"
    )
    port map (
      I => fe_de_register_res_11_2_2033,
      O => instr2seg(11)
    );
  pc2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD84"
    )
    port map (
      I => fe_register_res(0),
      O => pc2seg(0)
    );
  pc2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD85"
    )
    port map (
      I => fe_register_res(1),
      O => pc2seg(1)
    );
  pc2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD86"
    )
    port map (
      I => fe_register_res(2),
      O => pc2seg(2)
    );
  externalIn_0_IBUF : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_0_IBUF_161,
      I => externalIn(0)
    );
  ProtoComp36_IMUX : X_BUF
    generic map(
      LOC => "PAD76",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_0_IBUF_161,
      O => externalIn_0_IBUF_0
    );
  pc2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD87"
    )
    port map (
      I => fe_register_res(3),
      O => pc2seg(3)
    );
  externalIn_1_IBUF : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_1_IBUF_166,
      I => externalIn(1)
    );
  ProtoComp36_IMUX_1 : X_BUF
    generic map(
      LOC => "PAD77",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_1_IBUF_166,
      O => externalIn_1_IBUF_0
    );
  pc2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD88"
    )
    port map (
      I => fe_register_res(4),
      O => pc2seg(4)
    );
  externalIn_2_IBUF : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_2_IBUF_171,
      I => externalIn(2)
    );
  ProtoComp36_IMUX_2 : X_BUF
    generic map(
      LOC => "PAD78",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_2_IBUF_171,
      O => externalIn_2_IBUF_0
    );
  pc2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD89"
    )
    port map (
      I => fe_register_res(5),
      O => pc2seg(5)
    );
  externalIn_3_IBUF : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_3_IBUF_176,
      I => externalIn(3)
    );
  ProtoComp36_IMUX_3 : X_BUF
    generic map(
      LOC => "PAD79",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_3_IBUF_176,
      O => externalIn_3_IBUF_0
    );
  pc2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD90"
    )
    port map (
      I => fe_register_res(6),
      O => pc2seg(6)
    );
  externalIn_4_IBUF : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_4_IBUF_181,
      I => externalIn(4)
    );
  ProtoComp36_IMUX_4 : X_BUF
    generic map(
      LOC => "PAD80",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_4_IBUF_181,
      O => externalIn_4_IBUF_0
    );
  pc2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD91"
    )
    port map (
      I => fe_register_res(7),
      O => pc2seg(7)
    );
  externalIn_5_IBUF : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_5_IBUF_186,
      I => externalIn(5)
    );
  ProtoComp36_IMUX_5 : X_BUF
    generic map(
      LOC => "PAD81",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_5_IBUF_186,
      O => externalIn_5_IBUF_0
    );
  externalIn_6_IBUF : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_6_IBUF_189,
      I => externalIn(6)
    );
  ProtoComp36_IMUX_6 : X_BUF
    generic map(
      LOC => "PAD82",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_6_IBUF_189,
      O => externalIn_6_IBUF_0
    );
  ovf_OBUF : X_OBUF
    generic map(
      LOC => "PAD57"
    )
    port map (
      I => freg_res(3),
      O => ovf
    );
  externalIn_7_IBUF : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 202 ps
    )
    port map (
      O => externalIn_7_IBUF_194,
      I => externalIn(7)
    );
  ProtoComp36_IMUX_7 : X_BUF
    generic map(
      LOC => "PAD83",
      PATHPULSE => 202 ps
    )
    port map (
      I => externalIn_7_IBUF_194,
      O => externalIn_7_IBUF_0
    );
  disp2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD67"
    )
    port map (
      I => display_rgister_res(0),
      O => disp2seg(0)
    );
  disp2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD68"
    )
    port map (
      I => display_rgister_res(1),
      O => disp2seg(1)
    );
  disp2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD69"
    )
    port map (
      I => display_rgister_res(2),
      O => disp2seg(2)
    );
  disp2seg_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD70"
    )
    port map (
      I => display_rgister_res(3),
      O => disp2seg(3)
    );
  ARESETN_IBUF : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      O => acc_register_aresetn_inv_non_inverted,
      I => ARESETN
    );
  ProtoComp37_IMUX : X_BUF
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      I => ProtoComp37_IINV_OUT,
      O => acc_register_aresetn_inv
    );
  ProtoComp37_IINV : X_INV
    generic map(
      LOC => "PAD26",
      PATHPULSE => 202 ps
    )
    port map (
      I => acc_register_aresetn_inv_non_inverted,
      O => ProtoComp37_IINV_OUT
    );
  disp2seg_4_OBUF : X_OBUF
    generic map(
      LOC => "PAD71"
    )
    port map (
      I => display_rgister_res(4),
      O => disp2seg(4)
    );
  disp2seg_5_OBUF : X_OBUF
    generic map(
      LOC => "PAD72"
    )
    port map (
      I => display_rgister_res(5),
      O => disp2seg(5)
    );
  disp2seg_6_OBUF : X_OBUF
    generic map(
      LOC => "PAD73"
    )
    port map (
      I => display_rgister_res(6),
      O => disp2seg(6)
    );
  CLK_BUFGP_IBUFG : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      O => CLK_BUFGP_IBUFG_215,
      I => CLK
    );
  ProtoComp36_IMUX_8 : X_BUF
    generic map(
      LOC => "PAD216",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_215,
      O => CLK_BUFGP_IBUFG_0
    );
  disp2seg_7_OBUF : X_OBUF
    generic map(
      LOC => "PAD74"
    )
    port map (
      I => display_rgister_res(7),
      O => disp2seg(7)
    );
  dMemOut2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD12"
    )
    port map (
      I => de_ex_register_res(0),
      O => dMemOut2seg(0)
    );
  CLK_BUFGP_BUFG : X_CKBUF
    generic map(
      LOC => "BUFGMUX_X3Y13",
      PATHPULSE => 202 ps
    )
    port map (
      I => CLK_BUFGP_IBUFG_0,
      O => CLK_BUFGP
    );
  master_load_enable_IBUF : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      O => master_load_enable_IBUF_224,
      I => master_load_enable
    );
  ProtoComp36_IMUX_9 : X_BUF
    generic map(
      LOC => "PAD58",
      PATHPULSE => 202 ps
    )
    port map (
      I => master_load_enable_IBUF_224,
      O => master_load_enable_IBUF_0
    );
  busOut2seg_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD9"
    )
    port map (
      I => busOut2seg_0_OBUF_1984,
      O => busOut2seg(0)
    );
  dMemOut2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD18"
    )
    port map (
      I => de_ex_register_res(1),
      O => dMemOut2seg(1)
    );
  busOut2seg_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD22"
    )
    port map (
      I => busOut2seg_1_OBUF_1982,
      O => busOut2seg(1)
    );
  dMemOut2seg_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD11"
    )
    port map (
      I => de_ex_register_res(2),
      O => dMemOut2seg(2)
    );
  INV_data_memory_Mram_memory4_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE2
    );
  INV_data_memory_Mram_memory4_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE1
    );
  INV_data_memory_Mram_memory4_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_3_INV_data_memory_Mram_memory4_CWE2
    );
  INV_data_memory_Mram_memory4_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_3_INV_data_memory_Mram_memory4_BWE1
    );
  data_memory_Mram_memory4_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y57"
    )
    port map (
      IA => data_memory_Mram_memory4_F7_B_237,
      IB => data_memory_Mram_memory4_F7_A_238,
      O => MemDataOut(3),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory4_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y57"
    )
    port map (
      IA => data_memory_Mram_memory4_D_240,
      IB => data_memory_Mram_memory4_C_250,
      O => data_memory_Mram_memory4_F7_B_237,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory4_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y57"
    )
    port map (
      IA => data_memory_Mram_memory4_B_259,
      IB => data_memory_Mram_memory4_A_267,
      O => data_memory_Mram_memory4_F7_A_238,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory4_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_3_OBUF_1929,
      O => data_memory_Mram_memory4_D_240,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE1,
      WE2 => de_ex_register_res_3_INV_data_memory_Mram_memory4_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory4_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_3_OBUF_1929,
      O => data_memory_Mram_memory4_C_250,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_3_INV_data_memory_Mram_memory4_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_3 : X_FF
    generic map(
      LOC => "SLICE_X6Y57",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(3),
      O => de_ex_register_res(3),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory4_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_3_OBUF_1929,
      O => data_memory_Mram_memory4_B_259,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_3_INV_data_memory_Mram_memory4_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory4_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_3_OBUF_1929,
      O => data_memory_Mram_memory4_A_267,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory1_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE2
    );
  INV_data_memory_Mram_memory1_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE1
    );
  INV_data_memory_Mram_memory1_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_0_INV_data_memory_Mram_memory1_CWE2
    );
  INV_data_memory_Mram_memory1_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_0_INV_data_memory_Mram_memory1_BWE1
    );
  data_memory_Mram_memory1_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X6Y61"
    )
    port map (
      IA => data_memory_Mram_memory1_F7_B_277,
      IB => data_memory_Mram_memory1_F7_A_278,
      O => MemDataOut(0),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory1_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X6Y61"
    )
    port map (
      IA => data_memory_Mram_memory1_D_280,
      IB => data_memory_Mram_memory1_C_290,
      O => data_memory_Mram_memory1_F7_B_277,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory1_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X6Y61"
    )
    port map (
      IA => data_memory_Mram_memory1_B_299,
      IB => data_memory_Mram_memory1_A_307,
      O => data_memory_Mram_memory1_F7_A_278,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory1_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y61",
      INIT => X"0000000000000232"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_0_OBUF_1984,
      O => data_memory_Mram_memory1_D_280,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE1,
      WE2 => de_ex_register_res_0_INV_data_memory_Mram_memory1_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory1_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_0_OBUF_1984,
      O => data_memory_Mram_memory1_C_290,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_0_INV_data_memory_Mram_memory1_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_0 : X_FF
    generic map(
      LOC => "SLICE_X6Y61",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(0),
      O => de_ex_register_res(0),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory1_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_0_OBUF_1984,
      O => data_memory_Mram_memory1_B_299,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_0_INV_data_memory_Mram_memory1_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory1_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X6Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_0_OBUF_1984,
      O => data_memory_Mram_memory1_A_307,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory7_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE2
    );
  INV_data_memory_Mram_memory7_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE1
    );
  INV_data_memory_Mram_memory7_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_6_INV_data_memory_Mram_memory7_CWE2
    );
  INV_data_memory_Mram_memory7_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_6_INV_data_memory_Mram_memory7_BWE1
    );
  data_memory_Mram_memory7_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y57"
    )
    port map (
      IA => data_memory_Mram_memory7_F7_B_317,
      IB => data_memory_Mram_memory7_F7_A_318,
      O => MemDataOut(6),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory7_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y57"
    )
    port map (
      IA => data_memory_Mram_memory7_D_320,
      IB => data_memory_Mram_memory7_C_330,
      O => data_memory_Mram_memory7_F7_B_317,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory7_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y57"
    )
    port map (
      IA => data_memory_Mram_memory7_B_339,
      IB => data_memory_Mram_memory7_A_347,
      O => data_memory_Mram_memory7_F7_A_318,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory7_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"0000000000000200"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_6_OBUF_1914,
      O => data_memory_Mram_memory7_D_320,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE1,
      WE2 => de_ex_register_res_6_INV_data_memory_Mram_memory7_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory7_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_6_OBUF_1914,
      O => data_memory_Mram_memory7_C_330,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_6_INV_data_memory_Mram_memory7_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_6 : X_FF
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(6),
      O => de_ex_register_res(6),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory7_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_6_OBUF_1914,
      O => data_memory_Mram_memory7_B_339,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_6_INV_data_memory_Mram_memory7_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory7_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_6_OBUF_1914,
      O => data_memory_Mram_memory7_A_347,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory6_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE2
    );
  INV_data_memory_Mram_memory6_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE1
    );
  INV_data_memory_Mram_memory6_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_5_INV_data_memory_Mram_memory6_CWE2
    );
  INV_data_memory_Mram_memory6_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_5_INV_data_memory_Mram_memory6_BWE1
    );
  data_memory_Mram_memory6_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y58"
    )
    port map (
      IA => data_memory_Mram_memory6_F7_B_357,
      IB => data_memory_Mram_memory6_F7_A_358,
      O => MemDataOut(5),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory6_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y58"
    )
    port map (
      IA => data_memory_Mram_memory6_D_360,
      IB => data_memory_Mram_memory6_C_370,
      O => data_memory_Mram_memory6_F7_B_357,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory6_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y58"
    )
    port map (
      IA => data_memory_Mram_memory6_B_379,
      IB => data_memory_Mram_memory6_A_387,
      O => data_memory_Mram_memory6_F7_A_358,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory6_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"0000000000000200"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_5_OBUF_1915,
      O => data_memory_Mram_memory6_D_360,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE1,
      WE2 => de_ex_register_res_5_INV_data_memory_Mram_memory6_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory6_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_5_OBUF_1915,
      O => data_memory_Mram_memory6_C_370,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_5_INV_data_memory_Mram_memory6_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_5 : X_FF
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(5),
      O => de_ex_register_res(5),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory6_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_5_OBUF_1915,
      O => data_memory_Mram_memory6_B_379,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_5_INV_data_memory_Mram_memory6_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory6_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_5_OBUF_1915,
      O => data_memory_Mram_memory6_A_387,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory2_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE2
    );
  INV_data_memory_Mram_memory2_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE1
    );
  INV_data_memory_Mram_memory2_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_1_INV_data_memory_Mram_memory2_CWE2
    );
  INV_data_memory_Mram_memory2_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_1_INV_data_memory_Mram_memory2_BWE1
    );
  data_memory_Mram_memory2_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y59"
    )
    port map (
      IA => data_memory_Mram_memory2_F7_B_397,
      IB => data_memory_Mram_memory2_F7_A_398,
      O => MemDataOut(1),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory2_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y59"
    )
    port map (
      IA => data_memory_Mram_memory2_D_400,
      IB => data_memory_Mram_memory2_C_410,
      O => data_memory_Mram_memory2_F7_B_397,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory2_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y59"
    )
    port map (
      IA => data_memory_Mram_memory2_B_419,
      IB => data_memory_Mram_memory2_A_427,
      O => data_memory_Mram_memory2_F7_A_398,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory2_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"0000000000000036"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_1_OBUF_1982,
      O => data_memory_Mram_memory2_D_400,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE1,
      WE2 => de_ex_register_res_1_INV_data_memory_Mram_memory2_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory2_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_1_OBUF_1982,
      O => data_memory_Mram_memory2_C_410,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_1_INV_data_memory_Mram_memory2_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_1 : X_FF
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(1),
      O => de_ex_register_res(1),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory2_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_1_OBUF_1982,
      O => data_memory_Mram_memory2_B_419,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_1_INV_data_memory_Mram_memory2_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory2_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_1_OBUF_1982,
      O => data_memory_Mram_memory2_A_427,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory3_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE2
    );
  INV_data_memory_Mram_memory3_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE1
    );
  INV_data_memory_Mram_memory3_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_2_INV_data_memory_Mram_memory3_CWE2
    );
  INV_data_memory_Mram_memory3_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_2_INV_data_memory_Mram_memory3_BWE1
    );
  data_memory_Mram_memory3_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X10Y61"
    )
    port map (
      IA => data_memory_Mram_memory3_F7_B_437,
      IB => data_memory_Mram_memory3_F7_A_438,
      O => MemDataOut(2),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory3_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X10Y61"
    )
    port map (
      IA => data_memory_Mram_memory3_D_440,
      IB => data_memory_Mram_memory3_C_450,
      O => data_memory_Mram_memory3_F7_B_437,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory3_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X10Y61"
    )
    port map (
      IA => data_memory_Mram_memory3_B_459,
      IB => data_memory_Mram_memory3_A_467,
      O => data_memory_Mram_memory3_F7_A_438,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory3_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"0000000000000312"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_2_OBUF_1983,
      O => data_memory_Mram_memory3_D_440,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE1,
      WE2 => de_ex_register_res_2_INV_data_memory_Mram_memory3_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory3_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_2_OBUF_1983,
      O => data_memory_Mram_memory3_C_450,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_2_INV_data_memory_Mram_memory3_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_2 : X_FF
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(2),
      O => de_ex_register_res(2),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory3_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_2_OBUF_1983,
      O => data_memory_Mram_memory3_B_459,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_2_INV_data_memory_Mram_memory3_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory3_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X10Y61",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_2_OBUF_1983,
      O => data_memory_Mram_memory3_A_467,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory5_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE2
    );
  INV_data_memory_Mram_memory5_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE1
    );
  INV_data_memory_Mram_memory5_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_4_INV_data_memory_Mram_memory5_CWE2
    );
  INV_data_memory_Mram_memory5_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_4_INV_data_memory_Mram_memory5_BWE1
    );
  data_memory_Mram_memory5_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y58"
    )
    port map (
      IA => data_memory_Mram_memory5_F7_B_477,
      IB => data_memory_Mram_memory5_F7_A_478,
      O => MemDataOut(4),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory5_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X14Y58"
    )
    port map (
      IA => data_memory_Mram_memory5_D_480,
      IB => data_memory_Mram_memory5_C_490,
      O => data_memory_Mram_memory5_F7_B_477,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory5_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X14Y58"
    )
    port map (
      IA => data_memory_Mram_memory5_B_499,
      IB => data_memory_Mram_memory5_A_507,
      O => data_memory_Mram_memory5_F7_A_478,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory5_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y58",
      INIT => X"0000000000000200"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_4_OBUF_1925,
      O => data_memory_Mram_memory5_D_480,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE1,
      WE2 => de_ex_register_res_4_INV_data_memory_Mram_memory5_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory5_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_4_OBUF_1925,
      O => data_memory_Mram_memory5_C_490,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_4_INV_data_memory_Mram_memory5_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_4 : X_FF
    generic map(
      LOC => "SLICE_X14Y58",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(4),
      O => de_ex_register_res(4),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory5_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_4_OBUF_1925,
      O => data_memory_Mram_memory5_B_499,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_4_INV_data_memory_Mram_memory5_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory5_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_4_OBUF_1925,
      O => data_memory_Mram_memory5_A_507,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_data_memory_Mram_memory8_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE2
    );
  INV_data_memory_Mram_memory8_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE1
    );
  INV_data_memory_Mram_memory8_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_0,
      O => de_ex_register_res_7_INV_data_memory_Mram_memory8_CWE2
    );
  INV_data_memory_Mram_memory8_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_6_OBUF_2034,
      O => de_ex_register_res_7_INV_data_memory_Mram_memory8_BWE1
    );
  data_memory_Mram_memory8_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X14Y59"
    )
    port map (
      IA => data_memory_Mram_memory8_F7_B_517,
      IB => data_memory_Mram_memory8_F7_A_518,
      O => MemDataOut(7),
      SEL => Addr2seg_7_OBUF_0
    );
  data_memory_Mram_memory8_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X14Y59"
    )
    port map (
      IA => data_memory_Mram_memory8_D_520,
      IB => data_memory_Mram_memory8_C_530,
      O => data_memory_Mram_memory8_F7_B_517,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory8_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X14Y59"
    )
    port map (
      IA => data_memory_Mram_memory8_B_539,
      IB => data_memory_Mram_memory8_A_547,
      O => data_memory_Mram_memory8_F7_A_518,
      SEL => Addr2seg_6_OBUF_2034
    );
  data_memory_Mram_memory8_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y59",
      INIT => X"0000000000000200"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_7_OBUF_1954,
      O => data_memory_Mram_memory8_D_520,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE1,
      WE2 => de_ex_register_res_7_INV_data_memory_Mram_memory8_DWE2,
      WE => dmWr_0
    );
  data_memory_Mram_memory8_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_7_OBUF_1954,
      O => data_memory_Mram_memory8_C_530,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => de_ex_register_res_7_INV_data_memory_Mram_memory8_CWE2,
      WE => dmWr_0
    );
  de_ex_register_res_7 : X_FF
    generic map(
      LOC => "SLICE_X14Y59",
      INIT => '0'
    )
    port map (
      CE => dataLd,
      CLK => CLK_BUFGP,
      I => MemDataOut(7),
      O => de_ex_register_res(7),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  data_memory_Mram_memory8_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_7_OBUF_1954,
      O => data_memory_Mram_memory8_B_539,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => de_ex_register_res_7_INV_data_memory_Mram_memory8_BWE1,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  data_memory_Mram_memory8_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X14Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => Addr2seg_0_OBUF_1971,
      RADR1 => Addr2seg_1_OBUF_0,
      RADR2 => Addr2seg_2_OBUF_2039,
      RADR3 => Addr2seg_3_OBUF_0,
      RADR4 => Addr2seg_4_OBUF_2047,
      RADR5 => Addr2seg_5_OBUF_0,
      CLK => CLK_BUFGP,
      I => busOut2seg_7_OBUF_1954,
      O => data_memory_Mram_memory8_A_547,
      WADR0 => Addr2seg_0_OBUF_1971,
      WADR1 => Addr2seg_1_OBUF_0,
      WADR2 => Addr2seg_2_OBUF_2039,
      WADR3 => Addr2seg_3_OBUF_0,
      WADR4 => Addr2seg_4_OBUF_2047,
      WADR5 => Addr2seg_5_OBUF_0,
      WE1 => Addr2seg_6_OBUF_2034,
      WE2 => Addr2seg_7_OBUF_0,
      WE => dmWr_0
    );
  INV_instruction_memory_Mram_memory6_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE2
    );
  INV_instruction_memory_Mram_memory6_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE1
    );
  INV_instruction_memory_Mram_memory6_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_5_INV_instruction_memory_Mram_memory6_CWE2
    );
  INV_instruction_memory_Mram_memory6_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_5_INV_instruction_memory_Mram_memory6_BWE1
    );
  InstrMemOut_5_InstrMemOut_5_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_5_Q,
      O => InstrMemOut_5_0
    );
  instruction_memory_Mram_memory6_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory6_F7_B_555,
      IB => instruction_memory_Mram_memory6_F7_A_556,
      O => InstrMemOut_5_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory6_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory6_D_558,
      IB => instruction_memory_Mram_memory6_C_568,
      O => instruction_memory_Mram_memory6_F7_B_555,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory6_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X18Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory6_B_576,
      IB => instruction_memory_Mram_memory6_A_584,
      O => instruction_memory_Mram_memory6_F7_A_556,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory6_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => X"0000000000041000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory6_D_558,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE1,
      WE2 => InstrMemOut_5_INV_instruction_memory_Mram_memory6_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory6_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory6_C_568,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_5_INV_instruction_memory_Mram_memory6_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory6_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory6_B_576,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_5_INV_instruction_memory_Mram_memory6_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory6_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory6_A_584,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory5_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE2
    );
  INV_instruction_memory_Mram_memory5_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE1
    );
  INV_instruction_memory_Mram_memory5_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_4_INV_instruction_memory_Mram_memory5_CWE2
    );
  INV_instruction_memory_Mram_memory5_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_4_INV_instruction_memory_Mram_memory5_BWE1
    );
  InstrMemOut_4_InstrMemOut_4_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_4_Q,
      O => InstrMemOut_4_0
    );
  instruction_memory_Mram_memory5_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory5_F7_B_592,
      IB => instruction_memory_Mram_memory5_F7_A_593,
      O => InstrMemOut_4_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory5_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory5_D_595,
      IB => instruction_memory_Mram_memory5_C_605,
      O => instruction_memory_Mram_memory5_F7_B_592,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory5_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X18Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory5_B_613,
      IB => instruction_memory_Mram_memory5_A_621,
      O => instruction_memory_Mram_memory5_F7_A_593,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory5_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"0000000000051000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory5_D_595,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE1,
      WE2 => InstrMemOut_4_INV_instruction_memory_Mram_memory5_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory5_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory5_C_605,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_4_INV_instruction_memory_Mram_memory5_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory5_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory5_B_613,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_4_INV_instruction_memory_Mram_memory5_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory5_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory5_A_621,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory3_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE2
    );
  INV_instruction_memory_Mram_memory3_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE1
    );
  INV_instruction_memory_Mram_memory3_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_2_INV_instruction_memory_Mram_memory3_CWE2
    );
  INV_instruction_memory_Mram_memory3_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_2_INV_instruction_memory_Mram_memory3_BWE1
    );
  InstrMemOut_2_InstrMemOut_2_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_2_Q,
      O => InstrMemOut_2_0
    );
  instruction_memory_Mram_memory3_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory3_F7_B_629,
      IB => instruction_memory_Mram_memory3_F7_A_630,
      O => InstrMemOut_2_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory3_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory3_D_632,
      IB => instruction_memory_Mram_memory3_C_642,
      O => instruction_memory_Mram_memory3_F7_B_629,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory3_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X18Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory3_B_650,
      IB => instruction_memory_Mram_memory3_A_658,
      O => instruction_memory_Mram_memory3_F7_A_630,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory3_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => X"0000000000047700"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory3_D_632,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE1,
      WE2 => InstrMemOut_2_INV_instruction_memory_Mram_memory3_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory3_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory3_C_642,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_2_INV_instruction_memory_Mram_memory3_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory3_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory3_B_650,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_2_INV_instruction_memory_Mram_memory3_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory3_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X18Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory3_A_658,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  Addr2seg_2_OBUF_Addr2seg_2_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_3_OBUF_677,
      O => Addr2seg_3_OBUF_0
    );
  Addr2seg_2_OBUF_Addr2seg_2_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_5_OBUF_670,
      O => Addr2seg_5_OBUF_0
    );
  data_memory_mux_G1_2_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y57",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => addrMd,
      ADR3 => fe_de_register_res_2_Q,
      ADR4 => de_ex_register_res(2),
      ADR5 => '1',
      O => Addr2seg_2_OBUF_2039
    );
  data_memory_mux_G1_3_muxes_Mmux_f11 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y57",
      INIT => X"CACACACA"
    )
    port map (
      ADR0 => fe_de_register_res_3_Q,
      ADR1 => de_ex_register_res(3),
      ADR2 => addrMd,
      ADR3 => '1',
      ADR4 => '1',
      O => Addr2seg_3_OBUF_677
    );
  data_memory_mux_G1_4_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y57",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => addrMd,
      ADR3 => fe_de_register_res_4_Q,
      ADR4 => de_ex_register_res(4),
      ADR5 => '1',
      O => Addr2seg_4_OBUF_2047
    );
  data_memory_mux_G1_5_muxes_Mmux_f11 : X_LUT5
    generic map(
      LOC => "SLICE_X20Y57",
      INIT => X"CACACACA"
    )
    port map (
      ADR0 => fe_de_register_res_6_Q,
      ADR1 => de_ex_register_res(5),
      ADR2 => addrMd,
      ADR3 => '1',
      ADR4 => '1',
      O => Addr2seg_5_OBUF_670
    );
  buss_G1_2_muxes_mux3_Mmux_y1_buss_G1_2_muxes_mux3_Mmux_y1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N41,
      O => N41_0
    );
  alu_adder_fa3_co1_SW4 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y58"
    )
    port map (
      IA => N59,
      IB => N60,
      O => N41,
      SEL => busOut2seg_4_OBUF_1925
    );
  alu_adder_fa3_co1_SW4_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y58",
      INIT => X"F8E0F0C0FE80FC00"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_2_Q,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N59
    );
  alu_adder_fa3_co1_SW4_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y58",
      INIT => X"80FE00FCE0F8C0F0"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_2_Q,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N60
    );
  buss_G1_2_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y58",
      INIT => X"000000CC00AAF000"
    )
    port map (
      ADR0 => fe_de_register_res_2_Q,
      ADR1 => de_ex_register_res(2),
      ADR2 => acc_register_res(2),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_2_muxes_mux3_Mmux_y1
    );
  alu_Mxor_b_int_2_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y58",
      INIT => X"3300CCFF33F3CCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => externalIn_2_IBUF_0,
      ADR2 => N16,
      ADR3 => ext2bus,
      ADR4 => aluMd(0),
      ADR5 => buss_G1_2_muxes_mux3_Mmux_y1,
      O => alu_b_int_2_Q
    );
  N22_N22_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N39,
      O => N39_0
    );
  alu_adder_fa3_co1_SW3 : X_MUX2
    generic map(
      LOC => "SLICE_X20Y59"
    )
    port map (
      IA => N57,
      IB => N58,
      O => N39,
      SEL => busOut2seg_5_OBUF_1915
    );
  alu_adder_fa3_co1_SW3_F : X_LUT6
    generic map(
      LOC => "SLICE_X20Y59",
      INIT => X"EAAAFAA8FEA0FF80"
    )
    port map (
      ADR0 => acc_register_res(5),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N57
    );
  alu_adder_fa3_co1_SW3_G : X_LUT6
    generic map(
      LOC => "SLICE_X20Y59",
      INIT => X"80FFA0FEA8FAAAEA"
    )
    port map (
      ADR0 => acc_register_res(5),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N58
    );
  alu_adder_fa5_co1_SW3 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y59",
      INIT => X"A955A6FAAA56A5F9"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_6_OBUF_1914,
      ADR5 => busOut2seg_5_OBUF_1915,
      O => N22
    );
  controller_Mmux_aluMd11 : X_LUT6
    generic map(
      LOC => "SLICE_X20Y59",
      INIT => X"000000000000FF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => fe_de_register_res_11_Q,
      O => aluMd(0)
    );
  Addr2seg_6_OBUF_Addr2seg_6_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_7_OBUF_738,
      O => Addr2seg_7_OBUF_0
    );
  data_memory_mux_G1_6_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y57",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => addrMd,
      ADR3 => fe_de_register_res_6_Q,
      ADR4 => de_ex_register_res(6),
      ADR5 => '1',
      O => Addr2seg_6_OBUF_2034
    );
  data_memory_mux_G1_7_muxes_Mmux_f11 : X_LUT5
    generic map(
      LOC => "SLICE_X21Y57",
      INIT => X"CFC0CFC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => de_ex_register_res(7),
      ADR2 => addrMd,
      ADR3 => fe_de_register_res_6_Q,
      ADR4 => '1',
      O => Addr2seg_7_OBUF_738
    );
  buss_G1_2_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_2_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_2_muxes_mux3_Mmux_y1,
      O => busOut2seg_2_OBUF_1983
    );
  fe_register_res_2 : X_FF
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(2),
      O => fe_register_res(2),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_2_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => X"CFFCFFCC03303300"
    )
    port map (
      ADR0 => '1',
      ADR1 => pcSel_0,
      ADR2 => fe_register_res(1),
      ADR3 => fe_register_res(2),
      ADR4 => fe_register_res(0),
      ADR5 => busOut2seg_2_OBUF_1983,
      O => nxtpc(2)
    );
  fe_register_res_1 : X_FF
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(1),
      O => fe_register_res(1),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_1_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => X"F0FFFFF0000F0F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => pcSel_0,
      ADR3 => fe_register_res(1),
      ADR4 => fe_register_res(0),
      ADR5 => busOut2seg_1_OBUF_1982,
      O => nxtpc(1)
    );
  fe_register_res_0 : X_FF
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(0),
      O => fe_register_res(0),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_0_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y58",
      INIT => X"20FF00FF00DF00FF"
    )
    port map (
      ADR0 => fe_de_register_res_10_Q,
      ADR1 => N2,
      ADR2 => fe_de_register_res_11_Q,
      ADR3 => fe_register_res(0),
      ADR4 => controller_state_FSM_FFd1_1931,
      ADR5 => busOut2seg_0_OBUF_1984,
      O => nxtpc(0)
    );
  controller_dmWr1 : X_LUT6
    generic map(
      LOC => "SLICE_X21Y59",
      INIT => X"6220202042000000"
    )
    port map (
      ADR0 => fe_de_register_res_11_Q,
      ADR1 => fe_de_register_res_10_Q,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => controller_state_FSM_FFd2_1918,
      ADR4 => controller_state_FSM_FFd3_1917,
      ADR5 => controller_state_FSM_FFd1_1931,
      O => controller_dmWr
    );
  alu_adder_fa3_co1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"9333C93CC336CC6C"
    )
    port map (
      ADR0 => acc_register_res(3),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => buss_G1_4_muxes_mux3_Mmux_y12_2014,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N25
    );
  alu_Mmux_ALU_Out_int61 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"3333366CC993CCCC"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => busOut2seg_5_OBUF_1915,
      ADR2 => alu_b_int_2_Q,
      ADR3 => alu_adder_c_int_1_Q,
      ADR4 => N24,
      ADR5 => N25,
      O => alu_Mmux_ALU_Out_int6
    );
  buss_G1_3_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"000000CC00AAF000"
    )
    port map (
      ADR0 => fe_de_register_res_3_Q,
      ADR1 => de_ex_register_res(3),
      ADR2 => acc_register_res(3),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_3_muxes_mux3_Mmux_y1
    );
  buss_G1_3_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y57",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_3_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_3_muxes_mux3_Mmux_y1,
      O => busOut2seg_3_OBUF_1929
    );
  controller_dispLd1 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y58",
      INIT => X"2000000000000000"
    )
    port map (
      ADR0 => fe_de_register_res_11_Q,
      ADR1 => controller_state_FSM_FFd2_1918,
      ADR2 => controller_state_FSM_FFd3_1917,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_9_Q,
      ADR5 => fe_de_register_res_10_Q,
      O => dispLd
    );
  N21_N21_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N42_pack_9,
      O => N42
    );
  alu_adder_fa3_co1_SW5 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y59"
    )
    port map (
      IA => N61,
      IB => N62,
      O => N42_pack_9,
      SEL => busOut2seg_4_OBUF_1925
    );
  alu_adder_fa3_co1_SW5_F : X_LUT6
    generic map(
      LOC => "SLICE_X22Y59",
      INIT => X"FCF0F8E0FFC0FE80"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_2_Q,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N61
    );
  alu_adder_fa3_co1_SW5_G : X_LUT6
    generic map(
      LOC => "SLICE_X22Y59",
      INIT => X"C0FF80FEF0FCE0F8"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_2_Q,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N62
    );
  alu_adder_fa5_co1_SW2 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y59",
      INIT => X"A556AAF9A95AA6F5"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_6_OBUF_1914,
      ADR5 => busOut2seg_5_OBUF_1915,
      O => N21
    );
  alu_Mmux_ALU_Out_int71 : X_LUT6
    generic map(
      LOC => "SLICE_X22Y59",
      INIT => X"0F0F03CF0C3F00FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => alu_adder_c_int_1_Q,
      ADR2 => N22,
      ADR3 => N21,
      ADR4 => N42,
      ADR5 => N41_0,
      O => aluOut2seg_6_OBUF_1948
    );
  INV_instruction_memory_Mram_memory2_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE2
    );
  INV_instruction_memory_Mram_memory2_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE1
    );
  INV_instruction_memory_Mram_memory2_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_1_INV_instruction_memory_Mram_memory2_CWE2
    );
  INV_instruction_memory_Mram_memory2_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_1_INV_instruction_memory_Mram_memory2_BWE1
    );
  InstrMemOut_1_InstrMemOut_1_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_1_Q,
      O => InstrMemOut_1_0
    );
  instruction_memory_Mram_memory2_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X22Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory2_F7_B_847,
      IB => instruction_memory_Mram_memory2_F7_A_848,
      O => InstrMemOut_1_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory2_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X22Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory2_D_850,
      IB => instruction_memory_Mram_memory2_C_860,
      O => instruction_memory_Mram_memory2_F7_B_847,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory2_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X22Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory2_B_868,
      IB => instruction_memory_Mram_memory2_A_876,
      O => instruction_memory_Mram_memory2_F7_A_848,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory2_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"00000000000D704C"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory2_D_850,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE1,
      WE2 => InstrMemOut_1_INV_instruction_memory_Mram_memory2_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory2_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory2_C_860,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_1_INV_instruction_memory_Mram_memory2_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory2_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory2_B_868,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_1_INV_instruction_memory_Mram_memory2_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory2_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X22Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory2_A_876,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  controller_pcLd1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y55",
      INIT => X"2802020202822222"
    )
    port map (
      ADR0 => controller_state_FSM_FFd3_1917,
      ADR1 => controller_state_FSM_FFd2_1918,
      ADR2 => fe_de_register_res_11_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_9_Q,
      ADR5 => fe_de_register_res_10_Q,
      O => controller_pcLd
    );
  controller_pcLd2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y55",
      INIT => X"FFFFFFFF08808080"
    )
    port map (
      ADR0 => fe_de_register_res_11_Q,
      ADR1 => controller_state_FSM_FFd1_1931,
      ADR2 => fe_de_register_res_10_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_9_Q,
      ADR5 => controller_pcLd,
      O => pcLd
    );
  fe_register_res_6 : X_FF
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(6),
      O => fe_register_res(6),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_6_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => X"F0FFFFF0000F0F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => pcSel_0,
      ADR3 => fe_register_res(6),
      ADR4 => pcincer_rca_c_int_5_Q,
      ADR5 => busOut2seg_6_OBUF_1914,
      O => nxtpc(6)
    );
  fe_register_res_5 : X_FF
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(5),
      O => fe_register_res(5),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_5_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => X"CFFCFFCC03303300"
    )
    port map (
      ADR0 => '1',
      ADR1 => pcSel_0,
      ADR2 => fe_register_res(4),
      ADR3 => fe_register_res(5),
      ADR4 => pcincer_rca_c_int_3_0,
      ADR5 => busOut2seg_5_OBUF_1915,
      O => nxtpc(5)
    );
  fe_register_res_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(4),
      O => fe_register_res(4),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_4_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => X"BFEAFFAA15405500"
    )
    port map (
      ADR0 => pcSel_0,
      ADR1 => fe_register_res(3),
      ADR2 => fe_register_res(2),
      ADR3 => fe_register_res(4),
      ADR4 => pcincer_rca_c_int_1_Q,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => nxtpc(4)
    );
  fe_register_res_3 : X_FF
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(3),
      O => fe_register_res(3),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_3_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y56",
      INIT => X"BFEAFFAA15405500"
    )
    port map (
      ADR0 => pcSel_0,
      ADR1 => fe_register_res(2),
      ADR2 => fe_register_res(1),
      ADR3 => fe_register_res(3),
      ADR4 => fe_register_res(0),
      ADR5 => busOut2seg_3_OBUF_1929,
      O => nxtpc(3)
    );
  fe_de_register_res_9 : X_FF
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_9_0,
      O => fe_de_register_res_9_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  fe_de_register_res_8 : X_FF
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_8_0,
      O => fe_de_register_res_8_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  fe_de_register_res_6 : X_FF
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_5_0,
      O => fe_de_register_res_6_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  fe_de_register_res_4 : X_FF
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_4_0,
      O => fe_de_register_res_4_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_adder_fa3_co1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y57",
      INIT => X"3336C36C933CC9CC"
    )
    port map (
      ADR0 => acc_register_res(3),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => buss_G1_4_muxes_mux3_Mmux_y12_2014,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N24
    );
  controller_state_FSM_FFd3_controller_state_FSM_FFd3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controller_dataLd_pack_15,
      O => controller_dataLd
    );
  buss_G1_2_muxes_mux3_Mmux_y12_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"F0F000DD0D2DDD2D"
    )
    port map (
      ADR0 => controller_state_FSM_FFd3_1917,
      ADR1 => controller_state_FSM_FFd2_1918,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_9_Q,
      ADR5 => fe_de_register_res_11_Q,
      O => N16
    );
  controller_state_FSM_FFd3 : X_FF
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => controller_state_FSM_FFd3_In,
      O => controller_state_FSM_FFd3_1917,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  controller_state_FSM_FFd3_In2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"0FF00F000FF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => master_load_enable_IBUF_0,
      ADR3 => controller_state_FSM_FFd3_1917,
      ADR4 => controller_state_FSM_FFd3_In1_2078,
      ADR5 => '1',
      O => controller_state_FSM_FFd3_In
    );
  controller_dataLd1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"00880088"
    )
    port map (
      ADR0 => controller_state_FSM_FFd2_1918,
      ADR1 => fe_de_register_res_11_Q,
      ADR2 => '1',
      ADR3 => controller_state_FSM_FFd3_1917,
      ADR4 => '1',
      O => controller_dataLd_pack_15
    );
  controller_state_FSM_FFd3_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"A2222666A2222222"
    )
    port map (
      ADR0 => controller_state_FSM_FFd1_1931,
      ADR1 => fe_de_register_res_11_Q,
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => controller_state_FSM_FFd2_1918,
      O => controller_state_FSM_FFd3_In1_2078
    );
  controller_dataLd2 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y58",
      INIT => X"022A3B3B022A2A2A"
    )
    port map (
      ADR0 => controller_state_FSM_FFd1_1931,
      ADR1 => fe_de_register_res_10_Q,
      ADR2 => fe_de_register_res_11_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_9_Q,
      ADR5 => controller_dataLd,
      O => dataLd
    );
  Addr2seg_0_OBUF_Addr2seg_0_OBUF_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => Addr2seg_1_OBUF_979,
      O => Addr2seg_1_OBUF_0
    );
  Addr2seg_0_OBUF_Addr2seg_0_OBUF_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => pcSel,
      O => pcSel_0
    );
  Addr2seg_0_OBUF_Addr2seg_0_OBUF_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => dmWr,
      O => dmWr_0
    );
  data_memory_mux_G1_0_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => addrMd,
      ADR3 => fe_de_register_res_0_Q,
      ADR4 => de_ex_register_res(0),
      ADR5 => '1',
      O => Addr2seg_0_OBUF_1971
    );
  data_memory_mux_G1_1_muxes_Mmux_f11 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"CACACACA"
    )
    port map (
      ADR0 => fe_de_register_res_1_Q,
      ADR1 => de_ex_register_res(1),
      ADR2 => addrMd,
      ADR3 => '1',
      ADR4 => '1',
      O => Addr2seg_1_OBUF_979
    );
  controller_addrMd : X_LUT6
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"0020000000200202"
    )
    port map (
      ADR0 => controller_state_FSM_FFd2_1918,
      ADR1 => N01,
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => controller_state_FSM_FFd3_1917,
      ADR5 => controller_state_FSM_FFd1_1931,
      O => addrMd
    );
  controller_addrMd_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"FF00FFFFFF00FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_11_Q,
      ADR5 => '1',
      O => N01
    );
  controller_Mmux_pcSel1 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"0C000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => controller_state_FSM_FFd1_1931,
      ADR2 => N2,
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_11_Q,
      O => pcSel
    );
  controller_Mmux_pcSel1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"CC0CFF0CCC0CFF0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => fe_de_register_res_9_Q,
      ADR2 => freg_res_1_0,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => freg_res(2),
      ADR5 => '1',
      O => N2
    );
  controller_dmWr2 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y59",
      INIT => X"88888888"
    )
    port map (
      ADR0 => controller_dmWr,
      ADR1 => fe_de_register_res_9_Q,
      ADR2 => '1',
      ADR3 => '1',
      ADR4 => '1',
      O => dmWr
    );
  controller_state_FSM_FFd1_controller_state_FSM_FFd1_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N4_pack_4,
      O => N4
    );
  controller_state_FSM_FFd1_controller_state_FSM_FFd1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => controller_state_FSM_FFd2_pack_2,
      O => controller_state_FSM_FFd2_1918
    );
  controller_Mmux_aluMd21 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => X"0003300000033000"
    )
    port map (
      ADR0 => '1',
      ADR1 => fe_de_register_res_11_Q,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => fe_de_register_res_9_Q,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => '1',
      O => aluMd(1)
    );
  controller_state_FSM_FFd2_In_SW0 : X_LUT5
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => X"DFFFF377"
    )
    port map (
      ADR0 => controller_state_FSM_FFd1_1931,
      ADR1 => fe_de_register_res_11_Q,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => fe_de_register_res_9_Q,
      ADR4 => fe_de_register_res_10_Q,
      O => N4_pack_4
    );
  controller_state_FSM_FFd1 : X_FF
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => controller_state_FSM_FFd1_In,
      O => controller_state_FSM_FFd1_1931,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  controller_state_FSM_FFd1_In1 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => X"33003F0C33003F0C"
    )
    port map (
      ADR0 => '1',
      ADR1 => master_load_enable_IBUF_0,
      ADR2 => controller_state_FSM_FFd3_1917,
      ADR3 => controller_state_FSM_FFd1_1931,
      ADR4 => controller_state_FSM_FFd2_1918,
      ADR5 => '1',
      O => controller_state_FSM_FFd1_In
    );
  controller_state_FSM_FFd2_In : X_LUT5
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => X"37370C0C"
    )
    port map (
      ADR0 => N4,
      ADR1 => master_load_enable_IBUF_0,
      ADR2 => controller_state_FSM_FFd3_1917,
      ADR3 => '1',
      ADR4 => controller_state_FSM_FFd2_1918,
      O => controller_state_FSM_FFd2_In_1019
    );
  controller_state_FSM_FFd2 : X_FF
    generic map(
      LOC => "SLICE_X23Y60",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => controller_state_FSM_FFd2_In_1019,
      O => controller_state_FSM_FFd2_pack_2,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_cmpZero_eq_SW0_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X23Y61",
      INIT => X"C003C00FC033C0FF"
    )
    port map (
      ADR0 => '1',
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(3),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => busOut2seg_3_OBUF_1929,
      O => N10
    );
  N36_N36_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N36,
      O => N36_0
    );
  alu_adder_fa5_co1_SW5 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y55"
    )
    port map (
      IA => N53,
      IB => N54,
      O => N36,
      SEL => busOut2seg_6_OBUF_1914
    );
  alu_adder_fa5_co1_SW5_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"EAAAFE88EEA8FF80"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N53
    );
  alu_adder_fa5_co1_SW5_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y55",
      INIT => X"80FFA8EE88FEAAEA"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N54
    );
  fe_de_register_res_10_1_fe_de_register_res_10_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N33,
      O => N33_0
    );
  alu_Mmux_ALU_Out_int81_SW3 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y56"
    )
    port map (
      IA => N49,
      IB => N50,
      O => N33,
      SEL => N13
    );
  alu_Mmux_ALU_Out_int81_SW3_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"DCECDFEF10001303"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => accSel,
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_7_Q,
      ADR5 => busOut2seg_7_OBUF_1954,
      O => N49
    );
  alu_Mmux_ALU_Out_int81_SW3_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"DFEF1303DCEC1000"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => accSel,
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_7_OBUF_1954,
      ADR5 => alu_b_int_7_Q,
      O => N50
    );
  alu_Mxor_b_int_7_xo_0_1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"3300CCFF333FCCC0"
    )
    port map (
      ADR0 => '1',
      ADR1 => externalIn_7_IBUF_0,
      ADR2 => N27,
      ADR3 => ext2bus,
      ADR4 => aluMd(0),
      ADR5 => buss_G1_7_muxes_mux3_Mmux_y1,
      O => alu_b_int_7_Q
    );
  fe_de_register_res_10_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_10_0,
      O => fe_de_register_res_10_1_2011,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_7_muxes_mux3_Mmux_y12_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y56",
      INIT => X"9989FF8F33037707"
    )
    port map (
      ADR0 => fe_de_register_res_9_Q,
      ADR1 => fe_de_register_res_11_Q,
      ADR2 => controller_state_FSM_FFd3_1917,
      ADR3 => controller_state_FSM_FFd2_1918,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => fe_de_register_res_8_Q,
      O => N27
    );
  acc_register_res_7_acc_register_res_7_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N32_pack_9,
      O => N32
    );
  alu_Mmux_ALU_Out_int81_SW2 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y57"
    )
    port map (
      IA => N47,
      IB => N48,
      O => N32_pack_9,
      SEL => N12
    );
  alu_Mmux_ALU_Out_int81_SW2_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => X"DFEFDCEC13031000"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => accSel,
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_7_Q,
      ADR5 => busOut2seg_7_OBUF_1954,
      O => N47
    );
  alu_Mmux_ALU_Out_int81_SW2_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => X"DCECDFEF10001303"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => accSel,
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => alu_b_int_7_Q,
      ADR5 => busOut2seg_7_OBUF_1954,
      O => N48
    );
  controller_dmRd1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => X"0000070000005F00"
    )
    port map (
      ADR0 => fe_de_register_res_10_1_2011,
      ADR1 => fe_de_register_res_8_1_1990,
      ADR2 => fe_de_register_res_11_1_2012,
      ADR3 => controller_state_FSM_FFd3_1917,
      ADR4 => controller_state_FSM_FFd2_1918,
      ADR5 => fe_de_register_res_9_Q,
      O => dmRd
    );
  acc_register_res_7 : X_FF
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(7),
      O => acc_register_res(7),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_7_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y57",
      INIT => X"FFBE4100FF28D700"
    )
    port map (
      ADR0 => acc_register_res(4),
      ADR1 => aluMd(0),
      ADR2 => busOut2seg_4_OBUF_1925,
      ADR3 => N32,
      ADR4 => N33_0,
      ADR5 => alu_adder_c_int_3_Q,
      O => ACCIn(7)
    );
  fe_de_register_res_11_1_fe_de_register_res_11_1_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N38,
      O => N38_0
    );
  alu_adder_fa3_co1_SW2 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y58"
    )
    port map (
      IA => N55,
      IB => N56,
      O => N38,
      SEL => busOut2seg_5_OBUF_1915
    );
  alu_adder_fa3_co1_SW2_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y58",
      INIT => X"AAA8EAA0FA80FE00"
    )
    port map (
      ADR0 => acc_register_res(5),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N55
    );
  alu_adder_fa3_co1_SW2_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y58",
      INIT => X"00FE80FAA0EAA8AA"
    )
    port map (
      ADR0 => acc_register_res(5),
      ADR1 => acc_register_res(3),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N56
    );
  buss_G1_4_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y58",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_4_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_4_muxes_mux3_Mmux_y1,
      O => busOut2seg_4_OBUF_1925
    );
  fe_de_register_res_11_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_11_0,
      O => fe_de_register_res_11_1_2012,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_adder_fa3_co1_SW6 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y58",
      INIT => X"C336C93CCCF9C6F3"
    )
    port map (
      ADR0 => acc_register_res(3),
      ADR1 => acc_register_res(4),
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N44
    );
  controller_flagLd1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y59",
      INIT => X"0000000404440444"
    )
    port map (
      ADR0 => controller_state_FSM_FFd2_1918,
      ADR1 => controller_state_FSM_FFd3_1917,
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_8_Q,
      ADR5 => fe_de_register_res_11_Q,
      O => flagLd
    );
  freg_res_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y59",
      INIT => '0'
    )
    port map (
      CE => flagLd,
      CLK => CLK_BUFGP,
      I => FlagInp(3),
      O => freg_res(3),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_adder_fa7_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y59",
      INIT => X"FCFCC0C0C0FCC0FC"
    )
    port map (
      ADR0 => '1',
      ADR1 => acc_register_res(7),
      ADR2 => alu_b_int_7_Q,
      ADR3 => N35_0,
      ADR4 => N36_0,
      ADR5 => alu_adder_c_int_3_Q,
      O => FlagInp(3)
    );
  alu_adder_fa3_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y59",
      INIT => X"CFFC8EE88EE80CC0"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => aluMd(0),
      ADR3 => busOut2seg_3_OBUF_1929,
      ADR4 => alu_b_int_2_Q,
      ADR5 => alu_adder_c_int_1_Q,
      O => alu_adder_c_int_3_Q
    );
  alu_Mmux_ALU_Out_int82 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y59",
      INIT => X"0041BEFF00D728FF"
    )
    port map (
      ADR0 => acc_register_res(4),
      ADR1 => aluMd(0),
      ADR2 => busOut2seg_4_OBUF_1925,
      ADR3 => N18,
      ADR4 => N19,
      ADR5 => alu_adder_c_int_3_Q,
      O => aluOut2seg_7_OBUF_1952
    );
  N45_N45_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => N35,
      O => N35_0
    );
  alu_adder_fa5_co1_SW4 : X_MUX2
    generic map(
      LOC => "SLICE_X24Y60"
    )
    port map (
      IA => N51,
      IB => N52,
      O => N35,
      SEL => busOut2seg_6_OBUF_1914
    );
  alu_adder_fa5_co1_SW4_F : X_LUT6
    generic map(
      LOC => "SLICE_X24Y60",
      INIT => X"5557117F157701FF"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N51
    );
  alu_adder_fa5_co1_SW4_G : X_LUT6
    generic map(
      LOC => "SLICE_X24Y60",
      INIT => X"FF0177157F115755"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N52
    );
  alu_adder_fa3_co1_SW7 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y60",
      INIT => X"C933CC36C6FCC3F9"
    )
    port map (
      ADR0 => acc_register_res(3),
      ADR1 => acc_register_res(4),
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N45
    );
  alu_Mmux_ALU_Out_int51 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y60",
      INIT => X"0000033FFCC0FFFF"
    )
    port map (
      ADR0 => '1',
      ADR1 => acc_register_res(2),
      ADR2 => alu_b_int_2_Q,
      ADR3 => alu_adder_c_int_1_Q,
      ADR4 => N44,
      ADR5 => N45,
      O => aluOut2seg_4_OBUF_1949
    );
  acc_register_res_3_acc_register_res_3_CMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => acc_register_res_2_pack_10,
      O => acc_register_res(2)
    );
  acc_register_res_3 : X_FF
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(3),
      O => acc_register_res(3),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_3_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => X"BFFB1151AEEA0040"
    )
    port map (
      ADR0 => accSel,
      ADR1 => aluMd(1),
      ADR2 => aluMd(0),
      ADR3 => acc_register_res(3),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => alu_Mmux_ALU_Out_int4,
      O => ACCIn(3)
    );
  acc_register_res_1 : X_FF
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(1),
      O => acc_register_res(1),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_1_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => X"FFF00F00FFF00F00"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => accSel,
      ADR3 => aluOut2seg_1_OBUF_1944,
      ADR4 => busOut2seg_1_OBUF_1982,
      ADR5 => '1',
      O => ACCIn(1)
    );
  acc_mux_G1_2_muxes_Mmux_f11 : X_LUT5
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => X"ACACACAC"
    )
    port map (
      ADR0 => busOut2seg_2_OBUF_1983,
      ADR1 => aluOut2seg_2_OBUF_1950,
      ADR2 => accSel,
      ADR3 => '1',
      ADR4 => '1',
      O => ACCIn(2)
    );
  acc_register_res_2 : X_FF
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(2),
      O => acc_register_res_2_pack_10,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_Mmux_ALU_Out_int31 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => X"6A62595159516A62"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => aluMd(1),
      ADR2 => aluMd(0),
      ADR3 => busOut2seg_2_OBUF_1983,
      ADR4 => alu_b_int_2_Q,
      ADR5 => alu_adder_c_int_1_Q,
      O => aluOut2seg_2_OBUF_1950
    );
  alu_Mmux_ALU_Out_int2 : X_LUT6
    generic map(
      LOC => "SLICE_X24Y61",
      INIT => X"56A9590655A55A0A"
    )
    port map (
      ADR0 => acc_register_res(1),
      ADR1 => acc_register_res(0),
      ADR2 => aluMd(1),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_1_OBUF_1982,
      ADR5 => busOut2seg_0_OBUF_1984,
      O => aluOut2seg_1_OBUF_1944
    );
  pcincer_rca_fa5_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y55",
      INIT => X"8000000000000000"
    )
    port map (
      ADR0 => fe_register_res(5),
      ADR1 => fe_register_res(4),
      ADR2 => fe_register_res(3),
      ADR3 => fe_register_res(2),
      ADR4 => fe_register_res(1),
      ADR5 => fe_register_res(0),
      O => pcincer_rca_c_int_5_Q
    );
  alu_cmp_neq_int_0_4 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => X"7733DDCCF7F3FDFC"
    )
    port map (
      ADR0 => acc_register_res(0),
      ADR1 => acc_register_res(7),
      ADR2 => acc_register_res(6),
      ADR3 => busOut2seg_0_OBUF_1984,
      ADR4 => busOut2seg_7_OBUF_1954,
      ADR5 => busOut2seg_6_OBUF_1914,
      O => alu_cmp_neq_int_0_3_1985
    );
  fe_register_res_7 : X_FF
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => '0'
    )
    port map (
      CE => pcLd,
      CLK => CLK_BUFGP,
      I => nxtpc(7),
      O => fe_register_res(7),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  pcmux_G1_7_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => X"CFFCFFCC03303300"
    )
    port map (
      ADR0 => '1',
      ADR1 => pcSel_0,
      ADR2 => fe_register_res(6),
      ADR3 => fe_register_res(7),
      ADR4 => pcincer_rca_c_int_5_Q,
      ADR5 => busOut2seg_7_OBUF_1954,
      O => nxtpc(7)
    );
  buss_G1_7_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => X"000000AA00CCF000"
    )
    port map (
      ADR0 => de_ex_register_res(7),
      ADR1 => fe_de_register_res_6_Q,
      ADR2 => acc_register_res(7),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_7_muxes_mux3_Mmux_y1
    );
  buss_G1_7_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y56",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_7_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_7_muxes_mux3_Mmux_y1,
      O => busOut2seg_7_OBUF_1954
    );
  alu_adder_fa5_co1_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => X"95AAA99999A9AA95"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => acc_register_res(6),
      ADR2 => acc_register_res(5),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_6_OBUF_1914,
      ADR5 => busOut2seg_5_OBUF_1915,
      O => N13
    );
  alu_Mmux_ALU_Out_int81_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => X"8A22DF77DF778A22"
    )
    port map (
      ADR0 => aluMd(1),
      ADR1 => aluMd(0),
      ADR2 => busOut2seg_7_OBUF_1954,
      ADR3 => acc_register_res(7),
      ADR4 => alu_b_int_7_Q,
      ADR5 => N13,
      O => N19
    );
  buss_G1_5_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => X"000000AA00CCF000"
    )
    port map (
      ADR0 => de_ex_register_res(5),
      ADR1 => fe_de_register_res_6_Q,
      ADR2 => acc_register_res(5),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_5_muxes_mux3_Mmux_y1
    );
  fe_de_register_res_8_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_8_0,
      O => fe_de_register_res_8_1_1990,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_5_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y57",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_5_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_5_muxes_mux3_Mmux_y1,
      O => busOut2seg_5_OBUF_1915
    );
  alu_adder_fa5_co1_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => X"AA56666A6A6656AA"
    )
    port map (
      ADR0 => acc_register_res(7),
      ADR1 => acc_register_res(6),
      ADR2 => acc_register_res(5),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_6_OBUF_1914,
      ADR5 => busOut2seg_5_OBUF_1915,
      O => N12
    );
  alu_Mmux_ALU_Out_int81_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => X"DF778A228A22DF77"
    )
    port map (
      ADR0 => aluMd(1),
      ADR1 => aluMd(0),
      ADR2 => busOut2seg_7_OBUF_1954,
      ADR3 => acc_register_res(7),
      ADR4 => alu_b_int_7_Q,
      ADR5 => N12,
      O => N18
    );
  fe_de_register_res_11 : X_FF
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_11_0,
      O => fe_de_register_res_11_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_6_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => X"000000AA00CCF000"
    )
    port map (
      ADR0 => de_ex_register_res(6),
      ADR1 => fe_de_register_res_6_Q,
      ADR2 => acc_register_res(6),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_6_muxes_mux3_Mmux_y1
    );
  fe_de_register_res_10 : X_FF
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_10_0,
      O => fe_de_register_res_10_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_6_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y58",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_6_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_6_muxes_mux3_Mmux_y1,
      O => busOut2seg_6_OBUF_1914
    );
  fe_de_register_res_3 : X_FF
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_3_0,
      O => fe_de_register_res_3_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_adder_fa1_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => X"C0FCFCC0CCCCFF00"
    )
    port map (
      ADR0 => '1',
      ADR1 => acc_register_res(1),
      ADR2 => acc_register_res(0),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_1_OBUF_1982,
      ADR5 => busOut2seg_0_OBUF_1984,
      O => alu_adder_c_int_1_Q
    );
  fe_de_register_res_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_2_0,
      O => fe_de_register_res_2_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_Mmux_ALU_Out_int41 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => X"3CC369966996C33C"
    )
    port map (
      ADR0 => acc_register_res(2),
      ADR1 => acc_register_res(3),
      ADR2 => aluMd(0),
      ADR3 => busOut2seg_3_OBUF_1929,
      ADR4 => alu_b_int_2_Q,
      ADR5 => alu_adder_c_int_1_Q,
      O => alu_Mmux_ALU_Out_int4
    );
  fe_de_register_res_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_1_0,
      O => fe_de_register_res_1_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_1_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => X"00000A0A0F00C0C0"
    )
    port map (
      ADR0 => de_ex_register_res(1),
      ADR1 => acc_register_res(1),
      ADR2 => acc2bus,
      ADR3 => fe_de_register_res_1_Q,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_1_muxes_mux3_Mmux_y1
    );
  fe_de_register_res_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_0_0,
      O => fe_de_register_res_0_Q,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_1_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y59",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_1_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_1_muxes_mux3_Mmux_y1,
      O => busOut2seg_1_OBUF_1982
    );
  alu_cmp_neq_int_0_3 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y60",
      INIT => X"5FAFF5FADFEFFDFE"
    )
    port map (
      ADR0 => acc_register_res(1),
      ADR1 => acc_register_res(0),
      ADR2 => acc_register_res(2),
      ADR3 => busOut2seg_1_OBUF_1982,
      ADR4 => busOut2seg_2_OBUF_1983,
      ADR5 => busOut2seg_0_OBUF_1984,
      O => alu_cmp_neq_int_0_2
    );
  controller_accLd1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y60",
      INIT => X"0004040400440444"
    )
    port map (
      ADR0 => controller_state_FSM_FFd2_1918,
      ADR1 => controller_state_FSM_FFd3_1917,
      ADR2 => fe_de_register_res_11_Q,
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_8_Q,
      ADR5 => fe_de_register_res_9_Q,
      O => accLd
    );
  controller_accSel1 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y60",
      INIT => X"0000004004000000"
    )
    port map (
      ADR0 => controller_state_FSM_FFd2_1918,
      ADR1 => controller_state_FSM_FFd3_1917,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => fe_de_register_res_9_Q,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => fe_de_register_res_11_Q,
      O => accSel
    );
  acc_register_res_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y60",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(0),
      O => acc_register_res(0),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_0_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y60",
      INIT => X"CCCCCCCC03FCC30C"
    )
    port map (
      ADR0 => '1',
      ADR1 => busOut2seg_0_OBUF_1984,
      ADR2 => aluMd(1),
      ADR3 => acc_register_res(0),
      ADR4 => aluMd(0),
      ADR5 => accSel,
      O => ACCIn(0)
    );
  freg_res_2_freg_res_2_DMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => freg_res(1),
      O => freg_res_1_0
    );
  freg_res_2 : X_FF
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => '0'
    )
    port map (
      CE => flagLd,
      CLK => CLK_BUFGP,
      I => FlagInp(2),
      O => freg_res(2),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_cmp_neq_int_0_5 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => X"FFF4FFFFFFF4FFFF"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => busOut2seg_6_OBUF_1914,
      ADR2 => alu_cmp_neq_int_0_2,
      ADR3 => alu_cmp_neq_int_0_3_1985,
      ADR4 => N63,
      ADR5 => '1',
      O => FlagInp(2)
    );
  alu_cmp_eq1 : X_LUT5
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => X"000B0000"
    )
    port map (
      ADR0 => acc_register_res(6),
      ADR1 => busOut2seg_6_OBUF_1914,
      ADR2 => alu_cmp_neq_int_0_2,
      ADR3 => alu_cmp_neq_int_0_3_1985,
      ADR4 => N63,
      O => FlagInp(1)
    );
  freg_res_1 : X_FF
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => '0'
    )
    port map (
      CE => flagLd,
      CLK => CLK_BUFGP,
      I => FlagInp(1),
      O => freg_res(1),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_cmp_neq_int_0_5_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => X"8020401008020401"
    )
    port map (
      ADR0 => acc_register_res(3),
      ADR1 => acc_register_res(5),
      ADR2 => acc_register_res(4),
      ADR3 => busOut2seg_5_OBUF_1915,
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N63
    );
  freg_res_0 : X_FF
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => '0'
    )
    port map (
      CE => flagLd,
      CLK => CLK_BUFGP,
      I => FlagInp(0),
      O => freg_res(0),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_cmpZero_eq : X_LUT6
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => X"0000000000000001"
    )
    port map (
      ADR0 => aluOut2seg_6_OBUF_1948,
      ADR1 => aluOut2seg_4_OBUF_1949,
      ADR2 => aluOut2seg_2_OBUF_1950,
      ADR3 => aluOut2seg_0_OBUF_1951,
      ADR4 => aluOut2seg_7_OBUF_1952,
      ADR5 => N8,
      O => FlagInp(0)
    );
  alu_cmpZero_eq_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X25Y61",
      INIT => X"F3FFF3FFF3FFF0FC"
    )
    port map (
      ADR0 => '1',
      ADR1 => aluMd(1),
      ADR2 => aluOut2seg_1_OBUF_1944,
      ADR3 => N10,
      ADR4 => alu_Mmux_ALU_Out_int4,
      ADR5 => alu_Mmux_ALU_Out_int6,
      O => N8
    );
  INV_instruction_memory_Mram_memory10_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE2
    );
  INV_instruction_memory_Mram_memory10_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE1
    );
  INV_instruction_memory_Mram_memory10_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_9_INV_instruction_memory_Mram_memory10_CWE2
    );
  INV_instruction_memory_Mram_memory10_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_9_INV_instruction_memory_Mram_memory10_BWE1
    );
  InstrMemOut_9_InstrMemOut_9_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_9_Q,
      O => InstrMemOut_9_0
    );
  instruction_memory_Mram_memory10_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y55"
    )
    port map (
      IA => instruction_memory_Mram_memory10_F7_B_1453,
      IB => instruction_memory_Mram_memory10_F7_A_1454,
      O => InstrMemOut_9_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory10_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y55"
    )
    port map (
      IA => instruction_memory_Mram_memory10_D_1456,
      IB => instruction_memory_Mram_memory10_C_1466,
      O => instruction_memory_Mram_memory10_F7_B_1453,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory10_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y55"
    )
    port map (
      IA => instruction_memory_Mram_memory10_B_1474,
      IB => instruction_memory_Mram_memory10_A_1482,
      O => instruction_memory_Mram_memory10_F7_A_1454,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory10_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => X"00000000000B61BA"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory10_D_1456,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE1,
      WE2 => InstrMemOut_9_INV_instruction_memory_Mram_memory10_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory10_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory10_C_1466,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_9_INV_instruction_memory_Mram_memory10_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory10_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory10_B_1474,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_9_INV_instruction_memory_Mram_memory10_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory10_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y55",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory10_A_1482,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory11_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE2
    );
  INV_instruction_memory_Mram_memory11_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE1
    );
  INV_instruction_memory_Mram_memory11_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_10_INV_instruction_memory_Mram_memory11_CWE2
    );
  INV_instruction_memory_Mram_memory11_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_10_INV_instruction_memory_Mram_memory11_BWE1
    );
  InstrMemOut_10_InstrMemOut_10_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_10_Q,
      O => InstrMemOut_10_0
    );
  instruction_memory_Mram_memory11_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y56"
    )
    port map (
      IA => instruction_memory_Mram_memory11_F7_B_1490,
      IB => instruction_memory_Mram_memory11_F7_A_1491,
      O => InstrMemOut_10_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory11_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y56"
    )
    port map (
      IA => instruction_memory_Mram_memory11_D_1493,
      IB => instruction_memory_Mram_memory11_C_1503,
      O => instruction_memory_Mram_memory11_F7_B_1490,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory11_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y56"
    )
    port map (
      IA => instruction_memory_Mram_memory11_B_1511,
      IB => instruction_memory_Mram_memory11_A_1519,
      O => instruction_memory_Mram_memory11_F7_A_1491,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory11_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y56",
      INIT => X"00000000000FD858"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory11_D_1493,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE1,
      WE2 => InstrMemOut_10_INV_instruction_memory_Mram_memory11_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory11_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y56",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory11_C_1503,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_10_INV_instruction_memory_Mram_memory11_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory11_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y56",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory11_B_1511,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_10_INV_instruction_memory_Mram_memory11_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory11_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y56",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory11_A_1519,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory9_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE2
    );
  INV_instruction_memory_Mram_memory9_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE1
    );
  INV_instruction_memory_Mram_memory9_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_8_INV_instruction_memory_Mram_memory9_CWE2
    );
  INV_instruction_memory_Mram_memory9_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_8_INV_instruction_memory_Mram_memory9_BWE1
    );
  InstrMemOut_8_InstrMemOut_8_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_8_Q,
      O => InstrMemOut_8_0
    );
  instruction_memory_Mram_memory9_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory9_F7_B_1527,
      IB => instruction_memory_Mram_memory9_F7_A_1528,
      O => InstrMemOut_8_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory9_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory9_D_1530,
      IB => instruction_memory_Mram_memory9_C_1540,
      O => instruction_memory_Mram_memory9_F7_B_1527,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory9_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y57"
    )
    port map (
      IA => instruction_memory_Mram_memory9_B_1548,
      IB => instruction_memory_Mram_memory9_A_1556,
      O => instruction_memory_Mram_memory9_F7_A_1528,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory9_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => X"00000000000ABAAC"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory9_D_1530,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE1,
      WE2 => InstrMemOut_8_INV_instruction_memory_Mram_memory9_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory9_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory9_C_1540,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_8_INV_instruction_memory_Mram_memory9_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory9_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory9_B_1548,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_8_INV_instruction_memory_Mram_memory9_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory9_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y57",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory9_A_1556,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory4_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE2
    );
  INV_instruction_memory_Mram_memory4_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE1
    );
  INV_instruction_memory_Mram_memory4_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_3_INV_instruction_memory_Mram_memory4_CWE2
    );
  INV_instruction_memory_Mram_memory4_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_3_INV_instruction_memory_Mram_memory4_BWE1
    );
  InstrMemOut_3_InstrMemOut_3_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_3_Q,
      O => InstrMemOut_3_0
    );
  instruction_memory_Mram_memory4_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory4_F7_B_1564,
      IB => instruction_memory_Mram_memory4_F7_A_1565,
      O => InstrMemOut_3_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory4_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory4_D_1567,
      IB => instruction_memory_Mram_memory4_C_1577,
      O => instruction_memory_Mram_memory4_F7_B_1564,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory4_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y58"
    )
    port map (
      IA => instruction_memory_Mram_memory4_B_1585,
      IB => instruction_memory_Mram_memory4_A_1593,
      O => instruction_memory_Mram_memory4_F7_A_1565,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory4_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y58",
      INIT => X"0000000000041810"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory4_D_1567,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE1,
      WE2 => InstrMemOut_3_INV_instruction_memory_Mram_memory4_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory4_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory4_C_1577,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_3_INV_instruction_memory_Mram_memory4_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory4_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory4_B_1585,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_3_INV_instruction_memory_Mram_memory4_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory4_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y58",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory4_A_1593,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory1_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE2
    );
  INV_instruction_memory_Mram_memory1_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE1
    );
  INV_instruction_memory_Mram_memory1_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_0_INV_instruction_memory_Mram_memory1_CWE2
    );
  INV_instruction_memory_Mram_memory1_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_0_INV_instruction_memory_Mram_memory1_BWE1
    );
  InstrMemOut_0_InstrMemOut_0_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_0_Q,
      O => InstrMemOut_0_0
    );
  instruction_memory_Mram_memory1_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory1_F7_B_1601,
      IB => instruction_memory_Mram_memory1_F7_A_1602,
      O => InstrMemOut_0_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory1_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory1_D_1604,
      IB => instruction_memory_Mram_memory1_C_1614,
      O => instruction_memory_Mram_memory1_F7_B_1601,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory1_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y59"
    )
    port map (
      IA => instruction_memory_Mram_memory1_B_1622,
      IB => instruction_memory_Mram_memory1_A_1630,
      O => instruction_memory_Mram_memory1_F7_A_1602,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory1_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y59",
      INIT => X"000000000004925A"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory1_D_1604,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE1,
      WE2 => InstrMemOut_0_INV_instruction_memory_Mram_memory1_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory1_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory1_C_1614,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_0_INV_instruction_memory_Mram_memory1_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory1_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory1_B_1622,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_0_INV_instruction_memory_Mram_memory1_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory1_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y59",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory1_A_1630,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  INV_instruction_memory_Mram_memory12_DWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE2
    );
  INV_instruction_memory_Mram_memory12_DWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE1
    );
  INV_instruction_memory_Mram_memory12_CWE2 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(7),
      O => InstrMemOut_11_INV_instruction_memory_Mram_memory12_CWE2
    );
  INV_instruction_memory_Mram_memory12_BWE1 : X_INV
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => fe_register_res(6),
      O => InstrMemOut_11_INV_instruction_memory_Mram_memory12_BWE1
    );
  InstrMemOut_11_InstrMemOut_11_BMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => InstrMemOut_11_Q,
      O => InstrMemOut_11_0
    );
  instruction_memory_Mram_memory12_F8 : X_MUX2
    generic map(
      LOC => "SLICE_X26Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory12_F7_B_1638,
      IB => instruction_memory_Mram_memory12_F7_A_1639,
      O => InstrMemOut_11_Q,
      SEL => fe_register_res(7)
    );
  instruction_memory_Mram_memory12_F7_B : X_MUX2
    generic map(
      LOC => "SLICE_X26Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory12_D_1641,
      IB => instruction_memory_Mram_memory12_C_1651,
      O => instruction_memory_Mram_memory12_F7_B_1638,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory12_F7_A : X_MUX2
    generic map(
      LOC => "SLICE_X26Y60"
    )
    port map (
      IA => instruction_memory_Mram_memory12_B_1659,
      IB => instruction_memory_Mram_memory12_A_1667,
      O => instruction_memory_Mram_memory12_F7_A_1639,
      SEL => fe_register_res(6)
    );
  instruction_memory_Mram_memory12_D : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y60",
      INIT => X"0000000000053700"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory12_D_1641,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE1,
      WE2 => InstrMemOut_11_INV_instruction_memory_Mram_memory12_DWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory12_C : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory12_C_1651,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => InstrMemOut_11_INV_instruction_memory_Mram_memory12_CWE2,
      WE => '0'
    );
  instruction_memory_Mram_memory12_B : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory12_B_1659,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => InstrMemOut_11_INV_instruction_memory_Mram_memory12_BWE1,
      WE2 => fe_register_res(7),
      WE => '0'
    );
  instruction_memory_Mram_memory12_A : X_RAMD64_ADV
    generic map(
      LOC => "SLICE_X26Y60",
      INIT => X"0000000000000000"
    )
    port map (
      RADR0 => fe_register_res(0),
      RADR1 => fe_register_res(1),
      RADR2 => fe_register_res(2),
      RADR3 => fe_register_res(3),
      RADR4 => fe_register_res(4),
      RADR5 => fe_register_res(5),
      CLK => CLK_BUFGP,
      I => '0',
      O => instruction_memory_Mram_memory12_A_1667,
      WADR0 => fe_register_res(0),
      WADR1 => fe_register_res(1),
      WADR2 => fe_register_res(2),
      WADR3 => fe_register_res(3),
      WADR4 => fe_register_res(4),
      WADR5 => fe_register_res(5),
      WE1 => fe_register_res(6),
      WE2 => fe_register_res(7),
      WE => '0'
    );
  alu_Mmux_ALU_Out_int51_SW0 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y55",
      INIT => X"FFDF0020FFDB0020"
    )
    port map (
      ADR0 => fe_de_register_res_8_Q,
      ADR1 => fe_de_register_res_10_Q,
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_11_Q,
      ADR4 => acc_register_res(4),
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N29
    );
  ext2bus_ext2bus_AMUX_Delay : X_BUF
    generic map(
      PATHPULSE => 202 ps
    )
    port map (
      I => pcincer_rca_c_int_3_Q,
      O => pcincer_rca_c_int_3_0
    );
  controller_ext2bus_3_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => X"0000F00000000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_8_Q,
      ADR4 => fe_de_register_res_10_Q,
      ADR5 => fe_de_register_res_11_Q,
      O => ext2bus
    );
  pcincer_rca_fa1_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => X"FF000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => '1',
      ADR3 => fe_register_res(1),
      ADR4 => fe_register_res(0),
      ADR5 => '1',
      O => pcincer_rca_c_int_1_Q
    );
  pcincer_rca_fa3_co1 : X_LUT5
    generic map(
      LOC => "SLICE_X27Y56",
      INIT => X"C0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => fe_register_res(3),
      ADR2 => fe_register_res(2),
      ADR3 => fe_register_res(1),
      ADR4 => fe_register_res(0),
      O => pcincer_rca_c_int_3_Q
    );
  controller_acc2bus1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => X"000000F0F0000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => fe_de_register_res_9_1_2089,
      ADR3 => fe_de_register_res_8_1_1990,
      ADR4 => fe_de_register_res_10_1_2011,
      ADR5 => fe_de_register_res_11_1_2012,
      O => acc2bus
    );
  fe_de_register_res_9_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_9_0,
      O => fe_de_register_res_9_2_2003,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_4_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => X"000000CC00AAF000"
    )
    port map (
      ADR0 => fe_de_register_res_4_Q,
      ADR1 => de_ex_register_res(4),
      ADR2 => acc_register_res(4),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_4_muxes_mux3_Mmux_y1
    );
  fe_de_register_res_9_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => '0'
    )
    port map (
      CE => VCC,
      CLK => CLK_BUFGP,
      I => InstrMemOut_9_0,
      O => fe_de_register_res_9_1_2089,
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_4_muxes_mux3_Mmux_y12_1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y57",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_4_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_4_muxes_mux3_Mmux_y1,
      O => buss_G1_4_muxes_mux3_Mmux_y12_2014
    );
  display_rgister_res_7 : X_FF
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(7),
      O => display_rgister_res(7),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_0_muxes_mux3_Mmux_y11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => X"000000CC00AAF000"
    )
    port map (
      ADR0 => fe_de_register_res_0_Q,
      ADR1 => de_ex_register_res(0),
      ADR2 => acc_register_res(0),
      ADR3 => acc2bus,
      ADR4 => im2bus,
      ADR5 => dmRd,
      O => buss_G1_0_muxes_mux3_Mmux_y1
    );
  display_rgister_res_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(6),
      O => display_rgister_res(6),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_G1_0_muxes_mux3_Mmux_y12 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => X"AAAAFFFFAAAAA882"
    )
    port map (
      ADR0 => externalIn_0_IBUF_0,
      ADR1 => im2bus,
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => buss_G1_0_muxes_mux3_Mmux_y1,
      O => busOut2seg_0_OBUF_1984
    );
  display_rgister_res_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(5),
      O => display_rgister_res(5),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  buss_Mram_n005121 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => X"FFFFFFF0FFF0F000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => acc2bus,
      ADR3 => dmRd,
      ADR4 => ext2bus,
      ADR5 => im2bus,
      O => errSig2seg_OBUF_2027
    );
  display_rgister_res_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(4),
      O => display_rgister_res(4),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  controller_im2bus1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y58",
      INIT => X"0F000000FF000000"
    )
    port map (
      ADR0 => '1',
      ADR1 => '1',
      ADR2 => fe_de_register_res_8_1_1990,
      ADR3 => fe_de_register_res_11_1_2012,
      ADR4 => fe_de_register_res_10_1_2011,
      ADR5 => fe_de_register_res_9_2_2003,
      O => im2bus
    );
  acc_register_res_6 : X_FF
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(6),
      O => acc_register_res(6),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_6_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => X"A1F4F0A1B0E5E1B0"
    )
    port map (
      ADR0 => accSel,
      ADR1 => aluMd(1),
      ADR2 => busOut2seg_6_OBUF_1914,
      ADR3 => acc_register_res(6),
      ADR4 => aluMd(0),
      ADR5 => alu_adder_c_int_5_Q,
      O => ACCIn(6)
    );
  alu_adder_fa5_co1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => X"FFFFFCC0033F0000"
    )
    port map (
      ADR0 => '1',
      ADR1 => acc_register_res(2),
      ADR2 => alu_b_int_2_Q,
      ADR3 => alu_adder_c_int_1_Q,
      ADR4 => N38_0,
      ADR5 => N39_0,
      O => alu_adder_c_int_5_Q
    );
  acc_register_res_5 : X_FF
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(5),
      O => acc_register_res(5),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_5_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => X"BFFB1151AEEA0040"
    )
    port map (
      ADR0 => accSel,
      ADR1 => aluMd(1),
      ADR2 => aluMd(0),
      ADR3 => acc_register_res(5),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => alu_Mmux_ALU_Out_int6,
      O => ACCIn(5)
    );
  acc_register_res_4 : X_FF
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => '0'
    )
    port map (
      CE => accLd,
      CLK => CLK_BUFGP,
      I => ACCIn(4),
      O => acc_register_res(4),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  acc_mux_G1_4_muxes_Mmux_f11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y59",
      INIT => X"F5B4E1A0F5E1B4A0"
    )
    port map (
      ADR0 => accSel,
      ADR1 => aluMd(0),
      ADR2 => busOut2seg_4_OBUF_1925,
      ADR3 => N30,
      ADR4 => N29,
      ADR5 => alu_adder_c_int_3_Q,
      O => ACCIn(4)
    );
  alu_Mmux_ALU_Out_int51_SW1 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y60",
      INIT => X"5555555955555551"
    )
    port map (
      ADR0 => acc_register_res(4),
      ADR1 => fe_de_register_res_10_Q,
      ADR2 => fe_de_register_res_8_Q,
      ADR3 => fe_de_register_res_9_Q,
      ADR4 => fe_de_register_res_11_Q,
      ADR5 => busOut2seg_4_OBUF_1925,
      O => N30
    );
  alu_Mmux_ALU_Out_int11 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y60",
      INIT => X"55555655AAAAA86A"
    )
    port map (
      ADR0 => acc_register_res(0),
      ADR1 => fe_de_register_res_8_Q,
      ADR2 => fe_de_register_res_9_Q,
      ADR3 => fe_de_register_res_10_Q,
      ADR4 => fe_de_register_res_11_Q,
      ADR5 => busOut2seg_0_OBUF_1984,
      O => aluOut2seg_0_OBUF_1951
    );
  display_rgister_res_3 : X_FF
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(3),
      O => display_rgister_res(3),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  display_rgister_res_2 : X_FF
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(2),
      O => display_rgister_res(2),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  display_rgister_res_1 : X_FF
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(1),
      O => display_rgister_res(1),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_Mmux_ALU_Out_int42 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => X"3FF33F330CC00C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => aluMd(1),
      ADR2 => acc_register_res(3),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_3_OBUF_1929,
      ADR5 => alu_Mmux_ALU_Out_int4,
      O => aluOut2seg_3_OBUF_2049
    );
  display_rgister_res_0 : X_FF
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => '0'
    )
    port map (
      CE => dispLd,
      CLK => CLK_BUFGP,
      I => acc_register_res(0),
      O => display_rgister_res(0),
      RST => acc_register_aresetn_inv,
      SET => GND
    );
  alu_Mmux_ALU_Out_int62 : X_LUT6
    generic map(
      LOC => "SLICE_X27Y61",
      INIT => X"3FF33F330CC00C00"
    )
    port map (
      ADR0 => '1',
      ADR1 => aluMd(1),
      ADR2 => acc_register_res(5),
      ADR3 => aluMd(0),
      ADR4 => busOut2seg_5_OBUF_1915,
      ADR5 => alu_Mmux_ALU_Out_int6,
      O => aluOut2seg_5_OBUF_2051
    );
  NlwBlock_EDA322_processor_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_EDA322_processor_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

