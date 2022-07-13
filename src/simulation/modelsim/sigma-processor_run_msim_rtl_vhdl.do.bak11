transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/prog_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/data_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/register.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/ALU.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/PC.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_IF.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_RF.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_ALU.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_MEM.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_WB.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/register_nWE.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/CU_bypass.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/branch_handler.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/register_nWE_stall.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/reg_top_pipeline.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/reg_file.vhd}
vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/top.vhd}

vcom -93 -work work {/home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/simulation/modelsim/top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  top_tb

do /home/rtrk/Documents/.RA206/RA206-2019_Beta+/sigma-processor/src/simulation/modelsim/wave.do
