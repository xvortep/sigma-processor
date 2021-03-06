onerror {resume}
quietly virtual signal -install /top_tb/uut/prog_i { /top_tb/uut/prog_i/oQ(31 downto 26)} Instruction
radix define ins { 
"1'b011000" "LD" -color "white",
"1'b011001" "ST" -color "white",
"1'b011011" "JMP" -color "white",
"1'b011100" "BEQ" -color "white",
"1'b011101" "BNE" -color "white",
"1'b100000" "ADD" -color "white",
"1'b100001" "SUB" -color "white",
"1'b100010" "MUL" -color "white",
"1'b100011" "DIV" -color "white",
"1'b100100" "CMPEQ" -color "white",
"1'b100101" "CMPLT" -color "white",
"1'b100110" "CMPLE" -color "white",
"1'b101000" "AND" -color "white",
"1'b101001" "OR" -color "white",
"1'b101010" "XOR" -color "white",
"1'b101011" "XNOR" -color "white",
"1'b101100" "SHL" -color "white",
"1'b101101" "SHR" -color "white",
"1'b101110" "SRA" -color "white",
"1'b110000" "ADDC" -color "white",
"1'b110001" "SUBC" -color "white",
"1'b110010" "MULC" -color "white",
"1'b110011" "DIVC" -color "white",
"1'b110100" "CMPEQC" -color "white",
"1'b110101" "CMPLTC" -color "white",
"1'b110110" "CMPLEC" -color "white",
"1'b111000" "ANDC" -color "white",
"1'b111001" "ORC" -color "white",
"1'b111010" "XORC" -color "white",
"1'b111011" "XNORC" -color "white",
"1'b111100" "SHLC" -color "white",
"1'b111101" "SHRC" -color "white",
"1'b111110" "SRAC" -color "white",
"1'b000000" "NOP" -color "white"
"1'b111111" "HALT" -color "white"
} 
radix define alufn {
"1'b000011" "CMPEQ" -color "white",
"1'b000101" "CMPLT" -color "white",
"1'b000111" "CMPLE" -color "white",
"1'b010000" "ADD" -color "white",
"1'b010001" "SUB" -color "white",
"1'b101000" "AND" -color "white",
"1'b101110" "OR" -color "white",
"1'b100110" "XOR" -color "white",
"1'b101001" "XNOR" -color "white",
"1'b101010" "MOVE" -color "white",
"1'b110000" "SHL" -color "white",
"1'b110001" "SHR" -color "white",
"1'b110011" "SRA" -color "white",
}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {CONTROL SIGNALS}
add wave -noupdate -radix binary /top_tb/sRST
add wave -noupdate -radix binary /top_tb/sCLK
add wave -noupdate -radix binary /top_tb/sHALT
add wave -noupdate -radix binary /top_tb/uut/sStall
add wave -noupdate -divider {PROGRAM COUNTER}
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC_NEXT
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC_BRANCH
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/iSTALL
add wave -noupdate -divider {INSTRUCTION MEMORY}
add wave -noupdate -radix hexadecimal /top_tb/uut/prog_i/iA
add wave -noupdate -radix hexadecimal /top_tb/uut/prog_i/oQ
add wave -noupdate -radix ins -childformat {{/top_tb/uut/prog_i/Instruction(31) -radix binary} {/top_tb/uut/prog_i/Instruction(30) -radix binary} {/top_tb/uut/prog_i/Instruction(29) -radix binary} {/top_tb/uut/prog_i/Instruction(28) -radix binary} {/top_tb/uut/prog_i/Instruction(27) -radix binary} {/top_tb/uut/prog_i/Instruction(26) -radix binary}} -subitemconfig {/top_tb/uut/prog_i/oQ(31) {-radix binary} /top_tb/uut/prog_i/oQ(30) {-radix binary} /top_tb/uut/prog_i/oQ(29) {-radix binary} /top_tb/uut/prog_i/oQ(28) {-radix binary} /top_tb/uut/prog_i/oQ(27) {-radix binary} /top_tb/uut/prog_i/oQ(26) {-radix binary}} /top_tb/uut/prog_i/Instruction
add wave -noupdate -divider {DATA MEMORY}
add wave -noupdate -radix binary /top_tb/uut/data_i/iWE
add wave -noupdate -radix binary /top_tb/uut/data_i/iOE
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/iAdr
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/iWD
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/oRD
add wave -noupdate -divider ALU
add wave -noupdate -radix alufn /top_tb/uut/alu_i/sALUFN
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sA
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sB
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sOutput
add wave -noupdate -divider {REGISTER FILE}
add wave -noupdate -radix binary /top_tb/uut/regf_i/iWE
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/iWD
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/iRA1
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/iRA2
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/oRD1
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/oRD2
add wave -noupdate -divider {BRANCH HANDLER}
add wave -noupdate -radix hexadecimal /top_tb/uut/branch_handler/iPC_NEXT
add wave -noupdate -radix hexadecimal /top_tb/uut/branch_handler/iNEXT_INSTR
add wave -noupdate -radix hexadecimal /top_tb/uut/branch_handler/iJMP_INSTR
add wave -noupdate -radix binary /top_tb/uut/branch_handler/iPCSEL_RF
add wave -noupdate -radix binary /top_tb/uut/branch_handler/iZ
add wave -noupdate -radix binary /top_tb/uut/branch_handler/s_jumped
add wave -noupdate -radix binary /top_tb/uut/branch_handler/s_to_jump
add wave -noupdate -radix hexadecimal /top_tb/uut/branch_handler/oINS_ADDR
add wave -noupdate -radix binary /top_tb/uut/branch_handler/oNOP_IF
add wave -noupdate -divider {CU IF}
add wave -noupdate -radix ins /top_tb/uut/cu_if/iOpcode
add wave -noupdate -radix binary /top_tb/uut/cu_if/iSXT
add wave -noupdate -radix binary /top_tb/uut/cu_if/iADDR
add wave -noupdate -radix binary /top_tb/uut/cu_if/oPCSEL
add wave -noupdate -divider {CU RF}
add wave -noupdate -radix ins /top_tb/uut/cu_rf/iOpcode
add wave -noupdate -radix binary /top_tb/uut/cu_rf/iZ
add wave -noupdate -radix binary /top_tb/uut/cu_rf/iSXT
add wave -noupdate -radix binary /top_tb/uut/cu_rf/iADDR
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oRA2SEL
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oWASEL
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oASEL
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oBSEL
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oPCSEL
add wave -noupdate -divider {CU ALU}
add wave -noupdate -radix ins /top_tb/uut/cu_alu/iOpcode
add wave -noupdate -radix alufn /top_tb/uut/cu_alu/oALUFN
add wave -noupdate -divider {CU MEM}
add wave -noupdate -radix ins /top_tb/uut/cu_mem/iOpcode
add wave -noupdate -radix binary /top_tb/uut/cu_mem/oMOE
add wave -noupdate -radix binary /top_tb/uut/cu_mem/oMWR
add wave -noupdate -divider {CU WB}
add wave -noupdate -radix ins /top_tb/uut/cu_wb/iOpcode
add wave -noupdate -radix binary /top_tb/uut/cu_wb/oWDSEL
add wave -noupdate -radix binary /top_tb/uut/cu_wb/oWERF
add wave -noupdate -divider {CU BYPASS}
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iRA2SEL
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iRA1
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iRA2
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iALUadr
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iMEMadr
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iWBadr
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/iRD1
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/iRD2
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/iALU
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/iMEM
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/iWB
add wave -noupdate -radix ins /top_tb/uut/cu_bypass/iOpALU
add wave -noupdate -radix ins /top_tb/uut/cu_bypass/iOpMEM
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iRaRF
add wave -noupdate -radix binary /top_tb/uut/cu_bypass/iRbRF
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/oStall
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/oA_by
add wave -noupdate -radix hexadecimal /top_tb/uut/cu_bypass/oB_by
add wave -noupdate -divider REGS
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r0_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r1_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r2_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r3_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r4_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r5_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r6_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r7_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r8_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r9_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r10_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r11_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r12_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r13_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r14_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r15_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r16_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r17_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r18_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r19_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r20_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r21_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r22_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r23_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r24_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r25_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r26_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r27_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r28_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r29_i/sREG
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/r30_i/sREG
add wave -noupdate -divider -height 30 PIPELINE
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_pc_rf
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_pc_rf
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_pc_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_pc_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_pc_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_pc_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_pc_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_pc_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_ir_rf
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_ir_rf
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_ir_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_ir_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_ir_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_ir_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_ir_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_ir_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_a_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_a_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_b_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_b_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_y_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_y_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_y_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_y_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_d_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_d_alu
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_d_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_d_mem
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/i_d_wb
add wave -noupdate -radix hexadecimal /top_tb/uut/reg_pipeline/o_d_wb
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {95 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 225
configure wave -valuecolwidth 144
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
run {3 us}
WaveRestoreZoom {95 ns} {265 ns}
