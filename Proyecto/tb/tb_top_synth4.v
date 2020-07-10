`timescale 1ns/1ps
`include "clocks/clock4.v"
`include "contador_synt.v"
`include "tb/synth_tb4.v"

module tb_top;
`include "definitions.v"

clk clocks (.clock (clock));


synth_tb tb(
.D (D),
.Q (Q),
.enable (enable),
.modo (modo),
.rco (rco),
.clk (clock)
);

count dut (
.D (D),
.Q (Q),
.enable (enable),
.modo (modo),
.rco (rco),
.clk (clock)
);

endmodule
