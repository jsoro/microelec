//`timescale 1ns/1ps
// Testbench Code Goes here
`include "scoreboard.v"

module synth_tb( enable, modo, D, rco, Q, clk);

input [3:0] Q;
output [3:0] D;
reg [3:0] D;
input clk;
input rco;
output [1:0] modo;
reg [1:0] modo;
output enable;
reg enable;

`include "driver.v"
`include "checker.v"


integer log;

initial begin

  $dumpfile("output/gtkwave/synth20_verif.vcd");
  $dumpvars(0);

  log = $fopen("output/logs/synth20.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

  drv_init();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);

  $fdisplay(log, "time=%5d, Starting Semi Random Test", $time);
  fork
    drv_random_request();
    random_checker();
  join
  $fdisplay(log, "time=%5d, Starting Completely Random Test", $time);
  fork
    drv_completely_random_request();
    completely_random_checker();
  join
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

scoreboard sb(
.clk (clk),
.D (D),
.enable (enable),
.modo (modo)
);

endmodule
