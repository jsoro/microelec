`include "clock.v"
`include "contadorA.v"
`include "contadorA_tb.v"

module tb_top;

clk clocks (.clock (clock));

contadorA_tb tb(
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