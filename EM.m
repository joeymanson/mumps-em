/*
Usage example:
	d GO^EM(2) - generates 2 random keys for EM
*/

GO(number)
	N I
	N ARR,STAR,R1,R2,R3,R4,R5,S1,S2,POS
	F I=1:1:number D
	.	K ARR,STAR,R1,R2,R3,R4,R5,S1,S2
	.	S R1=$R(50)+1
	.	F  S R2=$R(50)+1 Q:'(R2=R1)  D
	..		;W "---","repetiu R2:",R2,!
	.	F  S R3=$R(50)+1 Q:'(R3=R1)&'(R3=R2)  D
	..		;W "---","repetiu R3:",R3,!
	.	F  S R4=$R(50)+1 Q:'(R4=R1)&'(R4=R2)&'(R4=R3)  D
	..		;W "---","repetiu R4:",R4,!
	.	F  S R5=$R(50)+1 Q:'(R5=R1)&'(R5=R2)&'(R5=R3)&'(R5=R4)  D
	..		;W "---","repetiu R5:",R5,!
	.	S S1=$R(11)+1
	.	F  S S2=$R(11)+1 Q:'(S2=S1)
	.	S ARR(R1)=""
	.	S ARR(R2)=""
	.	S ARR(R3)=""
	.	S ARR(R4)=""
	.	S ARR(R5)=""
	.	S STAR(S1)=""
	.	S STAR(S2)=""
	.	S POS=""
	.	W "Key:",I,!
	.	F  S POS=$O(ARR(POS)) Q:POS=""  D
	..		S FREQ(POS)=$G(FREQ(POS))+1
	..		W "[",POS,"]"
	.	S POS=""
	.	W !
	.	F  S POS=$O(STAR(POS)) Q:POS=""  D
	..		W "[",POS,"]"
	.	W !,!
	Q
