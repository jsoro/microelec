all:
	make counterA
	make counterB
	make counterC
	make gtk

iverilog:
	iverilog -o output/bin/counter_compileA tb_topA.v
	iverilog -o output/bin/counter_compileB tb_topB.v
	iverilog -o output/bin/counter_compileC tb_topC.v

vvp:
	vvp output/bin/counter_compileA
	vvp output/bin/counter_compileB
	vvp output/bin/counter_compileC

gtk:
	gtkwave output/gtkwave/contadorA_verif.vcd &
	gtkwave output/gtkwave/contadorB_verif.vcd &
	gtkwave output/gtkwave/contadorC_verif.vcd

bread:
	iverilog -o output/bin/counter_compile tb_topA.v
	vvp output/bin/counter_compile
	gtkwave output/gtkwave/contadorA_verif.vcd &

counterA:
	iverilog -o output/bin/counter_compileA tb_topA.v
	vvp output/bin/counter_compileA

counterB:
	iverilog -o output/bin/counter_compileB tb_topB.v
	vvp output/bin/counter_compileB

counterC:
	iverilog -o output/bin/counter_compileC tb_topC.v
	vvp output/bin/counter_compileC

logs:
	make counterA
	make counterB
	make counterC
	echo Counter A Log File
	cat output/logs/tbA.log
	echo ___________________________________________________________________________
	echo Counter B Log File
	cat output/logs/tbB.log
	echo ___________________________________________________________________________
	echo Counter C Log File
	cat output/logs/tbC.log


clean:
	rm  output/gtkwave/*
	rm  output/bin/*
	rm  output/logs/*
