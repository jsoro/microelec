//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk) begin
      enable = 1;
      D = 4'b0000;
      modo = 2'b11;
    end
    @(negedge clk)
      enable = 1;
    @(negedge clk)
      enable = 1;
  end
endtask

//Drive request to the arbiter
task drv_request;
  begin

  input integer iteration;
  @(negedge clk) begin
    enable = $random;
    D = 4'b0000;
    modo = 2'b00;
  end
    repeat (iteration) begin
    @(negedge clk) begin
        D = 4'b0000;
    end
  end
endtask
