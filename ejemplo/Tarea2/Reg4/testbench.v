module testbench();
  wire [3:0] D;
  output wire [3:0] Q;
  wire [1:0] modo;
  tester prueba(clk,enb,dir,sIn,modo,D);
  RegDesp registro(clk,enb,dir,sIn,modo,D,Q,sOut);
  initial begin
    $dumpfile("resultado.vcd");
    $dumpvars;
    $display ("time\t clk  enb  dir  sIn  modo    D       Q    sOut");
    $monitor ("%g\t    %b  %b    %b    %b    %b    %b    %b   %b",
    $time, clk, enb, dir, sIn, modo, D, Q, sOut);
  end
endmodule
