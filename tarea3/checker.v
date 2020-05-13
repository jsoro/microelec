task checker;

input integer iteration;

repeat (iteration) @ (posedge clk) begin
	if ({sb.sb_Q,sb.sb_rco} == {Q, rco}) begin
          $fdisplay(log, "PASS");
        end
        else begin
          $fdisplay(log, "Time=%.0f Error dut: Q=%b, rco=%b, scoreboard: Q=%b, rco=%b", $time, Q, rco, sb.sb_Q,sb.rco);
        end
end
endtask
