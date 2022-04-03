transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rtrk/Documents/ra211-2019-beta/sigma-processor/src/ALU.vhd}

vcom -93 -work work {/home/rtrk/Documents/ra211-2019-beta/sigma-processor/src/simulation/modelsim/ALU_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  ALU_tb

add wave *
view structure
view signals
run 1 us
