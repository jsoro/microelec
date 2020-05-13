module RegDesp(clk, enb, dir, sIn, modo, D, Q, sOut) ;

  input clk, //clock
        enb, //enabler
        dir, //dir
        sIn; //entrada de dato
  input [1:0] modo; //modo
  input [3:0] D; //entrada de datos

  output reg [3:0] Q;//salida de estado
  output reg sOut; //salida de dato


	always @ (posedge clk) begin
    if(enb) begin//de esta forma solo se ejecutara cuando el enabler este en 1
    //luego se chequea si se quiere a la derecha (dir=1) o a la Izquierda (dir=0)
      if (dir) begin //Rotar Derecha: dir=1
        if (modo==2'b00)begin//se chequea si se quiere una rotacion a la derecha: modo=00
          Q <= {sIn, Q[3:1]};
          sOut <= Q[0];
        end //end modo=00

        else if (modo==2'b01) begin //Rotar Derecha Circular: modo=01
          Q <= {Q[0],Q[3:1]};
          sOut <= 0;//ya que es circular, no hay dato que salga... por ende se saca un 0 por especificacion
        end //modo=01
      end//end dir=1
      else begin //Rotar Izquierda dir=0
        if (modo==2'b00)begin//se chequea si se quiere una rotacion a la izquierda: modo=00
          Q <= {Q[2:0], sIn};
          sOut <= Q[3];
        end //modo=00
        else if (modo==2'b01) begin //Rotar Izquierda Circular: modo=01
          Q <= {Q[2:0],Q[3]};
          sOut <= 0;
        end //modo 01
      end//end dir=0

      if(modo==2'b10) begin//carga Paralelo: Modo=10 & dir=x; esto porque se ignora la direccion
        Q <= D[3:0];
        sOut <= 0;
      end// end carga Paralela

    end//end enb
  end//end always
endmodule
