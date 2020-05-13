// Testbench Code Goes here
`include "scoreboard.v"

module contadorA_tb( enable, modo, D, rco, Q, clk);

input [3:0] D;
output [3:0] Q;
reg [3:0] Q;
input clk;
input enable;
input [1:0] modo;
output rco;
reg rco;

`include "driver.v"
`include "checker.v"

parameter ITERATIONS = 100;
integer log;

initial begin

  $dumpfile("contadorA_verif.vcd");
  $dumpvars(0);

  log = $fopen("tb.log");
  $fdisplay(log, "time=%5d, Simulation Start", $time);
  $fdisplay(log, "time=%5d, Starting Reset", $time);

  drv_init();

  $fdisplay(log, "time=%5d, Reset Completed", $time);

  $fdisplay(log, "time=%5d, Starting Test", $time);
  fork
    drv_request(ITERATIONS);
    checker(ITERATIONS);
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
