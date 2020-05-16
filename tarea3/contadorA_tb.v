`timescale 1ns/1ps
// Testbench Code Goes here
`include "scoreboard.v"

module contadorA_tb( enable, modo, D, rco, Q, clk);

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

parameter ITERATIONS = 20;
integer log;

initial begin

  $dumpfile("contadorA_verif.vcd");
  $dumpvars(0);

  log = $fopen("tbA.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

  drv_init();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);
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
