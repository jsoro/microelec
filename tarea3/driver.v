//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk)
      enable = 0;
    @(negedge clk)
      enable = 1;
    @(negedge clk)
      enable = 1;
  end
endtask

//Drive request to the arbiter
task drv_request;

input integer iteration;

  repeat (iteration) begin
    @(negedge clk) begin
        enable = $random;
    end
  end
endtask
