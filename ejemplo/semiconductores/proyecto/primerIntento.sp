*** Edge detector ***

*parametros
.param SUPPLY=1.5
*.option scale=25n
.options savecurrents
.temp 70

* fuentes
Vdd 420 0 'SUPPLY'
VA 1 0 PULSE 0 'SUPPLY' (0ps 0ps 0ps 50ns 100ns)
VCLK 2 0 PULSE 0 'SUPPLY' (0ps 0ps 0ps 5ns 10ns)


* inversor A
Mi2 3 1 0 0 invTipoN
Mi1 3 1 420 420 invTipoP

* Doble inversor A
Mi4 4 1 0 0 invTipoN
Mi3 4 1 420 420 invTipoP
Mi6 5 4 0 0 invTipoN
Mi5 5 4 420 420 invTipoP

* inversor X
Mi7 6 5 0 0 invTipoN
Mi8 6 5 420 420 invTipoP

*XOR DOMINO
Mclo1 7 2 420 420 DomTipoP

M1 7 1 8 8 DomTipoN
M3 7 5 10 10 DomTipoN
M2 8 6 9 9 DomTipoN
M4 10 3 9 9 DomTipoN
Mclo2 9 2 0 0 DomTipoN

Mi9 11 7 0 0 invTipoN
Mi10 11 7 420 420 invTipoP

Md1 7 11 420 420 DomDebilTipoP

* Carga
*Cload 11 0 50nF
Cload 0 11 50nF


.model invTipoN NMOS (W=4 L=2 AS=20 PS=18 AD=20 PD=18)
.model invTipoP PMOS (W=8 L=2 AS=40 PS=26 AD=40 PD=26)

.model tipoN NMOS (W=4 L=2 AS=20 PS=18 AD=20 PD=18)
.model tipoP PMOS (W=8 L=2 AS=40 PS=26 AD=40 PD=26)

.model DomTipoN NMOS (W=4 L=2 AS=20 PS=18 AD=20 PD=18)
.model DomTipoP PMOS (W=8 L=2 AS=40 PS=26 AD=40 PD=26)
.model DomDebilTipoP PMOS (W=4 L=2 AS=40 PS=26 AD=40 PD=26)


.tran 1ns 1ms

.control
run

*plotting
plot v(1) v(2)
plot v(1) v(3)
plot v(1) v(5)
plot v(1) v(11)
*plot @Cload[i]
*plot @Cload[i] vs v(3)

.endc

.end
