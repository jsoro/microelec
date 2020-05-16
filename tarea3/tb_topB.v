`timescale 1ns/1ps
`include "clock.v"
`include "contadorB.v"
`include "contadorB_tb.v"

module tb_top;
`include "definitions.v"

clk clocks (.clock (clock));

contadorB_tb tb(
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
