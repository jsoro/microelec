
task checker;

repeat (60) @(negedge clk) begin
	if ({sb.sb_Q,sb.sb_rco} == {Q, rco}) begin
          $fdisplay(log, "PASS");
        end
        else begin
          $fdisplay(log, "Time=%.0f Error dut: Q=%b, rco=%b, scoreboard: Q=%b, rco=%b", $time, Q, rco, sb.sb_Q,sb.sb_rco);
        end
end
endtask
