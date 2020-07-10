
* bsim3v3 check
r1 vcc 1 1289
m1 1 in out out pmos w=.6u l=.4u
m2 out in vss vss nmos w=.2u l=.1u

vcc vcc 0 3
vin in 0 pulse ( 0 3 0 1n 1n 99n 200n)

.tran .01n 1000n
.model pmos pmos level=8
.model nmos nmos level=8
.include modelcard.nmos
.include modelcard.pmos
.print tramsient out
.end
