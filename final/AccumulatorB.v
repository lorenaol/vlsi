// DSCH 3.5
// 5/20/2022 10:18:02 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\AccumulatorB.sch

module AccumulatorB( ClearB,LatchB,MainClock,B[0],B[1],B[2],B[3],AluB3,
 AluB2,AluB1,AluB0);
 input ClearB,LatchB,MainClock,B[0],B[1],B[2],B[3];
 output AluB3,AluB2,AluB1,AluB0;
 wire w6,w8,w10,w12,w14,w16,;
 not #(3) inv_1(w6,ClearB);
 dreg #(4) dreg_2(AluB0,w10,B[0],w6,w8);
 dreg #(4) dreg_3(AluB3,w12,B[3],w6,w8);
 dreg #(4) dreg_4(AluB2,w14,B[2],w6,w8);
 dreg #(4) dreg_5(AluB1,w16,B[1],w6,w8);
 and #(5) and2_6(w8,MainClock,LatchB);
endmodule

// Simulation parameters in Verilog Format
always
#200 ClearB=~ClearB;
#400 LatchB=~LatchB;
#2000 MainClock=~MainClock;

// Simulation parameters
// ClearB CLK 1 1
// LatchB CLK 2 2
// MainClock CLK 10 10
// B[0] CLK 4 4
// B[1] CLK 8 8
// B[2] CLK 16 16
// B[3] CLK 32 32
