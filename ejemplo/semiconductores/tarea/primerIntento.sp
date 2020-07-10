*Inverter Circuit
m0 out in Vdd Vdd nmod w=4U l=2U
m1 out in GND Gnd pmod w=2U l=2U
CLOAD out 0 1pF
Vdd Vdd 0 5
Vin in 0 0 PULSE .2 4.8 2N 1N 1N 5N 20N
.OPTIONS POST LIST
.TRAN 0.1ps 100N
.PRINT TRAN V (in) V(out)
.control

.MODEL pmod PMOS LEVEL=1
.MODEL nmod NMOS LEVEL=1

run

.endc

.END
