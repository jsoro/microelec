*** Edge detector ***

*parametros
.param SUPPLY=5
*.option scale=25n
.options savecurrents
.temp 70

* fuentes
Vdd 420 0 'SUPPLY'
VA 1 0 PULSE 0 'SUPPLY' (50ns 0ps 0ps 50ns 100ns)
VCLK 2 0 PULSE 0 'SUPPLY' (250ps 0ps 0ps 250ps 500ps)


* Doble inversor A
Mi1 3 1 0 0 invTipoN
Mi2 3 1 420 420 invTipoP
Mi3 4 3 0 0 invTipoN
Mi4 4 3 420 420 invTipoP

* Doble inversor A
Mi5 5 1 0 0 invTipoN
Mi6 5 1 420 420 invTipoP
Mi7 6 5 0 0 invTipoN
Mi8 6 5 420 420 invTipoP

* inversor A
Mi9 8 1 0 0 invTipoN
Mi10 8 1 420 420 invTipoP

* inversor X
Mi11 7 4 0 0 invTipoN
Mi12 7 4 420 420 invTipoP

*AND DOMINO 1 (Rising)
Mclo1 9 2 420 420 DomTipoP

M1 9 1 16 16 DomTipoN
M2 16 7 17 17 DomTipoN

Mclo2 17 2 0 0 DomTipoN

Mi13 10 9 0 0 invTipoN
Mi14 10 9 420 420 invTipoP

*Md1 9 10 420 420 DomDebilTipoP

*AND DOMINO 2 (Falling)
Mclo3 11 2 420 420 DomTipoP

M3 11 8 18 18 DomTipoN
M4 18 6 19 19 DomTipoN

Mclo4 19 2 0 0 DomTipoN

Mi15 12 11 0 0 invTipoN
Mi16 12 11 420 420 invTipoP

*Md1 11 12 420 420 DomDebilTipoP

*OR DOMINO
Mclo5 13 2 420 420 DomTipoP

M5 13 10 14 14 DomTipoN
M6 13 12 14 14 DomTipoN

Mclo6 14 2 0 0 DomTipoN

Mi17 15 13 0 0 invTipoN
Mi18 15 13 420 420 invTipoP

*Md1 13 15 420 420 DomDebilTipoP


* Carga
*Cload 15 0 50nF
Cload 0 15 50nF


.model invTipoN NMOS (W=10000000000 L=2 AS=20 PS=18 AD=20 PD=18)
.model invTipoP PMOS (W=10000000000 L=2 AS=40 PS=26 AD=40 PD=26)

.model tipoN NMOS (W=10000000000 L=2 AS=20 PS=18 AD=20 PD=18)
.model tipoP PMOS (W=10000000000 L=2 AS=40 PS=26 AD=40 PD=26)

.model DomTipoN NMOS (W=10000000000 L=2 AS=20 PS=18 AD=20 PD=18)
.model DomTipoP PMOS (W=10000000000 L=2 AS=40 PS=26 AD=40 PD=26)
.model DomDebilTipoP PMOS (W=10000000000 L=2 AS=40 PS=26 AD=40 PD=26)


.tran 1ns 300ns

.control
run

*plotting
*plot v(1) v(2)
*plot v(1) v(6)
*plot v(15)
*plot v(1) v(15)
*plot v(2) v(15)
plot v(12)
plot v(10)
plot v(1)
plot v(15) 
*plot @Cload[i]
*plot @Cload[i] vs v(3)

.endc

.end
