onerror {resume}
quietly virtual signal -install /top_tb/uut/prog_i { /top_tb/uut/prog_i/oQ(31 downto 26)} Instruction
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {CONTROL SIGNALS}
add wave -noupdate -radix binary /top_tb/sRST
add wave -noupdate -radix binary /top_tb/sCLK
add wave -noupdate -divider {PROGRAM COUNTER}
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC_NEXT
add wave -noupdate -radix hexadecimal /top_tb/uut/pc_i/sPC_BRANCH
add wave -noupdate -divider {INSTRUCTION MEMORY}
add wave -noupdate -radix hexadecimal /top_tb/uut/prog_i/iA
add wave -noupdate -radix hexadecimal /top_tb/uut/prog_i/oQ
add wave -noupdate -radix binary -childformat {{/top_tb/uut/prog_i/Instruction(31) -radix binary} {/top_tb/uut/prog_i/Instruction(30) -radix binary} {/top_tb/uut/prog_i/Instruction(29) -radix binary} {/top_tb/uut/prog_i/Instruction(28) -radix binary} {/top_tb/uut/prog_i/Instruction(27) -radix binary} {/top_tb/uut/prog_i/Instruction(26) -radix binary}} -subitemconfig {/top_tb/uut/prog_i/oQ(31) {-radix binary} /top_tb/uut/prog_i/oQ(30) {-radix binary} /top_tb/uut/prog_i/oQ(29) {-radix binary} /top_tb/uut/prog_i/oQ(28) {-radix binary} /top_tb/uut/prog_i/oQ(27) {-radix binary} /top_tb/uut/prog_i/oQ(26) {-radix binary}} /top_tb/uut/prog_i/Instruction
add wave -noupdate -divider {DATA MEMORY}
add wave -noupdate -radix binary /top_tb/uut/data_i/iWE
add wave -noupdate -radix binary /top_tb/uut/data_i/iOE
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/iAdr
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/iWD
add wave -noupdate -radix hexadecimal /top_tb/uut/data_i/oRD
add wave -noupdate -divider ALU
add wave -noupdate -radix binary /top_tb/uut/alu_i/sALUFN
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sA
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sB
add wave -noupdate -radix hexadecimal /top_tb/uut/alu_i/sOutput
add wave -noupdate -divider {REGISTER FILE}
add wave -noupdate -radix binary /top_tb/uut/regf_i/iWE
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/iWD
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/oRD1
add wave -noupdate -radix hexadecimal /top_tb/uut/regf_i/oRD2
add wave -noupdate -divider {CU IF}
add wave -noupdate -radix binary /top_tb/uut/cu_if/oPCSEL
add wave -noupdate -divider {CU RF}
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oRA2SEL
add wave -noupdate -radix binary /top_tb/uut/cu_rf/oWASEL
add wave -noupdate -divider {CU ALU}
add wave -noupdate -radix binary /top_tb/uut/cu_alu/oALUFN
add wave -noupdate -radix binary /top_tb/uut/cu_alu/oASEL
add wave -noupdate -radix binary /top_tb/uut/cu_alu/oBSEL
add wave -noupdate -divider {CU MEM}
add wave -noupdate -radix binary /top_tb/uut/cu_mem/oMOE
add wave -noupdate -radix binary /top_tb/uut/cu_mem/oMWR
add wave -noupdate -divider {CU WB}
add wave -noupdate -radix binary /top_tb/uut/cu_wb/oWDSEL
add wave -noupdate -radix binary /top_tb/uut/cu_wb/oWERF
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
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {176014 ps} 0}
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
WaveRestoreZoom {0 ps} {166144 ps}
