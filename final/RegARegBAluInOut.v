// DSCH 3.5
// 5/19/2022 12:24:17 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\RegARegBAluInOut.sch

module RegARegBAluInOut( EnableOut,MainReset,MainClock,LatchB,LatchA,EnableA,EnableAlu,AddSub,
 DataIn3,EnableIn,B0,B1,B2,B3,A0,A1,
 A2,A3,DataIn0,DataIn1,DataIn2,digit2[1],digit2[2],digit2[3],
 digit2[4],digit1[1],digit1[2],digit1[3],digit1[4]);
 input EnableOut,MainReset,MainClock,LatchB,LatchA,EnableA,EnableAlu,AddSub;
 input DataIn3,EnableIn,B0,B1,B2,B3,A0,A1;
 input A2,A3,DataIn0,DataIn1,DataIn2;
 output digit2[1],digit2[2],digit2[3],digit2[4],digit1[1],digit1[2],digit1[3],digit1[4];
 wire w11,w12,w13,w14,w24,w25,w26,w27;
 wire w34,w40,w41,w42,w43,w44,w45,w46;
 wire w47,w48,w49,w50,w51,w52,w53,w54;
 wire w55,w56,w57,w58,w59,w60,w61,w62;
 wire w63,w64,w65,w66,w67,w68,w69,w70;
 wire w71,w72,w73,w74,w75,w76,w77,w78;
 dreg #(2) dreg_1_1(w11,w42,A0,w40,w41);
 not #(3) inv_2_2(w40,MainReset);
 and #(4) and2_3_3(w41,MainClock,LatchA);
 dreg #(2) dreg_4_4(w14,w43,A3,w40,w41);
 dreg #(2) dreg_5_5(w13,w44,A2,w40,w41);
 dreg #(2) dreg_6_6(w12,w45,A1,w40,w41);
 notif1 #(2) notif1_7_7(digit1[4],w42,EnableA);
 notif1 #(2) notif1_8_8(digit1[3],w45,EnableA);
 notif1 #(2) notif1_9_9(digit1[2],w44,EnableA);
 notif1 #(1) notif1_10_10(w46,w43,EnableA);
 not #(3) inv_1_11(w47,MainReset);
 dreg #(2) dreg_2_12(w27,w49,B0,w47,w48);
 dreg #(2) dreg_3_13(w24,w50,B3,w47,w48);
 dreg #(2) dreg_4_14(w25,w51,B2,w47,w48);
 dreg #(2) dreg_5_15(w26,w52,B1,w47,w48);
 and #(4) and2_6_16(w48,MainClock,LatchB);
 not #(1) inv_1_17(w53,w14);
 not #(1) inv_2_18(w54,w13);
 not #(1) inv_3_19(w55,w12);
 not #(1) inv_4_20(w56,w11);
 mux #(2) mux_5_21(w57,w14,w53,AddSub);
 mux #(2) mux_6_22(w58,w13,w54,AddSub);
 mux #(2) mux_7_23(w59,w12,w55,AddSub);
 mux #(2) mux_8_24(w60,w11,w56,AddSub);
 mux #(2) mux_9_25(w61,vss,vdd,AddSub);
 bufif1 #(2) bufif1_10_26(digit1[4],w62,EnableAlu);
 bufif1 #(2) bufif1_11_27(digit1[3],w63,EnableAlu);
 bufif1 #(2) bufif1_12_28(digit1[2],w64,EnableAlu);
 bufif1 #(2) bufif1_13_29(digit1[1],w65,EnableAlu);
 xor #(1) xor2_1_14_30(w66,w25,w58);
 xor #(1) xor2_2_15_31(w64,w66,w67);
 assign w68=(w25&w58)|(w67&(w25|w58));
 xor #(1) xor2_1_16_32(w69,w24,w57);
 xor #(1) xor2_2_17_33(w65,w69,w68);
 assign w34=(w24&w57)|(w68&(w24|w57));
 xor #(1) xor2_1_18_34(w70,w26,w59);
 xor #(1) xor2_2_19_35(w63,w70,w71);
 assign w67=(w26&w59)|(w71&(w26|w59));
 xor #(1) xor2_1_20_36(w72,w27,w60);
 xor #(1) xor2_2_21_37(w62,w72,w61);
 assign w71=(w27&w60)|(w61&(w27|w60));
 bufif1 #(2) bufif1_1_38(digit1[4],DataIn0,EnableIn);
 bufif1 #(2) bufif1_2_39(digit1[3],DataIn1,EnableIn);
 bufif1 #(2) bufif1_3_40(digit1[2],DataIn2,EnableIn);
 bufif1 #(2) bufif1_4_41(digit1[1],DataIn3,EnableIn);
 dreg #(2) dreg_1_42(digit2[4],w75,digit1[4],w73,w74);
 dreg #(2) dreg_2_43(digit2[3],w76,digit1[3],w73,w74);
 dreg #(2) dreg_3_44(digit2[2],w77,digit1[2],w73,w74);
 dreg #(2) dreg_4_45(digit2[1],w78,digit1[1],w73,w74);
 nand #(4) nand2_5_46(w74,MainClock,EnableOut);
 not #(3) inv_6_47(w73,MainReset);
endmodule

// Simulation parameters in Verilog Format
always
#200 EnableOut=~EnableOut;
#400 MainReset=~MainReset;
#2000 MainClock=~MainClock;
#800 LatchB=~LatchB;
#1600 LatchA=~LatchA;
#3200 EnableA=~EnableA;
#6400 EnableAlu=~EnableAlu;
#12800 AddSub=~AddSub;
#25600 DataIn3=~DataIn3;
#51200 EnableIn=~EnableIn;
#102400 B0=~B0;
#102400 B1=~B1;
#102400 B2=~B2;
#102400 B3=~B3;
#102400 A0=~A0;
#102400 A1=~A1;
#102400 A2=~A2;
#102400 A3=~A3;
#102400 DataIn0=~DataIn0;
#102400 DataIn1=~DataIn1;
#102400 DataIn2=~DataIn2;

// Simulation parameters
// EnableOut CLK 1 1
// MainReset CLK 2 2
// MainClock CLK 10 10
// LatchB CLK 4 4
// LatchA CLK 8 8
// EnableA CLK 16 16
// EnableAlu CLK 32 32
// AddSub CLK 64 64
// DataIn3 CLK 128 128
// EnableIn CLK 256 256
// B0 CLK 512 512
// B1 CLK 1024 1024
// B2 CLK 2048 2048
// B3 CLK 4096 4096
// A0 CLK 8192 8192
// A1 CLK 16384 16384
// A2 CLK 32768 32768
// A3 CLK 32768 32768
// DataIn0 CLK 32768 32768
// DataIn1 CLK 32768 32768
// DataIn2 CLK 32768 32768
