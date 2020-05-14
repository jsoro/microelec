all:
	iverilog -o counter_compile tb_topA.v

vvp:
	vvp counter_compile

gtk:
	gtkwave contadorA_verif.vcd &
	gtkwave contadorA_verif.vcd &

bread:
	iverilog -o counter_compile tb_topA.v
	vvp counter_compile
	gtkwave contadorA_verif.vcd &
