all:
	iverilog -o arbiter_compile tb_top.v

vvp:
	vvp arbiter_compile

gtk:
	gtkwave arbiter_verif.vcd
