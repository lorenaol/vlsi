// DSCH 3.5
// 5/18/2022 10:14:01 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\ArithmeticUnit.sch

module ArithmeticUnit( B3,AddSub,EnableAlu,A0,A1,A2,A3,B0,
 B1,B2,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry);
 input B3,AddSub,EnableAlu,A0,A1,A2,A3,B0;
 input B1,B2;
 output IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry;
 wire w7,w9,w11,w13,w15,w16,w17,w18;
 wire w20,w21,w22,w24,w26,w28,w29,w31;
 wire w33,w34,w35,w36;
 not #(1) inv_1(w7,A3);
 not #(1) inv_2(w9,A2);
 not #(1) inv_3(w11,A1);
 not #(1) inv_4(w13,A0);
 mux #(2) mux_5(w15,A3,w7,AddSub);
 mux #(2) mux_6(w16,A2,w9,AddSub);
 mux #(2) mux_7(w17,A1,w11,AddSub);
 mux #(2) mux_8(w18,A0,w13,AddSub);
 mux #(2) mux_9(w26,vss,vdd,AddSub);
 bufif1 #(1) bufif1_10(IB_Alu[0],w31,EnableAlu);
 bufif1 #(1) bufif1_11(IB_Alu[1],w29,EnableAlu);
 bufif1 #(1) bufif1_12(IB_Alu[2],w21,EnableAlu);
 bufif1 #(1) bufif1_13(IB_Alu[3],w24,EnableAlu);
 xor #(2) xor2_1_14(w33,B2,w16);
 xor #(2) xor2_2_15(w21,w33,w20);
 assign w22=(B2&w16)|(w20&(B2|w16));
 xor #(2) xor2_1_16(w34,B3,w15);
 xor #(2) xor2_2_17(w24,w34,w22);
 assign Carry=(B3&w15)|(w22&(B3|w15));
 xor #(2) xor2_1_18(w35,B1,w17);
 xor #(2) xor2_2_19(w29,w35,w28);
 assign w20=(B1&w17)|(w28&(B1|w17));
 xor #(2) xor2_1_20(w36,B0,w18);
 xor #(2) xor2_2_21(w31,w36,w26);
 assign w28=(B0&w18)|(w26&(B0|w18));
endmodule

// Simulation parameters in Verilog Format
always
#200 B3=~B3;
#400 AddSub=~AddSub;
#800 EnableAlu=~EnableAlu;
#1600 A0=~A0;
#3200 A1=~A1;
#6400 A2=~A2;
#12800 A3=~A3;
#25600 B0=~B0;
#51200 B1=~B1;
#102400 B2=~B2;

// Simulation parameters
// B3 CLK 1 1
// AddSub CLK 2 2
// EnableAlu CLK 4 4
// A0 CLK 8 8
// A1 CLK 16 16
// A2 CLK 32 32
// A3 CLK 64 64
// B0 CLK 128 128
// B1 CLK 256 256
// B2 CLK 512 512
