`timescale 1ns/1ps
`include "clock.v"
`include "counter_synth.v"
`include "synth_tb.v"

module tb_top;
`include "definitions.v"

clk clocks (.clock (clock));


conductual_tb tb(
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
