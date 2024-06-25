transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/AbsSubtractor.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/Adder.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/comparator.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/Controller.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/counter.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/dpmem.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/Multiplier.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/mux2to1.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/Mylib.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/SAD.vhd}
vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/datapath.vhd}

vcom -93 -work work {C:/intelFPGA_lite/18.1/SAD/SAD_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  SAD_tb

add wave *
view structure
view signals
run -all
