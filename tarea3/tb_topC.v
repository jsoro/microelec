`timescale 1ns/1ps
`include "clock.v"
`include "contadorC.v"
`include "contadorC_tb.v"

module tb_top;
`include "definitions.v"

clk clocks (.clock (clock));

contadorC_tb tb(
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
