//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk) begin
      enable <= 1'b1;
      D = 4'b1111;
      modo = 2'b11;
    end
    @(negedge clk) begin
      enable = 1;
      modo = 2'b00;
    end
    @(negedge clk)
      enable = 1;
  end
endtask

//Drive request to the arbiter
task drv_request;
begin
@(negedge clk);
enable <= 1'b1;
D = 4'b0000;
modo = 2'b00;
#160 @(negedge clk);
modo = 2'b01;
#80 @(negedge clk);
modo = 2'b10;
#80 @(negedge clk);
D = 4'b1111;
#160 @(negedge clk);
modo = 2'b11;
#5 @(negedge clk);
modo =2'b00;
#50@(negedge clk);
enable = 0;
#50@(negedge clk);
enable = 0;
#25@(negedge clk);
enable = 1;
#25@(negedge clk);
D = 4'b1111;
#5 @(negedge clk);
modo = 2'b01;
#160 @(negedge clk);

end
endtask

task drv_random_request;
  begin
    repeat (20) begin
      @(negedge clk) begin
        enable = $random;
        D = $random;
      end
    end
  end
endtask

task drv_completely_random_request;
  begin
    repeat (6) begin
    @(negedge clk)
    modo  = $random;
      repeat (9) begin
        @(negedge clk) begin
          enable = $random;
          D = $random;
        end
      end
    end
  end
endtask
