`timescale 1ns/1ps
module clk (clock);

output clock;
reg clock;

initial begin
clock = 0;
end

always begin
 #200 clock = !clock;
end

endmodule
