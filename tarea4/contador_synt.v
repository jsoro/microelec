`include "config/cmos_cells_con.v"
/* Generated by Yosys 0.7+612 (git sha1 8b92ddb, clang 3.5.0-10 -fPIC -Os) */

(* top =  1  *)
(* src = "counter.v:1" *)
module count(enable, clk, modo, D, rco, Q);
  (* src = "counter.v:30" *)
  wire [3:0] _000_;
  (* src = "counter.v:30" *)
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
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
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  (* src = "counter.v:10" *)
  input [3:0] D;
  (* src = "counter.v:4" *)
  output [3:0] Q;
  (* src = "counter.v:18" *)
  wire [3:0] Qstatus;
  (* src = "counter.v:19" *)
  wire RCOstatus;
  (* src = "counter.v:13" *)
  input clk;
  (* src = "counter.v:12" *)
  input enable;
  (* src = "counter.v:11" *)
  input [1:0] modo;
  (* src = "counter.v:5" *)
  output rco;
  NOT _075_ (
    .A(Q[1]),
    .Y(_002_)
  );
  NOT _076_ (
    .A(Q[0]),
    .Y(_003_)
  );
  NOT _077_ (
    .A(Q[2]),
    .Y(_004_)
  );
  NOT _078_ (
    .A(Q[3]),
    .Y(_005_)
  );
  NOT _079_ (
    .A(modo[0]),
    .Y(_006_)
  );
  NOT _080_ (
    .A(modo[1]),
    .Y(_007_)
  );
  NOT _081_ (
    .A(enable),
    .Y(_008_)
  );
  NOR _082_ (
    .A(_006_),
    .B(_007_),
    .Y(_009_)
  );
  NAND _083_ (
    .A(modo[0]),
    .B(modo[1]),
    .Y(_010_)
  );
  NAND _084_ (
    .A(Q[0]),
    .B(_008_),
    .Y(_011_)
  );
  NAND _085_ (
    .A(D[0]),
    .B(_009_),
    .Y(_012_)
  );
  NAND _086_ (
    .A(_003_),
    .B(_010_),
    .Y(_013_)
  );
  NAND _087_ (
    .A(_012_),
    .B(_013_),
    .Y(_014_)
  );
  NAND _088_ (
    .A(enable),
    .B(_014_),
    .Y(_015_)
  );
  NAND _089_ (
    .A(_011_),
    .B(_015_),
    .Y(_000_[0])
  );
  NOR _090_ (
    .A(Q[1]),
    .B(enable),
    .Y(_016_)
  );
  NAND _091_ (
    .A(Q[1]),
    .B(Q[0]),
    .Y(_017_)
  );
  NOT _092_ (
    .A(_017_),
    .Y(_018_)
  );
  NAND _093_ (
    .A(_002_),
    .B(_003_),
    .Y(_019_)
  );
  NAND _094_ (
    .A(_017_),
    .B(_019_),
    .Y(_020_)
  );
  NOR _095_ (
    .A(modo[0]),
    .B(_020_),
    .Y(_021_)
  );
  NOR _096_ (
    .A(_006_),
    .B(modo[1]),
    .Y(_022_)
  );
  NOT _097_ (
    .A(_022_),
    .Y(_023_)
  );
  NAND _098_ (
    .A(_020_),
    .B(_022_),
    .Y(_024_)
  );
  NAND _099_ (
    .A(D[1]),
    .B(_009_),
    .Y(_025_)
  );
  NAND _100_ (
    .A(enable),
    .B(_025_),
    .Y(_026_)
  );
  NOT _101_ (
    .A(_026_),
    .Y(_027_)
  );
  NAND _102_ (
    .A(_024_),
    .B(_027_),
    .Y(_028_)
  );
  NOR _103_ (
    .A(_021_),
    .B(_028_),
    .Y(_029_)
  );
  NOR _104_ (
    .A(_016_),
    .B(_029_),
    .Y(_000_[1])
  );
  NOR _105_ (
    .A(Q[2]),
    .B(enable),
    .Y(_030_)
  );
  NOR _106_ (
    .A(_004_),
    .B(_017_),
    .Y(_031_)
  );
  NOR _107_ (
    .A(Q[2]),
    .B(_018_),
    .Y(_032_)
  );
  NOR _108_ (
    .A(_031_),
    .B(_032_),
    .Y(_033_)
  );
  NOT _109_ (
    .A(_033_),
    .Y(_034_)
  );
  NOR _110_ (
    .A(modo[0]),
    .B(modo[1]),
    .Y(_035_)
  );
  NAND _111_ (
    .A(_033_),
    .B(_035_),
    .Y(_036_)
  );
  NAND _112_ (
    .A(D[2]),
    .B(_009_),
    .Y(_037_)
  );
  NAND _113_ (
    .A(enable),
    .B(_037_),
    .Y(_038_)
  );
  NOT _114_ (
    .A(_038_),
    .Y(_039_)
  );
  NAND _115_ (
    .A(_036_),
    .B(_039_),
    .Y(_040_)
  );
  NOR _116_ (
    .A(Q[2]),
    .B(_019_),
    .Y(_041_)
  );
  NOT _117_ (
    .A(_041_),
    .Y(_042_)
  );
  NAND _118_ (
    .A(Q[2]),
    .B(_019_),
    .Y(_043_)
  );
  NAND _119_ (
    .A(_042_),
    .B(_043_),
    .Y(_044_)
  );
  NAND _120_ (
    .A(_022_),
    .B(_044_),
    .Y(_045_)
  );
  NOR _121_ (
    .A(modo[0]),
    .B(_007_),
    .Y(_046_)
  );
  NAND _122_ (
    .A(_006_),
    .B(modo[1]),
    .Y(_047_)
  );
  NAND _123_ (
    .A(_034_),
    .B(_046_),
    .Y(_048_)
  );
  NAND _124_ (
    .A(_045_),
    .B(_048_),
    .Y(_049_)
  );
  NAND _125_ (
    .A(_022_),
    .B(_041_),
    .Y(_050_)
  );
  NOR _126_ (
    .A(_040_),
    .B(_049_),
    .Y(_051_)
  );
  NOR _127_ (
    .A(_030_),
    .B(_051_),
    .Y(_000_[2])
  );
  NOR _128_ (
    .A(Q[3]),
    .B(enable),
    .Y(_052_)
  );
  NOR _129_ (
    .A(_023_),
    .B(_041_),
    .Y(_053_)
  );
  NOR _130_ (
    .A(_032_),
    .B(_047_),
    .Y(_054_)
  );
  NOR _131_ (
    .A(_053_),
    .B(_054_),
    .Y(_055_)
  );
  NOR _132_ (
    .A(_005_),
    .B(_055_),
    .Y(_056_)
  );
  NAND _133_ (
    .A(D[3]),
    .B(_009_),
    .Y(_057_)
  );
  NAND _134_ (
    .A(enable),
    .B(_057_),
    .Y(_058_)
  );
  NAND _135_ (
    .A(_032_),
    .B(_046_),
    .Y(_059_)
  );
  NAND _136_ (
    .A(_050_),
    .B(_059_),
    .Y(_060_)
  );
  NAND _137_ (
    .A(_005_),
    .B(_060_),
    .Y(_061_)
  );
  NOR _138_ (
    .A(Q[3]),
    .B(_031_),
    .Y(_062_)
  );
  NAND _139_ (
    .A(Q[3]),
    .B(_031_),
    .Y(_063_)
  );
  NOT _140_ (
    .A(_063_),
    .Y(_064_)
  );
  NAND _141_ (
    .A(_035_),
    .B(_063_),
    .Y(_065_)
  );
  NOR _142_ (
    .A(_062_),
    .B(_065_),
    .Y(_066_)
  );
  NOR _143_ (
    .A(_058_),
    .B(_066_),
    .Y(_067_)
  );
  NAND _144_ (
    .A(_061_),
    .B(_067_),
    .Y(_068_)
  );
  NOR _145_ (
    .A(_056_),
    .B(_068_),
    .Y(_069_)
  );
  NOR _146_ (
    .A(_052_),
    .B(_069_),
    .Y(_000_[3])
  );
  NOR _147_ (
    .A(enable),
    .B(rco),
    .Y(_070_)
  );
  NAND _148_ (
    .A(_035_),
    .B(_064_),
    .Y(_071_)
  );
  NAND _149_ (
    .A(_010_),
    .B(_061_),
    .Y(_072_)
  );
  NAND _150_ (
    .A(enable),
    .B(_071_),
    .Y(_073_)
  );
  NOR _151_ (
    .A(_072_),
    .B(_073_),
    .Y(_074_)
  );
  NOR _152_ (
    .A(_070_),
    .B(_074_),
    .Y(_001_)
  );
  (* src = "counter.v:30" *)
  DFF _153_ (
    .C(clk),
    .D(_000_[0]),
    .Q(Q[0])
  );
  (* src = "counter.v:30" *)
  DFF _154_ (
    .C(clk),
    .D(_000_[1]),
    .Q(Q[1])
  );
  (* src = "counter.v:30" *)
  DFF _155_ (
    .C(clk),
    .D(_000_[2]),
    .Q(Q[2])
  );
  (* src = "counter.v:30" *)
  DFF _156_ (
    .C(clk),
    .D(_000_[3]),
    .Q(Q[3])
  );
  (* src = "counter.v:30" *)
  DFF _157_ (
    .C(clk),
    .D(_001_),
    .Q(rco)
  );
  assign Qstatus = Q;
  assign RCOstatus = rco;
endmodule
