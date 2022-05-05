transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/prog_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/data_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/register.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/ALU.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/PC.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/reg_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/top.vhd}

vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/simulation/modelsim/top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  top_tb

add wave *
view structure
view signals
run 100 ns
