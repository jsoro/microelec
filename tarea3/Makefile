all:
	make ghidorah
	make gigan
	make mothra
	make godzilla
	make showlogs
	make gtk

iverilog:
	iverilog -o output/bin/counter_compileA tb_topA.v
	iverilog -o output/bin/counter_compileB tb_topB.v
	iverilog -o output/bin/counter_compileC tb_topC.v
	iverilog -o output/bin/counter_compare_compile tb_top_compare.v

vvp:
	vvp output/bin/counter_compileA
	vvp output/bin/counter_compileB
	vvp output/bin/counter_compileC
	vvp output/bin/counter_compare_compile

gtk:
	gtkwave output/gtkwave/contadorA_verif.vcd &
	gtkwave output/gtkwave/contadorB_verif.vcd &
	gtkwave output/gtkwave/contadorC_verif.vcd &
	gtkwave output/gtkwave/comparison_verif.vcd  -S config/compare.tcl &

counterA:
	make ghidorah
	gtkwave output/gtkwave/contadorA_verif.vcd

counterB:
	make gigan
	gtkwave output/gtkwave/contadorB_verif.vcd

counterC:
	make mothra
	gtkwave output/gtkwave/contadorC_verif.vcd

comparison:
	iverilog -o output/bin/counter_compare_compile tb_top_compare.v
	vvp output/bin/counter_compare_compile
	gtkwave output/gtkwave/comparison_verif.vcd  -S config/compare.tcl

godzilla:
	iverilog -o output/bin/counter_compare_compile tb_top_compare.v
	vvp output/bin/counter_compare_compile

ghidorah:
	iverilog -o output/bin/counter_compileA tb_topA.v
	vvp output/bin/counter_compileA

gigan:
	iverilog -o output/bin/counter_compileB tb_topB.v
	vvp output/bin/counter_compileB

mothra:
	iverilog -o output/bin/counter_compileC tb_topC.v
	vvp output/bin/counter_compileC

logs:
	make ghidorah
	make gigan
	make mothra
	make showlogs

showlogs:
	echo Counter A Log File
	cat output/logs/tbA.log
	echo ___________________________________________________________________________
	echo Counter B Log File
	cat output/logs/tbB.log
	echo ___________________________________________________________________________
	echo Counter C Log File
	cat output/logs/tbC.log

bread:
	make iverilog
	make vvp
	make showlogs
	gtkwave output/gtkwave/comparison_verif.vcd  -S config/compare.tcl


clean:
	rm  output/gtkwave/*
	rm  output/bin/*
	rm  output/logs/*
	rm output/comparison.pdf
