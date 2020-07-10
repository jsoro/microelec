
`timescale 1ns / 1ps


// Entrada A
// Salida Y
module NOT(A, Y);
output Y;
input A;
not _i0(Y, A);
 // include specify block for timing
 specify
 specparam
	 tpdh = 9,
	 tpdl = 10,
	 tsetup = 0.05,
	 thold = 0.05;
 (A => Y) = (tpdh, tpdl);
 endspecify
endmodule

// Entrada A, B
// Salida Y
module NAND (A,B,Y);
output Y;
input A, B;
nand _i0(Y, A, B);
 // include specify block for timing
 specify
 specparam
	 tpdh = 7,
	 tpdl = 7,
	 tsetup = 0.05,
	 thold = 0.05;
 (A => Y) = (tpdh, tpdl);
 (B => Y) = (tpdh, tpdl);
 endspecify
endmodule

// Entrada A, B
// Salida Y
module NOR(A, B, Y);
output Y;
input A, B;
nor _i0(Y, A, B);
 // include specify block for timing
 specify
 specparam
	 tpdh = 9,
	 tpdl = 9,
	 tsetup = 0.05,
	 thold = 0.05;
 (A => Y) = (tpdh, tpdl);
 (B => Y) = (tpdh, tpdl);
 endspecify
endmodule

// Entrada D
// Reloj C
// Salida Q

/*
primitive dff (q,clk,d);
	input clk,d;
	output q;
	reg q;
	table
	  // clk d : q : q+
	      r  0 : ? : 0 ;
	      r  1 : ? : 1 ;
	      f  ? : ? : - ;
	      ?  * : ? : - ;
	endtable
	endprimitive
*/
	module DFF(C, D, Q);
	specify
		specparam tpd= 2.5; //hoja de fabricante 74ACT244
	    (C*> Q) = (tpd, tpd); //tRise,tFall
			$setup(D, posedge C, 1.1);
			$hold(posedge C, D, 0.4);

	endspecify

	input C, D;
	output Q;
	reg Q;

	always @(posedge C)
		begin
		 Q <= D;
	end
	endmodule

/*
module DFF(C, D, Q);
input C, D;
output Q;
dff _i0(Q, C, D);
	specify
		specparam
		tpdh = 0.13,
 	 	tpdl = 0.15,
 	 	tsetup = 0.05,
 	 	thold = 0.05;
	  (D*> Q) = (tpdh, tpdl); //tRise,tFall
	endspecify
endmodule


*/


/*
module DFF(C, D, Q);
output Q;
input D, C;
dff_udp _i0(D,C,Q);
 // include specify block for timing
 specify
 specparam
	 tpdh = 0.13,
	 tpdl = 0.15,
	 tsetup = 0.05,
	 thold = 0.05;
 (D => Q) = (tpdh, tpdl, tsetup, thold);
 endspecify
endmodule
*/
