*** Inversor ***

*parametros
.param SUPPLY=1.5
*.option scale=25n
.options savecurrents
.temp 70

* fuentes
Vdd 1 0 'SUPPLY'
Vin 3 0 PULSE 0 'SUPPLY' (50ps 0ps 0ps 100ps 200ps)

* inversor
Mn1 4 3 0 0 tipoN
Mp1 4 3 1 1 tipoP


* Carga
*Cload 4 0 50n
Cload 0 4 50n


.model tipoN NMOS (W=10000000000 L=2 AS=20 PS=18 AD=20 PD=18)
.model tipoP PMOS (W=10000000000 L=2 AS=40 PS=26 AD=40 PD=26)


.tran 1ps 1ns

.control
run

*plotting
plot v(4)
plot v(3)
plot v(3) v(4)
plot @Cload[i]
*plot @Cload[i] vs v(3)

.endc

.end
