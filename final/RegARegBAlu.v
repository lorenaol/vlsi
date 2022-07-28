// DSCH 3.5
// 5/18/2022 10:23:24 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\RegARegBAlu.sch

module RegARegBAlu( EnableAlu,in14,AddSub,EnableA,LatchA,LatchB,MainClock,MainReset,
 in7,in8,in9,in10,in11,in12,in13,out1,
 A[3],A[2],A[1],A[0],digit2[1],digit2[2],digit2[3],digit2[4],
 digit3[1],digit3[2],digit3[3],digit3[4]);
 input EnableAlu,in14,AddSub,EnableA,LatchA,LatchB,MainClock,MainReset;
 input in7,in8,in9,in10,in11,in12,in13;
 output out1,A[3],A[2],A[1],A[0],digit2[1],digit2[2],digit2[3];
 output digit2[4],digit3[1],digit3[2],digit3[3],digit3[4];
 wire w14,w15,w16,w17,w34,w35,w36,w37;
 wire w38,w39,w40,w41,w42,w43,w44,w45;
 wire w46,w47,w48,w49,w50,w51,w52,w53;
 wire w54,w55,w56,w57,w58,w59,w60,w61;
 wire w62,w63,w64,w65,w66;
 dreg #(2) dreg_1_1(A[0],w36,in7,w34,w35);
 not #(3) inv_2_2(w34,MainReset);
 and #(4) and2_3_3(w35,MainClock,LatchA);
 dreg #(2) dreg_4_4(A[3],w37,in10,w34,w35);
 dreg #(2) dreg_5_5(A[2],w38,in9,w34,w35);
 dreg #(2) dreg_6_6(A[1],w39,in8,w34,w35);
 notif1 #(1) notif1_7_7(w14,w36,EnableA);
 notif1 #(1) notif1_8_8(w15,w39,EnableA);
 notif1 #(1) notif1_9_9(w16,w38,EnableA);
 notif1 #(1) notif1_10_10(w40,w37,EnableA);
 not #(1) inv_1_11(w41,A[3]);
 not #(1) inv_2_12(w42,A[2]);
 not #(1) inv_3_13(w43,A[1]);
 not #(1) inv_4_14(w44,A[0]);
 mux #(2) mux_5_15(w45,A[3],w41,AddSub);
 mux #(2) mux_6_16(w46,A[2],w42,AddSub);
 mux #(2) mux_7_17(w47,A[1],w43,AddSub);
 mux #(2) mux_8_18(w48,A[0],w44,AddSub);
 mux #(2) mux_9_19(w49,vss,vdd,AddSub);
 bufif1 #(1) bufif1_10_20(digit3[4],w50,EnableAlu);
 bufif1 #(1) bufif1_11_21(digit3[3],w51,EnableAlu);
 bufif1 #(1) bufif1_12_22(digit3[2],w52,EnableAlu);
 bufif1 #(1) bufif1_13_23(digit3[1],w53,EnableAlu);
 xor #(1) xor2_1_14_24(w54,digit2[2],w46);
 xor #(1) xor2_2_15_25(w52,w54,w55);
 assign w56=(digit2[2]&w46)|(w55&(digit2[2]|w46));
 xor #(1) xor2_1_16_26(w57,digit2[1],w45);
 xor #(1) xor2_2_17_27(w53,w57,w56);
 assign out1=(digit2[1]&w45)|(w56&(digit2[1]|w45));
 xor #(1) xor2_1_18_28(w58,digit2[3],w47);
 xor #(1) xor2_2_19_29(w51,w58,w59);
 assign w55=(digit2[3]&w47)|(w59&(digit2[3]|w47));
 xor #(1) xor2_1_20_30(w60,digit2[4],w48);
 xor #(1) xor2_2_21_31(w50,w60,w49);
 assign w59=(digit2[4]&w48)|(w49&(digit2[4]|w48));
 not #(3) inv_1_32(w61,MainReset);
 dreg #(2) dreg_2_33(digit2[4],w63,in11,w61,w62);
 dreg #(2) dreg_3_34(digit2[1],w64,in14,w61,w62);
 dreg #(2) dreg_4_35(digit2[2],w65,in13,w61,w62);
 dreg #(2) dreg_5_36(digit2[3],w66,in12,w61,w62);
 and #(4) and2_6_37(w62,MainClock,LatchB);
endmodule

// Simulation parameters in Verilog Format
always
#200 EnableAlu=~EnableAlu;
#400 in14=~in14;
#800 AddSub=~AddSub;
#1600 EnableA=~EnableA;
#3200 LatchA=~LatchA;
#6400 LatchB=~LatchB;
#2000 MainClock=~MainClock;
#12800 MainReset=~MainReset;
#25600 in7=~in7;
#51200 in8=~in8;
#102400 in9=~in9;
#102400 in10=~in10;
#102400 in11=~in11;
#102400 in12=~in12;
#102400 in13=~in13;

// Simulation parameters
// EnableAlu CLK 1 1
// in14 CLK 2 2
// AddSub CLK 4 4
// EnableA CLK 8 8
// LatchA CLK 16 16
// LatchB CLK 32 32
// MainClock CLK 10 10
// MainReset CLK 64 64
// in7 CLK 128 128
// in8 CLK 256 256
// in9 CLK 512 512
// in10 CLK 1024 1024
// in11 CLK 2048 2048
// in12 CLK 4096 4096
// in13 CLK 8192 8192
