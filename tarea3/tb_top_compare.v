`timescale 1ns/1ps
`include "clock.v"
`include "compare/contadorA.v"
`include "compare/contadorB.v"
`include "compare/contadorC.v"
`include "compare/compare_tb.v"




module tb_top;
`include "compare/definitions.v"

clk clocks (.clock (clock));

compare_tb RESULTS(
.D (D),
.QA (QA),
.QB (QB),
.QC (QC),
.enable (enable),
.modo (modo),
.rcoA (rcoA),
.rcoB (rcoB),
.rcoC (rcoC),
.clk (clock)
);


countA dutA (
.D (D),
.Q (QA),
.enable (enable),
.modo (modo),
.rco (rcoA),
.clk (clock)
);


countB dutB (
.D (D),
.Q (QB),
.enable (enable),
.modo (modo),
.rco (rcoB),
.clk (clock)
);


countC dutC (
.D (D),
.Q (QC),
.enable (enable),
.modo (modo),
.rco (rcoC),
.clk (clock)
);



endmodule
