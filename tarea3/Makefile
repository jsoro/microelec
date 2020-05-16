all:
	make counterA
	make counterB
	make counterC
	make gtk
	
vvp:
	vvp counter_compile

gtk:
	gtkwave contadorA_verif.vcd &
	gtkwave contadorB_verif.vcd &
	gtkwave contadorC_verif.vcd

bread:
	iverilog -o counter_compile tb_topA.v
	vvp counter_compile
	gtkwave contadorA_verif.vcd &

counterA:
	iverilog -o counter_compileA tb_topA.v
	vvp counter_compileA

counterB:
	iverilog -o counter_compileB tb_topB.v
	vvp counter_compileB

counterA:
	iverilog -o counter_compileC tb_topC.v
	vvp counter_compileC

clean:
	rm contadorA_verif.vcd
	rm contadorB_verif.vcd
	rm contadorC_verif.vcd
	rm counter_compileA
	rm counter_compileB
	rm counter_compileC
	rm tbA.log
	rm tbB.log
	rm tbC.log
