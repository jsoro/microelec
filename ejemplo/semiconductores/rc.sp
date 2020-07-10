* rc.sp

.option post
 

Vin in gnd pwl (0ps 0 100ps 0 150ps 1.0 1ns 1.0)
R1 in out 2k
C1 out gnd 100f

.tran 20ps 1ns
.control
run

.plot v(in) v(out)
.endc
.end

