`include "\AND_5IN.v"
module bit32_Decoder5x32(Register, reg_no);
	input [4:0] reg_no;
	Registerput [31:0] Register;
	
	not  Inv4(Nota, reg_no[4]);
	not Inv3(Notb, reg_no[3]);
	not Inv2(Notc, reg_no[2]);
	not Inv1(Notd, reg_no[1]);
	not Inv0(Note, reg_no[0]);

	AND_5IN a0(Register[0],  Nota,Notb,Notc,Notd,Note); // 00000
	AND_5IN a1(Register[1],  Nota,Notb,Notc,Notd,reg_no[0]); // 00001
	AND_5IN a2(Register[2],  Nota,Notb,Notc,reg_no[1],Note); //00010
	AND_5IN a3(Register[3],  Nota,Notb,Notc,reg_no[1],reg_no[0]);
	AND_5IN a4(Register[4],  Nota,Notb,reg_no[2],Notd,Note);
	AND_5IN a5(Register[5],  Nota,Notb,reg_no[2],Notd,reg_no[0]);
	AND_5IN a6(Register[6],  Nota,Notb,reg_no[2],reg_no[1],Note);
	AND_5IN a7(Register[7],  Nota,Notb,reg_no[2],reg_no[1],reg_no[0]);
	AND_5IN a8(Register[8],    Nota,reg_no[3],Notc,Notd,Note);
	AND_5IN a9(Register[9],    Nota,reg_no[3],Notc,Notd,reg_no[0]);
	AND_5IN a10(Register[10],  Nota,reg_no[3],Notc,reg_no[1],Note);
	AND_5IN a11(Register[11],  Nota,reg_no[3],Notc,reg_no[1],reg_no[0]);
	AND_5IN a12(Register[12],  Nota,reg_no[3],reg_no[2],Notd,Note);
	AND_5IN a13(Register[13],  Nota,reg_no[3],reg_no[2],Notd,reg_no[0]);
	AND_5IN a14(Register[14],  Nota,reg_no[3],reg_no[2],reg_no[1],Note);
	AND_5IN a15(Register[15],  Nota,reg_no[3],reg_no[2],reg_no[1],reg_no[0]);
	AND_5IN a16(Register[16],  reg_no[4],Notb,Notc,Notd,Note);
	AND_5IN a17(Register[17],  reg_no[4],Notb,Notc,Notd,reg_no[0]);
	AND_5IN a18(Register[18],  reg_no[4],Notb,Notc,reg_no[1],Note);
	AND_5IN a19(Register[19],  reg_no[4],Notb,Notc,reg_no[1],reg_no[0]);
	AND_5IN a20(Register[20],  reg_no[4],Notb,reg_no[2],Notd,Note);
	AND_5IN a21(Register[21],  reg_no[4],Notb,reg_no[2],Notd,reg_no[0]);
	AND_5IN a22(Register[22],  reg_no[4],Notb,reg_no[2],reg_no[1],Note);
	AND_5IN a23(Register[23],  reg_no[4],Notb,reg_no[2],reg_no[1],reg_no[0]);
	AND_5IN a24(Register[24],  reg_no[4],reg_no[3],Notc,Notd,Note);
	AND_5IN a25(Register[25],  reg_no[4],reg_no[3],Notc,Notd,reg_no[0]);
	AND_5IN a26(Register[26],  reg_no[4],reg_no[3],Notc,reg_no[1],Note);
	AND_5IN a27(Register[27],  reg_no[4],reg_no[3],Notc,reg_no[1],reg_no[0]);
	AND_5IN a28(Register[28],  reg_no[4],reg_no[3],reg_no[2],Notd,Note);
	AND_5IN a29(Register[29],  reg_no[4],reg_no[3],reg_no[2],Notd,reg_no[0]);
	AND_5IN a30(Register[30],  reg_no[4],reg_no[3],reg_no[2],reg_no[1],Note);
	AND_5IN a31(Register[31],  reg_no[4],reg_no[3],reg_no[2],reg_no[1],reg_no[0]); // 11111
endmodule