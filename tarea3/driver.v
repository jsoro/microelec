//Init task for clean output signals
task drv_init;
  begin
    @(negedge clk) begin
      enable <= 1'b1;
      D = 4'b0000;
      modo = 2'b11;
    end
  end
endtask

//Drive request to the arbiter
task drv_request;

  @(negedge clk) begin
    enable <= 1'b1;
    D = 4'b0000;
    modo = 2'b00;
    repeat (8) begin
      @(negedge clk)begin
        enable = 1;
      end
    end
    @(negedge clk)begin
      modo = 2'b01;
    end
    repeat (8) begin
    @(negedge clk)begin
      enable = 1;
    end
    end



    /*
    repeat (8) begin
      D = 4'b0000;
    end
    */
  end
endtask
