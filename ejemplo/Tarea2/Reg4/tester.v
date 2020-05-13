module tester(clk,enb,dir,sIn,modo,D);
  output reg clk,enb,dir,sIn;
  output reg [1:0] modo;
  output reg [3:0] D;

  always #2 clk = !clk;

  initial begin

    clk <=0;
    enb <= 1;
    dir <= 0;
    sIn <= 1;
    modo <= 2'b00;

    $display("Prueba 1; Rotacion a la Izquierda");
      modo <= 2'b00;
      dir <= 1'b0;
      D <= 4'b0001;
      #16;

    $display("Prueba 5; Carga en Paralelo");
      D <= 4'b0101;
      modo <= 2'b10;
      enb <= 1'b1;
      #4;

    $display("Prueba 2; Rotacion a la Derecha");
      modo <= 2'b00;
    	dir <= 1'b1;
      #16;

    $display("Prueba 5; Carga en Paralelo");
      D <= 4'b0110;
      modo <= 2'b10;
      enb <= 1'b1;
      #4;

    $display("Prueba 3; Rotacion Circular a la Izquierda");
      modo <= 2'b01;
      dir <= 1'b0;
      #16;

    $display("Prueba 5; Carga en Paralelo");
      D <= 4'b1001;
      modo <= 2'b10;
      enb <= 1'b1;
      #4;


    $display("Prueba 4; Rotacion Circular a la Derecha");
      modo <= 2'b01;
    	dir <= 1'b1;
    	#16;


    $finish;
      end
endmodule
