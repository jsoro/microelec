module testbench2();
  wire [31:0] D;
  output wire [31:0] Q;
  wire [1:0] modo;
  tester32 prueba(clk,enb,dir,sIn,modo,D);
  RegDesp32 registro(clk,enb,dir,sIn,modo,D,Q,sOut);
  initial begin
    $dumpfile("resultado.vcd");
    $dumpvars;
    $display ("time\t clk  enb  dir  sIn  modo    D       Q    sOut");
    $monitor ("%g\t    %b  %b    %b    %b    %b    %b    %b   %b",
    $time, clk, enb, dir, sIn, modo, D, Q, sOut);
  end
endmodule
