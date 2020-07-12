//`timescale 1ns/1ps
// Testbench Code Goes here
`include "scoreboard32.v"

module conductual_tb( enable, modo, D, rco, Q, clk, reset);

input [31:0] Q;
output [31:0] D;
reg [31:0] D;
input clk;
input rco;
output [1:0] modo;
reg [1:0] modo;
output enable;
reg enable;
output reset;
reg reset;

`include "driver32.v"
`include "checker.v"


integer log;

initial begin

  $dumpfile("output/gtkwave/conductual32_verif.vcd");
  $dumpvars(0);

  log = $fopen("output/logs/conductual32.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

  drv_init();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);

  
  $fdisplay(log, "time=%5d, Starting Scripted Test", $time);
  fork
    drv_request();
    checker();
  join
  $fdisplay(log, "time=%5d, Test Completed", $time);
  $fdisplay(log, "time=%5d, Simulation Completed", $time);
  $fclose(log);
  #200 $finish;
end

scoreboard32 sb(
.clk (clk),
.D (D),
.enable (enable),
.modo (modo),
.reset (reset)
);

endmodule
