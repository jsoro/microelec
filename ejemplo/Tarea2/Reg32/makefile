all:
	iverilog -o pruebaRegistro32Bits RegDesp.v RegDesp32.v tester32.v testbench2.v
	vvp pruebaRegistro32Bits
	gtkwave resultado.vcd
