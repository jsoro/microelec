*** Edge detector ***

*parametros
.param SUPPLY=5
*.option scale=25n
.options savecurrents
.temp 70

* fuentes
Vdd 420 0 'SUPPLY'
VA 1 0 PULSE 0 'SUPPLY' (50ns 0ps 0ps 50ns 100ns)
VCLK 2 0 PULSE 0 'SUPPLY' (0.5ns 0ps 0ps 0.5ns 1ns)



* Doble inversor A
Mi1 3 27 0 0 invTipoN
Mi2 3 27 420 420 invTipoP
Mi3 4 3 0 0 invTipoN
Mi4 4 3 420 420 invTipoP

Mi1Extra 20 1 0 0 invTipoN
Mi2Extra 20 1 420 420 invTipoP
Mi3Extra 21 20 0 0 invTipoN
Mi4Extra 21 20 420 420 invTipoP

Mi5Extra 22 21 0 0 invTipoN
Mi6Extra 22 21 420 420 invTipoP
Mi7Extra 23 22 0 0 invTipoN
Mi8Extra 23 22 420 420 invTipoP

Mi9Extra 24 23 0 0 invTipoN
Mi10Extra 24 23 420 420 invTipoP
Mi11Extra 25 24 0 0 invTipoN
Mi12Extra 25 24 420 420 invTipoP

Mi13Extra 26 25 0 0 invTipoN
Mi14Extra 26 25 420 420 invTipoP
Mi15Extra 27 26 0 0 invTipoN
Mi16Extra 27 26 420 420 invTipoP

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
M4 18 4 19 19 DomTipoN

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
*Cload 15 0 100nF
Cload 0 15 50nF


*.model invTipoN NMOS (LEVEL=3 PHI=0.600000 TOX=2.1200E-08 XJ=0.200000U TPG=1 VTO=0.7860 DELTA=6.9670E-01 LD=1.6470E-07 KP=9.6379E-05 UO=591.7 THETA=8.1220E-02 RSH=8.5450E+01 GAMMA=0.5863 NSUB=2.7470E+16 NFS=1.98E+12 VMAX=1.7330E+05 ETA=4.3680E-02 KAPPA=1.3960E-01 CGDO=4.0241E-10 CGSO=4.0241E-10 CGBO=3.6144E-10 CJ=3.8541E MJ=0.5027 CJSW=1.6457E-10 MJSW=0.217168 PB=0.850000)
*.model invTipoP PMOS (LEVEL=3 PHI=0.600000 TOX=2.1200E-08 XJ=0.200000U TPG=-1 VTO=-0.9056 DELTA=1.5200E+00 LD=2.2000E-08 KP=2.9352E-05 UO=180.2 THETA=1.2480E-01 RSH=1.0470E+02 GAMMA=0.4863 NSUB=1.8900E+16 NFS=3.46E+12 VMAX=3.7320E+05 ETA=1.6410E-01 KAPPA=9.6940E+00 CGDO=5.3752E-11 CGSO=5.3752E-11 CGBO=3.3650E-10 CJ=4.8447E-04 MJ=0.5027 CJSW=1.6457E-10 MJSW=0.217168 PB=0.850000)

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
