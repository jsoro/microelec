`timescale 1ns/1ps
`include "clock.v"
`include "counter.v"
`include "conductual_tb.v"

module tb_top;
`include "definitions.v"

clk clocks (.clock (clock));

conductual_tb tb(
.D (D),
.Q (Q),
.enable (enable),
.modo (modo),
.rco (rco),
.clk (clock),
.reset (reset)
);

count dut (
.D (D),
.Q (Q),
.enable (enable),
.modo (modo),
.rco (rco),
.clk (clock),
.reset (reset)
);

endmodule
