// DSCH 3.5
// 5/20/2022 10:17:44 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\AccumulatorA.sch

module AccumulatorA( A[0],A[1],A[2],A[3],LatchA,MainClock,ClearA,EnableA,
 AluA0,AluA1,AluA2,AluA3,B0,B1,B2,B3);
 input A[0],A[1],A[2],A[3],LatchA,MainClock,ClearA,EnableA;
 output AluA0,AluA1,AluA2,AluA3,B0,B1,B2,B3;
 wire w8,w9,w11,w14,w16,w18,w23,;
 dreg #(4) dreg_1(AluA0,w11,A[0],w8,w9);
 not #(3) inv_2(w8,ClearA);
 and #(5) and2_3(w9,MainClock,LatchA);
 dreg #(4) dreg_4(AluA3,w14,A[3],w8,w9);
 dreg #(4) dreg_5(AluA2,w16,A[2],w8,w9);
 dreg #(4) dreg_6(AluA1,w18,A[1],w8,w9);
 notif1 #(1) notif1_7(B0,w11,EnableA);
 notif1 #(1) notif1_8(B1,w18,EnableA);
 notif1 #(1) notif1_9(B2,w16,EnableA);
 notif1 #(1) notif1_10(w23,w14,EnableA);
endmodule

// Simulation parameters in Verilog Format
always
#200 LatchA=~LatchA;
#2000 MainClock=~MainClock;
#400 ClearA=~ClearA;
#800 EnableA=~EnableA;

// Simulation parameters
// A[0] CLK 1 1
// A[1] CLK 2 2
// A[2] CLK 4 4
// A[3] CLK 8 8
// LatchA CLK 16 16
// MainClock CLK 10 10
// ClearA CLK 32 32
// EnableA CLK 64 64
