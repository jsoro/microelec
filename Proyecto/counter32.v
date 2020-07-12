`include "counter.v"

module count32(enable, clk, modo, D, rco, Q, reset);

output [31:0] Q;
output rco;
wire [31:0] Q;
wire rco;

//define input ports
input  [31:0] D;
input  [1:0] modo;
input enable;
input clk;
input reset;
wire [31:0] D;
wire [1:0] modo, modoAcople;
wire clock,enable, reset;

wire [3:0] Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8;
wire rco1, rco2, rco3, rco4, rco5, rco6, rco7, rco8;

count dut1 (
.D (D[3:0]),
.Q (Q1),
.enable (enable),
.modo (modo),
.rco (rco1),
.clk (clk),
.reset (reset)
);

count dut2 (
.D (D[7:4]),
.Q (Q2),
.enable (enable),
.modo (modoAcople),
.rco (rco2),
.clk (clockCarga2),
.reset (reset)
);

count dut3 (
.D (D[11:8]),
.Q (Q3),
.enable (enable),
.modo (modoAcople),
.rco (rco3),
.clk (clockCarga3),
.reset (reset)
);

count dut4 (
.D (D[15:12]),
.Q (Q4),
.enable (enable),
.modo (modoAcople),
.rco (rco4),
.clk (clockCarga4),
.reset (reset)
);

count dut5 (
.D (D[19:16]),
.Q (Q5),
.enable (enable),
.modo (modoAcople),
.rco (rco5),
.clk (clockCarga5),
.reset (reset)
);

count dut6 (
.D (D[23:20]),
.Q (Q6),
.enable (enable),
.modo (modoAcople),
.rco (rco6),
.clk (clockCarga6),
.reset (reset)
);

count dut7 (
.D (D[27:24]),
.Q (Q7),
.enable (enable),
.modo (modoAcople),
.rco (rco7),
.clk (clockCarga7),
.reset (reset)
);

count dut8 (
.D (D[31:28]),
.Q (Q8),
.enable (enable),
.modo (modoAcople),
.rco (rco8),
.clk (clockCarga8),
.reset (reset)
);

assign Q[31:28] = Q8;
assign Q[27:24] = Q7;
assign Q[23:20] = Q6;
assign Q[19:16] = Q5;
assign Q[15:12] = Q4;
assign Q[11:8] = Q3;
assign Q[7:4] = Q2;
assign Q[3:0] = Q1;

assign rco = rco8;

assign modoAcople = (modo == 2'b10) ? 2'b01 : modo;
assign clockCarga8 = (modo == 2'b11 || reset == 1) ? clk : rco7;
assign clockCarga7 = (modo == 2'b11 || reset == 1) ? clk : rco6;
assign clockCarga6 = (modo == 2'b11 || reset == 1) ? clk : rco5;
assign clockCarga5 = (modo == 2'b11 || reset == 1) ? clk : rco4;
assign clockCarga4 = (modo == 2'b11 || reset == 1) ? clk : rco3;
assign clockCarga3 = (modo == 2'b11 || reset == 1) ? clk : rco2;
assign clockCarga2 = (modo == 2'b11 || reset == 1) ? clk : rco1;


endmodule
