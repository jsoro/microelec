all:
	iverilog -o pruebaRegistro4Bits RegDesp.v tester.v testbench.v
	vvp pruebaRegistro4Bits
	gtkwave resultado.vcd
