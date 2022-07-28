// DSCH 3.5
// 5/19/2022 1:36:42 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\InstructionReg.sch

module InstructionReg( Data3,EnableInstrReg,Instr3,ClearInstrReg,LatchInstrReg,MainClock,Instr0,Instr1,
 Instr2,Data0,Data1,Data2,IB3,IB2,IB1,IB0,
 ToInstr3,ToInstr0,ToInstr1,ToInstr2);
 input Data3,EnableInstrReg,Instr3,ClearInstrReg,LatchInstrReg,MainClock,Instr0,Instr1;
 input Instr2,Data0,Data1,Data2;
 output IB3,IB2,IB1,IB0,ToInstr3,ToInstr0,ToInstr1,ToInstr2;
 wire w3,w4,w5,w6,w8,w9,w11,w12;
 wire w14,w15,w18,w26,w29,w32,;
 dreg #(4) dreg_1(w5,w6,Data0,w3,w4);
 dreg #(4) dreg_2(w8,w9,Data1,w3,w4);
 dreg #(4) dreg_3(w11,w12,Data2,w3,w4);
 dreg #(4) dreg_4(w14,w15,Data3,w3,w4);
 dreg #(4) dreg_5(ToInstr3,w18,Instr3,w3,w4);
 notif1 #(1) notif1_6(IB0,w6,EnableInstrReg);
 notif1 #(1) notif1_7(IB1,w9,EnableInstrReg);
 notif1 #(1) notif1_8(IB2,w12,EnableInstrReg);
 notif1 #(1) notif1_9(IB3,w15,EnableInstrReg);
 dreg #(4) dreg_10(ToInstr0,w26,Instr0,w3,w4);
 dreg #(4) dreg_11(ToInstr1,w29,Instr1,w3,w4);
 dreg #(4) dreg_12(ToInstr2,w32,Instr2,w3,w4);
 not #(4) inv_13(w3,ClearInstrReg);
 and #(6) and2_14(w4,MainClock,LatchInstrReg);
endmodule

// Simulation parameters in Verilog Format
always
#200 Data3=~Data3;
#400 EnableInstrReg=~EnableInstrReg;
#800 Instr3=~Instr3;
#1600 ClearInstrReg=~ClearInstrReg;
#3200 LatchInstrReg=~LatchInstrReg;
#2000 MainClock=~MainClock;
#6400 Instr0=~Instr0;
#12800 Instr1=~Instr1;
#25600 Instr2=~Instr2;
#51200 Data0=~Data0;
#102400 Data1=~Data1;
#102400 Data2=~Data2;

// Simulation parameters
// Data3 CLK 1 1
// EnableInstrReg CLK 2 2
// Instr3 CLK 4 4
// ClearInstrReg CLK 8 8
// LatchInstrReg CLK 16 16
// MainClock CLK 10 10
// Instr0 CLK 32 32
// Instr1 CLK 64 64
// Instr2 CLK 128 128
// Data0 CLK 256 256
// Data1 CLK 512 512
// Data2 CLK 1024 1024
