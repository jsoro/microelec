`timescale 1ns/1ps
`include "clock.v"
`include "counter32.v"
`include "conductual32_tb.v"

module tb_top;
`include "definitions32.v"

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

count32 dut32 (
.D (D),
.Q (Q),
.enable (enable),
.modo (modo),
.rco (rco),
.clk (clock),
.reset (reset)
);

endmodule
