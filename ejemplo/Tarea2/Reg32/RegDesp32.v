

module RegDesp32(clk, enb, dir, sIn, modo, D, Q, sOut) ;

  input clk, //clock
        enb, //enabler
        dir, //dir
        sIn; //entrada de dato
  input [1:0] modo; //modo
  input [31:0] D; //entrada de datos

  input [3:0] D1, D2, D3, D4, D5, D6, D7, D8;

  output wire [31:0] Q;//salida de estado
  output wire sOut; //salida de dato
  output wire [3:0] Q1;
  output wire [3:0] Q2;
  output wire [3:0] Q3;
  output wire [3:0] Q4;
  output wire [3:0] Q5;
  output wire [3:0] Q6;
  output wire [3:0] Q7;
  output wire [3:0] Q8;

  output wire sOut1;
  output wire sOut2;
  output wire sOut3;
  output wire sOut4;
  output wire sOut5;
  output wire sOut6;
  output wire sOut7;
  output wire sOut8;

  RegDesp registro1(clk,enb,dir,sIn,modo,D1,Q1,sOut1);
  RegDesp registro2(clk,enb,dir,sOut1,modo,D2,Q2,sOut2);
  RegDesp registro3(clk,enb,dir,sOut2,modo,D3,Q3,sOut3);
  RegDesp registro4(clk,enb,dir,sOut3,modo,D4,Q4,sOut4);
  RegDesp registro5(clk,enb,dir,sOut4,modo,D5,Q5,sOut5);
  RegDesp registro6(clk,enb,dir,sOut5,modo,D6,Q6,sOut6);
  RegDesp registro7(clk,enb,dir,sOut6,modo,D7,Q7,sOut7);
  RegDesp registro8(clk,enb,dir,sOut7,modo,D8,Q8,sOut);

/*
  assign D1 = D[31:28];
  assign D2 = D[27:24];
  assign D3 = D[23:20];
  assign D4 = D[19:16];
  assign D5 = D[15:12];
  assign D6 = D[11:8];
  assign D7 = D[7:4];
  assign D8 = D[3:0];
*/
  assign D8 = D[31:28];
  assign D7 = D[27:24];
  assign D6 = D[23:20];
  assign D5 = D[19:16];
  assign D4 = D[15:12];
  assign D3 = D[11:8];
  assign D2 = D[7:4];
  assign D1 = D[3:0];

  //assign Q = {Q1[3:0],Q2[3:0],Q3[3:0],Q4[3:0],Q5[3:0],Q6[3:0],Q7[3:0],Q8[3:0]};
  assign Q = {Q8[3:0],Q7[3:0],Q6[3:0],Q5[3:0],Q4[3:0],Q3[3:0],Q2[3:0],Q1[3:0]};
endmodule
