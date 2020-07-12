//Init task for clean output signals
task drv_init;
  begin
  enable <= 1'b0;
  D = 32'b00000000000000000000000000000000;
  modo = 2'b11;
  reset = 1'b1;
    @(negedge clk) begin
      enable <= 1'b0;
      D = 32'b00000000000000000011000000001100;
      modo = 2'b11;
      reset = 1'b1;
    end
    @(negedge clk) begin
      enable = 1;
      modo = 2'b11;
      reset = 1'b1;
    end
    #160@(negedge clk);
    @(negedge clk) begin
      enable = 1;
      modo = 2'b11;
      reset = 1'b0;
    end
  end
endtask

//Drive request to the arbiter
task drv_request;
begin
@(negedge clk);
enable <= 1'b1;
reset <= 1'b0;
#40 @(negedge clk);
enable <= 1'b1;
#40 @(negedge clk);
D = 32'b00000000000000000000000000000000;
modo = 2'b00;
#100000 @(negedge clk);
modo = 2'b01;
#50000 @(negedge clk);
reset <= 1'b1;
#500 @(negedge clk);
modo = 2'b10;
reset <= 1'b0;
#50000 @(negedge clk);


end
endtask

task drv_random_request;
  begin
    repeat (20) begin
      @(negedge clk) begin
        enable = 1;
        D = $random;
      end
    end
  end
endtask

task drv_completely_random_request;
  begin
    repeat (6) begin
    @(negedge clk)
    modo  = 2'b00;
      repeat (10) begin
        @(negedge clk) begin
          enable = 1;
          D = $random;
        end
      end
    end
  end
endtask
