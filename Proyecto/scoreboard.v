`timescale 1ns/1ps
//Scoreboard
module scoreboard (D, modo, enable, clk, reset) ;

input [3:0] D;
input clk;
input enable;
input [1:0] modo;
input reset;



//wire  sb_rco;
reg sb_rco;
reg [3:0] sb_Q;

//UPDATE THIS SECTION
always @(posedge clk)
begin



  if (enable == 1'b1) begin

  if (reset == 0) begin
    if (modo == 2'b00) begin//Check add 1

      if (sb_rco == 1'b1) begin //Check carry out
        sb_rco = 1'b0;
      end

      if (sb_Q < 4'b1111) begin //Check if add
        sb_Q[3:0] = sb_Q + 4'b0001;
      end
      else begin //Rebase
        sb_Q = 4'b0000;
        sb_rco = 1'b1;
      end
    end

    if (modo == 2'b01) begin //Check substract 1

      if (sb_rco == 1'b1) begin //Check carry out
        sb_rco = 1'b0;
      end

      if (sb_Q > 4'b0000) begin //Check if add
        sb_Q[3:0] = sb_Q - 4'b0001;
      end
      else begin //Rebase
        sb_Q = 4'b1111;
        sb_rco = 1'b1;
      end

    end
    if (modo == 2'b10) begin

      if (sb_rco == 1'b1) begin //Check carry out
        sb_rco = 1'b0;
      end

      if (sb_Q > 4'b0010) begin //Check if add
        sb_Q[3:0] = sb_Q - 4'b0011;
      end
      else begin //Rebase
        if (sb_Q == 4'b0010) begin
          sb_Q = 4'b1111;
          sb_rco = 1'b1;
        end
        else if (sb_Q == 4'b0001) begin
          sb_Q = 4'b1110;
          sb_rco = 1'b1;
        end
        else begin
          sb_Q = 4'b1101;
          sb_rco = 1'b1;
        end

      end

    end
    if (modo == 2'b11) begin

      sb_Q[3:0] = D;
      sb_rco = 1'b0;
    end
  end else begin
    sb_Q = 4'b0000;
    sb_rco = 1'b0;
  end


  end//enable
end

always @(negedge clk)
begin
  sb_rco = 1'b0;
end

endmodule
