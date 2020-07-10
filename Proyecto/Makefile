all:
	make synth
	make iverilog
	make vvp
	make showlogs
	make gtk

iverilog:
	make synth
	iverilog -o output/bin/conductual_compile tb_top_conductual.v
	iverilog -o output/bin/synth_compile2 -gspecify tb/tb_top_synth2.v
	iverilog -o output/bin/synth_compile4 -gspecify tb/tb_top_synth4.v
	iverilog -o output/bin/synth_compile20 -gspecify tb/tb_top_synth20.v
	iverilog -o output/bin/synth_compile200 -gspecify tb/tb_top_synth200.v

vvp:
	vvp output/bin/conductual_compile
	vvp output/bin/synth_compile2
	vvp output/bin/synth_compile4
	vvp output/bin/synth_compile20
	vvp output/bin/synth_compile200

gtk:
	gtkwave output/gtkwave/conductual_verif.vcd -S config/conductual.tcl &
	gtkwave output/gtkwave/synth2_verif.vcd -S config/synth2.tcl &
	gtkwave output/gtkwave/synth4_verif.vcd -S config/synth4.tcl &
	gtkwave output/gtkwave/synth20_verif.vcd -S config/synth20.tcl &
	gtkwave output/gtkwave/synth200_verif.vcd -S config/synth200.tcl

conductual:
	make glados
	gtkwave output/gtkwave/conductual_verif.vcd -S config/conductual.tcl


glados:
	iverilog -o output/bin/conductual_compile tb_top_conductual.v
	vvp output/bin/conductual_compile

logs:
	make iverilog
	make vvp
	make showlogs

showlogs:
	echo Conductual Counter Log File
	cat output/logs/conductual.log
	echo ___________________________________________________________________________
	echo Synthetized Counter with 2ns cycle Log File
	cat output/logs/synth2.log
	echo ___________________________________________________________________________
	echo Synthetized Counter with 4ns cycle Log File
	cat output/logs/synth4.log
	echo ___________________________________________________________________________
	echo Synthetized Counter with 20ns cycleLog File
	cat output/logs/synth20.log
	echo ___________________________________________________________________________
	echo Synthetized Counter with 200ns cycleLog File
	cat output/logs/synth200.log
	echo ___________________________________________________________________________


synth:
	yosys -s config/yosys_script
	sed -i '1s/^/`include "config\/cmos_cells_con.v"\n/' contador_synt.v

help:
	cat Readme

clean:
	rm  output/gtkwave/*
	rm  output/bin/*
	rm  output/logs/*
	rm output/*.pdf
	rm contador_synt.v
