`timescale 1ns/1ps
task monitor;

reg [3:0] mon_D;
reg [3:0] mon_Q;
reg mon_enable;
reg [1:0] mon_modo;
reg rco;
forever always (posedge clk)begin
    mon_D <= D;
    mon_Q <= Q;
    mon_enable <= enable;
    mon_modo <= modo;
    mon_rco <= rco;
end

endtask
