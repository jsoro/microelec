module true_dpram_sclk
(
	input [7:0] data_a,
	input [5:0] addr_a, addr_b,
	input we_a, re_b, clk,
	output reg [7:0] q_b
);
	// Declare the RAM variable
	reg [3:0] ram[7:0];
	
	// Port A
	always @ (posedge clk)
	begin
		if (we_a) 
		begin
			ram[addr_a] <= data_a;
			
		end
	
	end
	
	// Port B
	always @ (posedge clk)
	begin
		if (re_b)
		begin
			q_b <= ram[addr_b];
		end
	
	end
endmodule


