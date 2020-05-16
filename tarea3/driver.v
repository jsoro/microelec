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
#160 @(negedge clk);
modo = 2'b10;
#20 @(negedge clk);

end
endtask

/*
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
  repeat (1) begin
  @(negedge clk)begin
    enable = 1;
  end
  end

  modo = 2'b10;
  repeat (8) begin
    @(negedge clk)begin
      enable = 1;
    end
  end



end
*/



/*
repeat (8) begin
  D = 4'b0000;
end
*/
