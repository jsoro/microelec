`timescale 1ns/1ps
`include "scoreboard.v"
// Testbench Code Goes here


module compare_tb( enable, modo, D, rcoA, rcoB, rcoC, QA, QB, QC, clk);

input [3:0] QA;
input [3:0] QB;
input [3:0] QC;
output [3:0] D;
reg [3:0] D;
input clk;
input rcoA;
input rcoB;
input rcoC;
output [1:0] modo;
reg [1:0] modo;
output enable;
reg enable;

`include "driver.v"


integer log;
integer seed;


initial begin

  $dumpfile("output/gtkwave/comparison_verif.vcd");
  $dumpvars(0, RESULTS);

  assign seed = 400;


  drv_init();


  drv_random_request();
  drv_completely_random_request();
  drv_request();




  #200 $finish;
end


scoreboard sb(
.clk (clk),
.D (D),
.enable (enable),
.modo (modo)
);
endmodule
