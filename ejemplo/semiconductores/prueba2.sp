* inv.sp
 
* Parameters and models
*------------------------------------------------
.param SUPPLY=1.0
.option scale=25n

.temp 70
.option post
 
* Simulation netlist
*------------------------------------------------
Vdd	vdd	gnd	'SUPPLY'
Vin	a	gnd	PULSE	0 'SUPPLY' 50ps 0ps 0ps 100ps 200ps
M1	y	a	gnd	gnd	NMOS	W=4	L=2 
+ AS=20 PS=18 AD=20 PD=18
M2	y	a	vdd	vdd	PMOS	W=8	L=2
+ AS=40 PS=26 AD=40 PD=26
 
* Stimulus
*------------------------------------------------
.tran 0.1ps 80ps
.end
