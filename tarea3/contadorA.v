/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module count(enable, clk, modo, D, rco, Q);
  wire [3:0] _000_;
  wire _001_;
  wire [31:0] _002_;
  wire [1:0] _003_;
  wire [1:0] _004_;
  wire [1:0] _005_;
  wire [1:0] _006_;
  wire [1:0] _007_;
  wire [1:0] _008_;
  wire [1:0] _009_;
  wire [1:0] _010_;
  wire [1:0] _011_;
  wire _012_;
  wire [1:0] _013_;
  wire _014_;
  wire [3:0] _015_;
  wire [3:0] _016_;
  wire [1:0] _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire [3:0] _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire [15:0] _036_;
  wire [3:0] _037_;
  wire [3:0] _038_;
  wire [31:0] _039_;
  wire [31:0] _040_;
  wire [31:0] _041_;
  wire _042_;
  wire [31:0] _043_;
  wire [31:0] _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  input [3:0] D;
  output [3:0] Q;
  reg [3:0] Q;
  input clk;
  input enable;
  input [1:0] modo;
  output rco;
  reg rco;
  assign _003_[0] = _002_[0] | Q[1];
  assign _018_ = _003_[0] | _003_[1];
  assign _004_[0] = Q[0] | _015_[1];
  assign _003_[1] = Q[2] | Q[3];
  assign _019_ = _004_[0] | _003_[1];
  assign _005_[0] = _002_[0] | _015_[1];
  assign _005_[1] = _016_[2] | _016_[3];
  assign _020_ = _005_[0] | _005_[1];
  assign _021_ = _017_[0] | _017_[1];
  assign _022_ = modo[0] | _017_[1];
  assign _023_ = _017_[0] | modo[1];
  assign _006_[0] = _030_[0] | _030_[1];
  assign _006_[1] = _030_[2] | _030_[3];
  assign _031_ = _006_[0] | _006_[1];
  assign _042_ = _007_[0] | _007_[1];
  assign _008_[0] = _036_[2] | _036_[6];
  assign _008_[1] = _036_[10] | _036_[14];
  assign _037_[2] = _008_[0] | _008_[1];
  assign _009_[0] = _036_[3] | _036_[7];
  assign _009_[1] = _036_[11] | _036_[15];
  assign _037_[3] = _009_[0] | _009_[1];
  assign _010_[0] = _036_[1] | _036_[5];
  assign _010_[1] = _036_[9] | _036_[13];
  assign _037_[1] = _010_[0] | _010_[1];
  assign _011_[0] = _036_[0] | _036_[4];
  assign _011_[1] = _036_[8] | _036_[12];
  assign _037_[0] = _011_[0] | _011_[1];
  assign _007_[0] = _030_[0] | _033_;
  assign _007_[1] = _034_ | _035_;
  assign _012_ = modo[0] | modo[1];
  assign _013_[0] = Q[0] | Q[1];
  assign _014_ = _013_[0] | _003_[1];
  assign _027_ = ~_018_;
  assign _026_ = ~_019_;
  assign _024_ = ~_020_;
  assign _030_[0] = ~_021_;
  assign _033_ = ~_022_;
  assign _034_ = ~_023_;
  assign _035_ = ~_012_;
  assign _025_ = ~_014_;
  assign _028_ = _025_ | _027_;
  assign _029_ = _028_ | _026_;
  assign _001_ = enable ? _032_ : 1'b0;
  assign _000_[0] = enable ? _038_[0] : 1'b0;
  assign _000_[1] = enable ? _038_[1] : 1'b0;
  assign _000_[2] = enable ? _038_[2] : 1'b0;
  assign _000_[3] = enable ? _038_[3] : 1'b0;
  assign _032_ = _042_ ? _031_ : rco;
  assign _038_[0] = _042_ ? _037_[0] : Q[0];
  assign _038_[1] = _042_ ? _037_[1] : Q[1];
  assign _038_[2] = _042_ ? _037_[2] : Q[2];
  assign _038_[3] = _042_ ? _037_[3] : Q[3];
  always @(posedge clk)
      Q[0] <= _000_[0];
  always @(posedge clk)
      Q[1] <= _000_[1];
  always @(posedge clk)
      Q[2] <= _000_[2];
  always @(posedge clk)
      Q[3] <= _000_[3];
  always @(posedge clk)
      rco <= _001_;
  assign _045_ = _015_[1] & Q[0];
  assign _046_ = _016_[2] & _043_[1];
  assign _043_[1] = Q[1] | _045_;
  assign _043_[2] = Q[2] | _046_;
  assign _041_[1] = Q[1] & Q[0];
  assign _047_ = _016_[2] & _041_[1];
  assign _044_[2] = Q[2] | _047_;
  assign _041_[2] = Q[2] & _041_[1];
  assign _017_[1] = modo[1] ^ 1'b1;
  assign _017_[0] = modo[0] ^ 1'b1;
  assign _030_[3] = _024_ & _035_;
  assign _030_[2] = _025_ & _034_;
  assign _030_[1] = _029_ & _033_;
  assign _036_[12] = _002_[0] & _035_;
  assign _036_[13] = _002_[1] & _035_;
  assign _036_[14] = _002_[2] & _035_;
  assign _036_[15] = _002_[3] & _035_;
  assign _036_[8] = _002_[0] & _034_;
  assign _036_[9] = _039_[1] & _034_;
  assign _036_[10] = _039_[2] & _034_;
  assign _036_[11] = _039_[3] & _034_;
  assign _036_[4] = _002_[0] & _033_;
  assign _036_[5] = _002_[1] & _033_;
  assign _036_[6] = _040_[2] & _033_;
  assign _036_[7] = _040_[3] & _033_;
  assign _036_[0] = D[0] & _030_[0];
  assign _036_[1] = D[1] & _030_[0];
  assign _036_[2] = D[2] & _030_[0];
  assign _036_[3] = D[3] & _030_[0];
  assign _015_[1] = Q[1] ^ 1'b1;
  assign _016_[2] = Q[2] ^ 1'b1;
  assign _016_[3] = Q[3] ^ 1'b1;
  assign _002_[0] = Q[0] ^ 1'b1;
  assign _039_[1] = _015_[1] ^ Q[0];
  assign _039_[2] = _016_[2] ^ _043_[1];
  assign _039_[3] = _016_[3] ^ _043_[2];
  assign _040_[2] = _016_[2] ^ _041_[1];
  assign _040_[3] = _016_[3] ^ _044_[2];
  assign _002_[1] = Q[1] ^ Q[0];
  assign _002_[2] = Q[2] ^ _041_[1];
  assign _002_[3] = Q[3] ^ _041_[2];
endmodule
