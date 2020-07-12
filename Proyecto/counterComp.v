module count (enable, clk, modo, D, rco, Q, reset);

//Define output ports
output [3:0] Q;
output rco;
reg [3:0] Q = 4'b0000;
reg rco;

//define input ports
input  [3:0] D;
input  [1:0] modo;
input enable;
input clk;
input reset;
wire [3:0] D;
wire [1:0] modo;
wire clock,enable, reset;

reg[3:0]  Qstatus;
reg RCOstatus;

//-------------Internal Constants--------------------------
parameter SIZE = 3           ;
parameter PLUSONE  = 2'b00,MINUSONE  = 2'b01,MINUSTHREE  = 2'b10, LOAD  = 2'b11 ;

//-------------Internal Variables---------------------------



//----------Code starts here------------------------
always @ (posedge clk) begin

  if(enable) begin//de esta forma solo se ejecutara cuando el enabler este en 1
    if (reset == 0) begin
    if (rco == 1) begin
      rco = 1'b0;
    end
    case(modo)
      PLUSONE : if (Q==4'b1111) begin
        Q[3:0] = 4'b0000;
        rco = 1'b1;
      end else begin
        Q[3:0] = Q + 4'b0001;
      end

      MINUSONE : if (Q==4'b0000) begin
        Q[3:0] = 4'b1111;
        rco = 1'b1;
      end else begin
        Q[3:0] = Q - 4'b0001;
      end

      MINUSTHREE : if (Q==4'b0000) begin
        Q[3:0] = 4'b1101;
        rco = 1'b1;
      end else if (Q==4'b0001) begin
        Q[3:0] = 4'b1110;
        rco = 1'b1;
      end else if (Q==4'b0010) begin
        Q[3:0] = 4'b1111;
        rco = 1'b1;
      end else begin
        Q[3:0] = Q - 4'b0011;
      end

      LOAD: begin
        Q[3:0] = D;
        rco = 1'b1;
        end

     endcase
     RCOstatus = rco;
     Qstatus = Q;
    end else begin
      Q[3:0] = 4'b0000;
      rco = 1'b0;
      RCOstatus = rco;
      Qstatus = Q;
    end
  end//end enb
  else begin
  Q[3:0] = Qstatus;
  rco = RCOstatus;
  end

end//end always
endmodule // End of Module counter
