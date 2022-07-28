DSCH 3.5
VERSION 5/20/2022 11:21:55 AM
BB(-345,-175,375,225)
SYM  #Arrow
BB(120,-38,130,-32)
TITLE 120 -40  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(120,-35,0.000,0.000)in
LIG(120,-35,130,-35)
LIG(128,-37,130,-35)
LIG(128,-33,130,-35)
FSYM
SYM  #AccumulatorA
BB(40,80,80,170)
TITLE 50 73  #AccumulatorA
MODEL 6000
PROP                                                                                                                                    
REC(45,85,30,80,r)
VIS 5
PIN(40,160,0.000,0.000)A[0]
PIN(40,150,0.000,0.000)A[1]
PIN(40,140,0.000,0.000)A[2]
PIN(40,130,0.000,0.000)A[3]
PIN(40,100,0.000,0.000)LatchA
PIN(40,90,0.000,0.000)MainClock
PIN(40,120,0.000,0.000)ClearA
PIN(40,110,0.000,0.000)EnableA
PIN(80,160,0.010,0.006)AluA0
PIN(80,150,0.010,0.006)AluA1
PIN(80,140,0.010,0.006)AluA2
PIN(80,130,0.010,0.006)AluA3
PIN(80,120,0.010,0.016)B0
PIN(80,110,0.010,0.016)B1
PIN(80,100,0.010,0.016)B2
PIN(80,90,0.010,0.014)B3
LIG(40,160,45,160)
LIG(40,150,45,150)
LIG(40,140,45,140)
LIG(40,130,45,130)
LIG(40,100,45,100)
LIG(40,90,45,90)
LIG(40,120,45,120)
LIG(40,110,45,110)
LIG(75,160,80,160)
LIG(75,150,80,150)
LIG(75,140,80,140)
LIG(75,130,80,130)
LIG(75,120,80,120)
LIG(75,110,80,110)
LIG(75,100,80,100)
LIG(75,90,80,90)
LIG(45,85,45,165)
LIG(45,85,75,85)
LIG(75,85,75,165)
LIG(75,165,45,165)
VLG module AccumulatorA( A[0],A[1],A[2],A[3],LatchA,MainClock,ClearA,EnableA,
VLG AluA0,AluA1,AluA2,AluA3,B0,B1,B2,B3);
VLG input A[0],A[1],A[2],A[3],LatchA,MainClock,ClearA,EnableA;
VLG output AluA0,AluA1,AluA2,AluA3,B0,B1,B2,B3;
VLG wire w8,w9,w11,w14,w16,w18,w23,;
VLG dreg #(4) dreg_1(AluA0,w11,A[0],w8,w9);
VLG not #(3) inv_2(w8,ClearA);
VLG and #(5) and2_3(w9,MainClock,LatchA);
VLG dreg #(4) dreg_4(AluA3,w14,A[3],w8,w9);
VLG dreg #(4) dreg_5(AluA2,w16,A[2],w8,w9);
VLG dreg #(4) dreg_6(AluA1,w18,A[1],w8,w9);
VLG notif1 #(1) notif1_7(B0,w11,EnableA);
VLG notif1 #(1) notif1_8(B1,w18,EnableA);
VLG notif1 #(1) notif1_9(B2,w16,EnableA);
VLG notif1 #(1) notif1_10(w23,w14,EnableA);
VLG endmodule
FSYM
SYM  #AccumulatorB
BB(40,-35,80,45)
TITLE 50 -42  #AccumulatorB
MODEL 6000
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 5
PIN(40,-5,0.000,0.000)ClearB
PIN(40,-15,0.000,0.000)LatchB
PIN(40,-25,0.000,0.000)MainClock
PIN(40,5,0.000,0.000)B3
PIN(40,35,0.000,0.000)B0
PIN(40,25,0.000,0.000)B1
PIN(40,15,0.000,0.000)B2
PIN(80,-25,0.010,0.008)AluB3
PIN(80,-15,0.010,0.008)AluB2
PIN(80,-5,0.010,0.008)AluB1
PIN(80,5,0.010,0.008)AluB0
LIG(40,-5,45,-5)
LIG(40,-15,45,-15)
LIG(40,-25,45,-25)
LIG(40,5,45,5)
LIG(40,35,45,35)
LIG(40,25,45,25)
LIG(40,15,45,15)
LIG(75,-25,80,-25)
LIG(75,-15,80,-15)
LIG(75,-5,80,-5)
LIG(75,5,80,5)
LIG(45,-30,45,40)
LIG(45,-30,75,-30)
LIG(75,-30,75,40)
LIG(75,40,45,40)
VLG module AccumulatorB( ClearB,LatchB,MainClock,B3,B0,B1,B2,AluB3,
VLG AluB2,AluB1,AluB0);
VLG input ClearB,LatchB,MainClock,B3,B0,B1,B2;
VLG output AluB3,AluB2,AluB1,AluB0;
VLG wire w6,w8,w10,w12,w14,w16,;
VLG not #(3) inv_1(w6,ClearB);
VLG dreg #(4) dreg_2(AluB0,w10,B0,w6,w8);
VLG dreg #(4) dreg_3(AluB3,w12,B3,w6,w8);
VLG dreg #(4) dreg_4(AluB2,w14,B2,w6,w8);
VLG dreg #(4) dreg_5(AluB1,w16,B1,w6,w8);
VLG and #(5) and2_6(w8,MainClock,LatchB);
VLG endmodule
FSYM
SYM  #OutRegister
BB(290,55,330,135)
TITLE 300 48  #OutRegister
MODEL 6000
PROP                                                                                                                                    
REC(295,60,30,70,r)
VIS 5
PIN(290,95,0.000,0.000)IB3
PIN(290,85,0.000,0.000)LoadOut
PIN(290,75,0.000,0.000)MainClock
PIN(290,65,0.000,0.000)MainReset
PIN(290,125,0.000,0.000)IB0
PIN(290,115,0.000,0.000)IB1
PIN(290,105,0.000,0.000)IB2
PIN(330,65,0.010,0.004)Out3
PIN(330,95,0.010,0.004)Out0
PIN(330,85,0.010,0.004)Out1
PIN(330,75,0.010,0.004)Out2
LIG(290,95,295,95)
LIG(290,85,295,85)
LIG(290,75,295,75)
LIG(290,65,295,65)
LIG(290,125,295,125)
LIG(290,115,295,115)
LIG(290,105,295,105)
LIG(325,65,330,65)
LIG(325,95,330,95)
LIG(325,85,330,85)
LIG(325,75,330,75)
LIG(295,60,295,130)
LIG(295,60,325,60)
LIG(325,60,325,130)
LIG(325,130,295,130)
VLG module OutRegister( IB3,LoadOut,MainClock,MainReset,IB0,IB1,IB2,Out3,
VLG Out0,Out1,Out2);
VLG input IB3,LoadOut,MainClock,MainReset,IB0,IB1,IB2;
VLG output Out3,Out0,Out1,Out2;
VLG wire w4,w5,w7,w10,w13,w15,;
VLG dreg #(4) dreg_1(Out0,w7,IB0,w4,w5);
VLG dreg #(4) dreg_2(Out1,w10,IB1,w4,w5);
VLG dreg #(4) dreg_3(Out2,w13,IB2,w4,w5);
VLG dreg #(4) dreg_4(Out3,w15,IB3,w4,w5);
VLG nand #(4) nand2_5(w5,MainClock,LoadOut);
VLG not #(3) inv_6(w4,MainReset);
VLG endmodule
FSYM
SYM  #digit
BB(350,20,375,55)
TITLE 350 52  #digit2
MODEL 89
PROP                                                                                                                                    
REC(355,25,15,21,r)
VIS 4
PIN(355,55,0.000,0.000)digit2[1]
PIN(360,55,0.000,0.000)digit2[2]
PIN(365,55,0.000,0.000)digit2[3]
PIN(370,55,0.000,0.000)digit2[4]
LIG(350,20,350,50)
LIG(375,20,350,20)
LIG(375,50,375,20)
LIG(350,50,375,50)
LIG(355,50,355,55)
LIG(360,50,360,55)
LIG(365,50,365,55)
LIG(370,50,370,55)
FSYM
SYM  #kbd
BB(110,180,160,220)
TITLE 110 222  #DataIn
MODEL 85
PROP                                                                                                                                    
REC(110,180,40,40,r)
VIS 4
PIN(160,215,0.000,0.000)DataIn[0]
PIN(160,205,0.000,0.000)DataIn[1]
PIN(160,195,0.000,0.000)DataIn[2]
PIN(160,185,0.000,0.000)DataIn[3]
LIG(150,180,150,220)
LIG(110,180,150,180)
LIG(110,180,110,220)
LIG(144,185,144,188)
LIG(110,200,150,200)
LIG(130,180,130,220)
LIG(120,220,120,180)
LIG(110,190,150,190)
LIG(140,180,140,220)
LIG(110,210,150,210)
LIG(150,215,160,215)
LIG(160,205,150,205)
LIG(150,195,160,195)
LIG(160,185,150,185)
LIG(114,218,114,212)
LIG(114,212,116,212)
LIG(116,212,116,218)
LIG(116,218,114,218)
LIG(126,218,126,212)
LIG(134,212,136,212)
LIG(136,212,136,214)
LIG(136,214,134,214)
LIG(134,214,134,218)
LIG(134,218,136,218)
LIG(144,218,146,218)
LIG(146,212,144,212)
LIG(146,212,146,218)
LIG(144,214,146,214)
LIG(114,202,114,206)
LIG(114,206,116,206)
LIG(116,202,116,208)
LIG(126,202,124,202)
LIG(124,202,124,204)
LIG(124,204,126,204)
LIG(126,204,126,208)
LIG(126,208,124,208)
LIG(134,202,134,208)
LIG(134,208,136,208)
LIG(136,208,136,204)
LIG(136,204,134,204)
LIG(144,202,146,202)
LIG(146,202,146,208)
LIG(114,192,114,198)
LIG(114,192,116,192)
LIG(116,192,116,198)
LIG(116,198,114,198)
LIG(114,194,116,194)
LIG(144,185,146,185)
LIG(110,220,150,220)
LIG(124,192,126,192)
LIG(144,182,144,185)
LIG(133,188,133,185)
LIG(133,182,136,182)
LIG(124,182,124,188)
LIG(113,188,113,182)
LIG(113,182,116,182)
LIG(143,192,146,192)
LIG(146,192,147,193)
LIG(147,193,146,194)
LIG(143,194,146,194)
LIG(143,198,143,194)
LIG(124,194,126,194)
LIG(113,188,116,188)
LIG(124,192,124,194)
LIG(126,194,126,198)
LIG(126,192,126,194)
LIG(126,198,124,198)
LIG(133,188,136,188)
LIG(133,198,135,192)
LIG(135,192,137,198)
LIG(143,194,143,192)
LIG(146,194,147,195)
LIG(144,182,147,182)
LIG(147,195,147,197)
LIG(133,196,137,196)
LIG(127,187,126,188)
LIG(147,197,146,198)
LIG(133,185,133,182)
LIG(133,185,135,185)
LIG(127,183,127,187)
LIG(126,182,127,183)
LIG(123,188,124,188)
LIG(123,182,124,182)
LIG(143,198,146,198)
LIG(124,182,126,182)
LIG(124,188,126,188)
FSYM
SYM  #InRegister
BB(160,165,200,225)
TITLE 170 158  #InRegister
MODEL 6000
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 5
PIN(160,185,0.000,0.000)DataIn3
PIN(160,175,0.000,0.000)EnableIn
PIN(160,215,0.000,0.000)DataIn0
PIN(160,205,0.000,0.000)DataIn1
PIN(160,195,0.000,0.000)DataIn2
PIN(200,205,0.010,0.016)B0
PIN(200,195,0.010,0.016)B1
PIN(200,185,0.010,0.016)B2
PIN(200,175,0.010,0.014)B3
LIG(160,185,165,185)
LIG(160,175,165,175)
LIG(160,215,165,215)
LIG(160,205,165,205)
LIG(160,195,165,195)
LIG(195,205,200,205)
LIG(195,195,200,195)
LIG(195,185,200,185)
LIG(195,175,200,175)
LIG(165,170,165,220)
LIG(165,170,195,170)
LIG(195,170,195,220)
LIG(195,220,165,220)
VLG module InRegister( DataIn3,EnableIn,DataIn0,DataIn1,DataIn2,B0,B1,B2,
VLG input DataIn3,EnableIn,DataIn0,DataIn1,DataIn2;
VLG output B0,B1,B2,B3;
VLG wire ;
VLG bufif1 #(1) bufif1_1(B0,DataIn0,EnableIn);
VLG bufif1 #(1) bufif1_2(B1,DataIn1,EnableIn);
VLG bufif1 #(1) bufif1_3(B2,DataIn2,EnableIn);
VLG bufif1 #(1) bufif1_4(B3,DataIn3,EnableIn);
VLG endmodule
FSYM
SYM  #digit
BB(215,-80,240,-45)
TITLE 215 -48  #digit1
MODEL 89
PROP                                                                                                                                    
REC(220,-75,15,21,r)
VIS 4
PIN(220,-45,0.000,0.000)digit1[1]
PIN(225,-45,0.000,0.000)digit1[2]
PIN(230,-45,0.000,0.000)digit1[3]
PIN(235,-45,0.000,0.000)digit1[4]
LIG(215,-80,215,-50)
LIG(240,-80,215,-80)
LIG(240,-50,240,-80)
LIG(215,-50,240,-50)
LIG(220,-50,220,-45)
LIG(225,-50,225,-45)
LIG(230,-50,230,-45)
LIG(235,-50,235,-45)
FSYM
SYM  #ArithmeticUnit
BB(150,-45,190,65)
TITLE 160 -52  #ArithmeticUnit
MODEL 6000
PROP                                                                                                                                    
REC(155,-40,30,100,r)
VIS 5
PIN(150,-25,0.000,0.000)B3
PIN(150,15,0.000,0.000)AddSub
PIN(150,-35,0.000,0.000)EnableAlu
PIN(150,55,0.000,0.000)A0
PIN(150,45,0.000,0.000)A1
PIN(150,35,0.000,0.000)A2
PIN(150,25,0.000,0.000)A3
PIN(150,5,0.000,0.000)B0
PIN(150,-5,0.000,0.000)B1
PIN(150,-15,0.000,0.000)B2
PIN(190,-35,0.010,0.014)IB_Alu[3]
PIN(190,-25,0.010,0.016)IB_Alu[2]
PIN(190,-15,0.010,0.016)IB_Alu[1]
PIN(190,-5,0.010,0.016)IB_Alu[0]
PIN(190,5,0.005,0.002)Carry
LIG(150,-25,155,-25)
LIG(150,15,155,15)
LIG(150,-35,155,-35)
LIG(150,55,155,55)
LIG(150,45,155,45)
LIG(150,35,155,35)
LIG(150,25,155,25)
LIG(150,5,155,5)
LIG(150,-5,155,-5)
LIG(150,-15,155,-15)
LIG(185,-35,190,-35)
LIG(185,-25,190,-25)
LIG(185,-15,190,-15)
LIG(185,-5,190,-5)
LIG(185,5,190,5)
LIG(155,-40,155,60)
LIG(155,-40,185,-40)
LIG(185,-40,185,60)
LIG(185,60,155,60)
VLG module ArithmeticUnit( B3,AddSub,EnableAlu,A0,A1,A2,A3,B0,
VLG B1,B2,IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry);
VLG input B3,AddSub,EnableAlu,A0,A1,A2,A3,B0;
VLG input B1,B2;
VLG output IB_Alu[3],IB_Alu[2],IB_Alu[1],IB_Alu[0],Carry;
VLG wire w7,w9,w11,w13,w15,w16,w17,w18;
VLG wire w20,w21,w22,w24,w26,w28,w29,w31;
VLG wire w33,w34,w35,w36;
VLG not #(1) inv_1(w7,A3);
VLG not #(1) inv_2(w9,A2);
VLG not #(1) inv_3(w11,A1);
VLG not #(1) inv_4(w13,A0);
VLG mux #(2) mux_5(w15,A3,w7,AddSub);
VLG mux #(2) mux_6(w16,A2,w9,AddSub);
VLG mux #(2) mux_7(w17,A1,w11,AddSub);
VLG mux #(2) mux_8(w18,A0,w13,AddSub);
VLG mux #(2) mux_9(w26,vss,vdd,AddSub);
VLG bufif1 #(1) bufif1_10(IB_Alu[0],w31,EnableAlu);
VLG bufif1 #(1) bufif1_11(IB_Alu[1],w29,EnableAlu);
VLG bufif1 #(1) bufif1_12(IB_Alu[2],w21,EnableAlu);
VLG bufif1 #(1) bufif1_13(IB_Alu[3],w24,EnableAlu);
VLG xor #(2) xor2_1_14(w33,B2,w16);
VLG xor #(2) xor2_2_15(w21,w33,w20);
VLG assign w22=(B2&w16)|(w20&(B2|w16));
VLG xor #(2) xor2_1_16(w34,B3,w15);
VLG xor #(2) xor2_2_17(w24,w34,w22);
VLG assign Carry=(B3&w15)|(w22&(B3|w15));
VLG xor #(2) xor2_1_18(w35,B1,w17);
VLG xor #(2) xor2_2_19(w29,w35,w28);
VLG assign w20=(B1&w17)|(w28&(B1|w17));
VLG xor #(2) xor2_1_20(w36,B0,w18);
VLG xor #(2) xor2_2_21(w31,w36,w26);
VLG assign w28=(B0&w18)|(w26&(B0|w18));
VLG endmodule
FSYM
SYM  #InstructionReg
BB(-155,-10,-115,120)
TITLE -145 -17  #InstructionReg
MODEL 6000
PROP                                                                                                                                    
REC(-150,-5,30,120,r)
VIS 5
PIN(-155,70,0.000,0.000)Data3
PIN(-155,60,0.000,0.000)EnableInstrReg
PIN(-155,20,0.000,0.000)Instr3
PIN(-155,110,0.000,0.000)ClearInstrReg
PIN(-155,10,0.000,0.000)LatchInstrReg
PIN(-155,0,0.000,0.000)MainClock
PIN(-155,50,0.000,0.000)Instr0
PIN(-155,40,0.000,0.000)Instr1
PIN(-155,30,0.000,0.000)Instr2
PIN(-155,100,0.000,0.000)Data0
PIN(-155,90,0.000,0.000)Data1
PIN(-155,80,0.000,0.000)Data2
PIN(-115,40,0.010,0.014)IB3
PIN(-115,50,0.010,0.016)IB2
PIN(-115,60,0.010,0.016)IB1
PIN(-115,70,0.010,0.016)IB0
PIN(-115,0,0.010,0.004)ToInstr3
PIN(-115,30,0.010,0.016)ToInstr0
PIN(-115,20,0.010,0.012)ToInstr1
PIN(-115,10,0.010,0.012)ToInstr2
LIG(-155,70,-150,70)
LIG(-155,60,-150,60)
LIG(-155,20,-150,20)
LIG(-155,110,-150,110)
LIG(-155,10,-150,10)
LIG(-155,0,-150,0)
LIG(-155,50,-150,50)
LIG(-155,40,-150,40)
LIG(-155,30,-150,30)
LIG(-155,100,-150,100)
LIG(-155,90,-150,90)
LIG(-155,80,-150,80)
LIG(-120,40,-115,40)
LIG(-120,50,-115,50)
LIG(-120,60,-115,60)
LIG(-120,70,-115,70)
LIG(-120,0,-115,0)
LIG(-120,30,-115,30)
LIG(-120,20,-115,20)
LIG(-120,10,-115,10)
LIG(-150,-5,-150,115)
LIG(-150,-5,-120,-5)
LIG(-120,-5,-120,115)
LIG(-120,115,-150,115)
VLG module InstructionReg( Data3,EnableInstrReg,Instr3,ClearInstrReg,LatchInstrReg,MainClock,Instr0,Instr1,
VLG Instr2,Data0,Data1,Data2,IB3,IB2,IB1,IB0,
VLG ToInstr3,ToInstr0,ToInstr1,ToInstr2);
VLG input Data3,EnableInstrReg,Instr3,ClearInstrReg,LatchInstrReg,MainClock,Instr0,Instr1;
VLG input Instr2,Data0,Data1,Data2;
VLG output IB3,IB2,IB1,IB0,ToInstr3,ToInstr0,ToInstr1,ToInstr2;
VLG wire w3,w4,w5,w6,w8,w9,w11,w12;
VLG wire w14,w15,w18,w26,w29,w32,;
VLG dreg #(4) dreg_1(w5,w6,Data0,w3,w4);
VLG dreg #(4) dreg_2(w8,w9,Data1,w3,w4);
VLG dreg #(4) dreg_3(w11,w12,Data2,w3,w4);
VLG dreg #(4) dreg_4(w14,w15,Data3,w3,w4);
VLG dreg #(4) dreg_5(ToInstr3,w18,Instr3,w3,w4);
VLG notif1 #(1) notif1_6(IB0,w6,EnableInstrReg);
VLG notif1 #(1) notif1_7(IB1,w9,EnableInstrReg);
VLG notif1 #(1) notif1_8(IB2,w12,EnableInstrReg);
VLG notif1 #(1) notif1_9(IB3,w15,EnableInstrReg);
VLG dreg #(4) dreg_10(ToInstr0,w26,Instr0,w3,w4);
VLG dreg #(4) dreg_11(ToInstr1,w29,Instr1,w3,w4);
VLG dreg #(4) dreg_12(ToInstr2,w32,Instr2,w3,w4);
VLG not #(4) inv_13(w3,ClearInstrReg);
VLG and #(6) and2_14(w4,MainClock,LatchInstrReg);
VLG endmodule
FSYM
SYM  #mem8x8
BB(-250,-25,-200,95)
TITLE -238 -10  #Mem8x8
MODEL 865
PROP   01010010 00010001 00110000 00100101 00110000 00000000 00000000 00000000                                                                                                                          
REC(-238,0,20,40,r)
VIS 3
PIN(-250,-5,0.000,0.000)Addr2
PIN(-250,5,0.000,0.000)Addr1
PIN(-250,15,0.000,0.000)Addr0
PIN(-250,30,0.000,0.000)Din7
PIN(-250,40,0.000,0.000)Din6
PIN(-250,50,0.000,0.000)Din5
PIN(-250,60,0.000,0.000)Din4
PIN(-250,70,0.000,0.000)Din3
PIN(-250,80,0.000,0.000)Din2
PIN(-250,90,0.000,0.000)Din1
PIN(-250,100,0.000,0.000)Din0
PIN(-230,-25,0.000,0.000)WriteMem
PIN(-220,-25,0.000,0.000)ReadMem
PIN(-200,30,0.005,0.002)Dout7
PIN(-200,40,0.005,0.002)Dout6
PIN(-200,50,0.005,0.002)Dout5
PIN(-200,60,0.005,0.002)Dout4
PIN(-200,70,0.005,0.002)Dout3
PIN(-200,80,0.005,0.002)Dout2
PIN(-200,90,0.005,0.002)Dout1
PIN(-200,100,0.005,0.002)Dout0
LIG(-200,90,-210,90)
LIG(-210,80,-210,90)
LIG(-200,80,-210,80)
LIG(-210,70,-210,80)
LIG(-200,70,-210,70)
LIG(-210,90,-210,100)
LIG(-240,105,-210,105)
LIG(-240,100,-240,105)
LIG(-200,100,-210,100)
LIG(-250,100,-240,100)
LIG(-220,-15,-210,-15)
LIG(-220,-25,-220,-15)
LIG(-230,-15,-220,-15)
LIG(-230,-25,-230,-15)
LIG(-210,60,-210,70)
LIG(-200,60,-210,60)
LIG(-210,50,-210,60)
LIG(-210,50,-200,50)
LIG(-210,40,-210,50)
LIG(-200,40,-210,40)
LIG(-210,30,-210,40)
LIG(-210,30,-200,30)
LIG(-210,-15,-210,30)
LIG(-240,-15,-230,-15)
LIG(-240,90,-240,100)
LIG(-250,90,-240,90)
LIG(-240,80,-240,90)
LIG(-250,80,-240,80)
LIG(-240,70,-240,80)
LIG(-250,70,-240,70)
LIG(-240,60,-240,70)
LIG(-250,60,-240,60)
LIG(-240,50,-240,60)
LIG(-250,50,-240,50)
LIG(-240,40,-240,50)
LIG(-250,40,-240,40)
LIG(-240,30,-240,40)
LIG(-240,15,-240,30)
LIG(-240,5,-240,15)
LIG(-240,-5,-240,5)
LIG(-240,-15,-240,-5)
LIG(-250,30,-240,30)
LIG(-250,15,-240,15)
LIG(-250,5,-240,5)
LIG(-210,100,-210,105)
LIG(-250,-5,-240,-5)
FSYM
SYM  #Counter16
BB(-330,-25,-290,25)
TITLE -320 -32  #Counter16
MODEL 6000
PROP                                                                                                                                    
REC(-325,-20,30,40,r)
VIS 5
PIN(-330,5,0.000,0.000)ClearCounter
PIN(-330,-15,0.000,0.000)MainClock
PIN(-330,-5,0.000,0.000)EnableCount
PIN(-290,-15,0.010,0.002)PC[3]
PIN(-290,-5,0.010,0.006)PC[2]
PIN(-290,5,0.010,0.006)PC[1]
PIN(-290,15,0.010,0.006)PC[0]
LIG(-330,5,-325,5)
LIG(-330,-15,-325,-15)
LIG(-330,-5,-325,-5)
LIG(-295,-15,-290,-15)
LIG(-295,-5,-290,-5)
LIG(-295,5,-290,5)
LIG(-295,15,-290,15)
LIG(-325,-20,-325,20)
LIG(-325,-20,-295,-20)
LIG(-295,-20,-295,20)
LIG(-295,20,-325,20)
VLG module Counter16( ClearCounter,MainClock,EnableCount,PC[3],PC[2],PC[1],PC[0]);
VLG input ClearCounter,MainClock,EnableCount;
VLG output PC[3],PC[2],PC[1],PC[0];
VLG wire w2,w3,w4,w6,w8,w10,;
VLG dreg #(4) dreg_1(PC[0],w2,w2,w3,w4);
VLG dreg #(4) dreg_2(PC[1],w6,w6,w3,PC[0]);
VLG dreg #(4) dreg_3(PC[2],w8,w8,w3,PC[1]);
VLG dreg #(4) dreg_4(PC[3],w10,w10,w3,PC[2]);
VLG not #(3) inv_5(w3,ClearCounter);
VLG and #(3) and2_6(w4,EnableCount,MainClock);
VLG endmodule
FSYM
SYM  #vss
BB(-250,-33,-240,-25)
TITLE -246 -28  #vss
MODEL 0
PROP                                                                                                                                    
REC(-250,-35,0,0,b)
VIS 0
PIN(-245,-35,0.000,0.000)vss
LIG(-245,-35,-245,-30)
LIG(-250,-30,-240,-30)
LIG(-250,-27,-248,-30)
LIG(-248,-27,-246,-30)
LIG(-246,-27,-244,-30)
LIG(-244,-27,-242,-30)
FSYM
SYM  #MicroInstruction
BB(-65,-175,-25,-55)
TITLE -55 -182  #MicroInstruction
MODEL 6000
PROP                                                                                                                                    
REC(-60,-170,30,110,r)
VIS 5
PIN(-65,-95,0.000,0.000)Instr0
PIN(-65,-105,0.000,0.000)Instr1
PIN(-65,-115,0.000,0.000)Instr2
PIN(-65,-125,0.000,0.000)Instr3
PIN(-65,-165,0.000,0.000)Phase3
PIN(-65,-155,0.000,0.000)Phase2
PIN(-65,-145,0.000,0.000)Phase1
PIN(-65,-135,0.000,0.000)Phase0
PIN(-25,-155,0.010,0.034)ProgCount
PIN(-25,-145,0.010,0.034)LoadOut
PIN(-25,-65,0.010,0.042)AddSub
PIN(-25,-95,0.010,0.040)EnableIn
PIN(-25,-85,0.010,0.040)EnableAlu
PIN(-25,-165,0.010,0.034)ReadMem
PIN(-25,-125,0.010,0.034)LoadB
PIN(-25,-135,0.010,0.034)LoadInstr
PIN(-25,-75,0.010,0.040)EnableA
PIN(-25,-105,0.010,0.040)EnableInstr
PIN(-25,-115,0.010,0.034)LoadA
LIG(-65,-95,-60,-95)
LIG(-65,-105,-60,-105)
LIG(-65,-115,-60,-115)
LIG(-65,-125,-60,-125)
LIG(-65,-165,-60,-165)
LIG(-65,-155,-60,-155)
LIG(-65,-145,-60,-145)
LIG(-65,-135,-60,-135)
LIG(-30,-155,-25,-155)
LIG(-30,-145,-25,-145)
LIG(-30,-65,-25,-65)
LIG(-30,-95,-25,-95)
LIG(-30,-85,-25,-85)
LIG(-30,-165,-25,-165)
LIG(-30,-125,-25,-125)
LIG(-30,-135,-25,-135)
LIG(-30,-75,-25,-75)
LIG(-30,-105,-25,-105)
LIG(-30,-115,-25,-115)
LIG(-60,-170,-60,-60)
LIG(-60,-170,-30,-170)
LIG(-30,-170,-30,-60)
LIG(-30,-60,-60,-60)
VLG module MicroInstruction( Instr0,Instr1,Instr2,Instr3,Phase3,Phase2,Phase1,Phase0,
VLG ProgCount,LoadOut,AddSub,EnableIn,EnableAlu,ReadMem,LoadB,LoadInstr,
VLG EnableA,EnableInstr,LoadA);
VLG input Instr0,Instr1,Instr2,Instr3,Phase3,Phase2,Phase1,Phase0;
VLG output ProgCount,LoadOut,AddSub,EnableIn,EnableAlu,ReadMem,LoadB,LoadInstr;
VLG output EnableA,EnableInstr,LoadA;
VLG wire w6,w7,w8,w9,w10,w11,w12,w13;
VLG wire w14,w15,w17,w19,w20,w21,w22,w23;
VLG wire w24,w25,w26,w27,w28,w29,w43,w44;
VLG wire w45,w46,w47,w48,w49,w50,w51,w52;
VLG wire w53,w54;
VLG not #(3) inv_1(w6,Instr3);
VLG not #(2) inv_2(w7,Instr0);
VLG not #(3) inv_3(w8,Instr1);
VLG not #(3) inv_4(w9,Instr2);
VLG and #(4) and4_5(w10,w6,w9,w8,w7);
VLG and #(4) and4_6(w11,w6,Instr2,w8,Instr0);
VLG and #(4) and4_7(w12,w6,w9,w8,Instr0);
VLG and #(4) and4_8(w13,w6,w9,Instr1,w7);
VLG and #(4) and4_9(w14,w6,w9,Instr1,Instr0);
VLG and #(4) and4_10(w15,w6,Instr2,w8,w7);
VLG probe #(1) probe_11(w11); // 1 Load(0101)
VLG probe #(1) probe_12(w15); // 1 In(0100)
VLG and #(7) and2_13(w17,w11,Phase3);
VLG and #(7) and2_14(w19,w11,Phase2);
VLG and #(7) and2_15(w20,w15,Phase3);
VLG and #(7) and2_16(w21,w15,Phase2);
VLG and #(7) and2_17(w22,w14,Phase3);
VLG and #(7) and2_18(w23,w14,Phase2);
VLG and #(7) and2_19(w24,w13,Phase3);
VLG and #(7) and2_20(w25,w13,Phase2);
VLG probe #(1) probe_21(w14); // 1 Out(0011)
VLG probe #(1) probe_22(w13); // 1 Sub(0010)
VLG and #(7) and2_23(w26,w12,Phase3);
VLG and #(7) and2_24(w27,w10,Phase2);
VLG and #(7) and2_25(w28,w12,Phase2);
VLG and #(7) and2_26(w29,w10,Phase3);
VLG probe #(1) probe_27(w12); // 1 Add(0001)
VLG probe #(1) probe_28(w10); // 1 Nop(0000)
VLG nmos #(7) nmos_29(LoadOut,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_30(EnableAlu,vdd,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_31(EnableAlu,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_32(LoadOut,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_33(EnableAlu,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_34(LoadOut,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_35(LoadOut,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_36(LoadOut,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_37(LoadOut,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_38(LoadOut,vdd,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_39(LoadOut,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_40(LoadOut,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_41(LoadOut,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_42(LoadOut,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_43(EnableAlu,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_44(EnableAlu,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_45(EnableAlu,vdd,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_46(EnableAlu,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_47(EnableAlu,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_48(EnableAlu,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_49(EnableAlu,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_50(EnableAlu,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_51(EnableAlu,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_52(EnableAlu,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_53(EnableAlu,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_54(ProgCount,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_55(ProgCount,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_56(ProgCount,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_57(ProgCount,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_58(ProgCount,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_59(ProgCount,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_60(ProgCount,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_61(ProgCount,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_62(ProgCount,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_63(ProgCount,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_64(ProgCount,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_65(ProgCount,vdd,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_66(ProgCount,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_67(ProgCount,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_68(LoadOut,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_69(LoadOut,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_70(LoadOut,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_71(AddSub,vdd,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_72(AddSub,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_73(AddSub,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_74(LoadInstr,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_75(AddSub,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_76(AddSub,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_77(AddSub,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_78(AddSub,vdd,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_79(AddSub,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_80(AddSub,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_81(AddSub,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_82(AddSub,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_83(AddSub,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_84(AddSub,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_85(AddSub,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_86(EnableIn,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_87(EnableIn,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_88(EnableIn,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_89(EnableIn,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_90(EnableIn,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_91(EnableIn,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_92(EnableIn,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_93(EnableIn,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_94(EnableIn,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_95(EnableIn,vdd,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_96(EnableIn,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_97(EnableIn,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_98(EnableIn,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_99(EnableIn,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_100(LoadA,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_101(ReadMem,vdd,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_102(ReadMem,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_103(LoadB,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_104(ReadMem,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_105(ReadMem,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_106(ReadMem,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_107(ReadMem,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_108(ReadMem,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_109(ReadMem,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_110(ReadMem,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_111(ReadMem,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_112(ReadMem,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_113(ReadMem,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_114(ReadMem,vdd,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_115(ReadMem,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_116(LoadB,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_117(LoadB,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_118(LoadB,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_119(LoadB,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_120(LoadB,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_121(LoadB,vdd,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_122(LoadB,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_123(LoadB,vdd,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_124(LoadB,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_125(LoadB,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_126(LoadB,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_127(LoadB,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_128(LoadB,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_129(EnableA,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_130(EnableA,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_131(EnableA,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_132(EnableA,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_133(EnableA,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_134(EnableA,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_135(EnableA,vdd,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_136(EnableA,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_137(EnableA,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_138(EnableA,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_139(EnableA,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_140(EnableA,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_141(EnableA,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_142(EnableA,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_143(EnableInstr,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_144(EnableInstr,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_145(EnableInstr,vdd,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_146(EnableInstr,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_147(EnableInstr,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_148(EnableInstr,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_149(EnableInstr,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_150(EnableInstr,vdd,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_151(EnableInstr,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_152(EnableInstr,vdd,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_153(EnableInstr,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_154(EnableInstr,vdd,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_155(EnableInstr,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_156(EnableInstr,vss,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_157(LoadA,vdd,w24); // 0.3u 0.07u
VLG nmos #(7) nmos_158(LoadA,vss,Phase0); // 0.3u 0.07u
VLG nmos #(7) nmos_159(LoadA,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_160(LoadInstr,vss,w27); // 0.3u 0.07u
VLG nmos #(7) nmos_161(LoadInstr,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_162(LoadInstr,vss,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_163(LoadInstr,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_164(LoadInstr,vss,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_165(LoadInstr,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_166(LoadInstr,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_167(LoadInstr,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_168(LoadInstr,vss,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_169(LoadInstr,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_170(LoadInstr,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_171(LoadA,vss,w29); // 0.3u 0.07u
VLG nmos #(7) nmos_172(LoadA,vss,w28); // 0.3u 0.07u
VLG nmos #(7) nmos_173(LoadA,vdd,w26); // 0.3u 0.07u
VLG nmos #(7) nmos_174(LoadA,vss,w25); // 0.3u 0.07u
VLG nmos #(7) nmos_175(LoadA,vss,w23); // 0.3u 0.07u
VLG nmos #(7) nmos_176(LoadA,vss,w22); // 0.3u 0.07u
VLG nmos #(7) nmos_177(LoadA,vdd,w21); // 0.3u 0.07u
VLG nmos #(7) nmos_178(LoadA,vss,w20); // 0.3u 0.07u
VLG nmos #(7) nmos_179(LoadA,vdd,w19); // 0.3u 0.07u
VLG nmos #(7) nmos_180(LoadInstr,vss,Phase1); // 0.3u 0.07u
VLG nmos #(7) nmos_181(LoadA,vss,w17); // 0.3u 0.07u
VLG nmos #(7) nmos_182(LoadInstr,vdd,Phase0); // 0.3u 0.07u
VLG and #(2) and2_1_183(w43,w9,w6);
VLG and #(2) and2_2_184(w44,w7,w8);
VLG and #(3) and2_3_185(w10,w44,w43);
VLG and #(2) and2_1_186(w45,Instr2,w6);
VLG and #(2) and2_2_187(w46,Instr0,w8);
VLG and #(3) and2_3_188(w11,w46,w45);
VLG and #(2) and2_1_189(w47,w9,w6);
VLG and #(2) and2_2_190(w48,Instr0,w8);
VLG and #(3) and2_3_191(w12,w48,w47);
VLG and #(2) and2_1_192(w49,w9,w6);
VLG and #(2) and2_2_193(w50,w7,Instr1);
VLG and #(3) and2_3_194(w13,w50,w49);
VLG and #(2) and2_1_195(w51,w9,w6);
VLG and #(2) and2_2_196(w52,Instr0,Instr1);
VLG and #(3) and2_3_197(w14,w52,w51);
VLG and #(2) and2_1_198(w53,Instr2,w6);
VLG and #(2) and2_2_199(w54,w7,w8);
VLG and #(3) and2_3_200(w15,w54,w53);
VLG endmodule
FSYM
SYM  #RingCounter4
BB(-150,-175,-110,-125)
TITLE -140 -182  #RingCounter4
MODEL 6000
PROP                                                                                                                                    
REC(-145,-170,30,40,r)
VIS 5
PIN(-150,-155,0.000,0.000)Clear
PIN(-150,-165,0.000,0.000)Phase_Count
PIN(-110,-165,0.010,0.014)Phase3
PIN(-110,-135,0.010,0.024)Phase0
PIN(-110,-145,0.010,0.024)Phase1
PIN(-110,-155,0.010,0.014)Phase2
LIG(-150,-155,-145,-155)
LIG(-150,-165,-145,-165)
LIG(-115,-165,-110,-165)
LIG(-115,-135,-110,-135)
LIG(-115,-145,-110,-145)
LIG(-115,-155,-110,-155)
LIG(-145,-170,-145,-130)
LIG(-145,-170,-115,-170)
LIG(-115,-170,-115,-130)
LIG(-115,-130,-145,-130)
VLG module RingCounter4( Clear,Phase_Count,Phase3,Phase0,Phase1,Phase2);
VLG input Clear,Phase_Count;
VLG output Phase3,Phase0,Phase1,Phase2;
VLG wire w3,w4,w6,w7,w8,w9,w10,w11;
VLG wire w12,;
VLG not #(3) inv_1(w3,Clear);
VLG dreg #(4) dreg_2(w6,w7,w4,w3,Phase_Count);
VLG dreg #(4) dreg_3(w8,w9,w6,w3,Phase_Count);
VLG dreg #(4) dreg_4(w10,w11,w8,w3,Phase_Count);
VLG dreg #(4) dreg_5(w12,w4,w10,w3,Phase_Count);
VLG xor #(3) xor2_6(Phase0,w12,w7);
VLG xor #(3) xor2_7(Phase1,w6,w8);
VLG xor #(3) xor2_8(Phase2,w8,w10);
VLG xor #(3) xor2_9(Phase3,w10,w12);
VLG endmodule
FSYM
SYM  #Arrow
BB(-260,-163,-250,-157)
TITLE -260 -165  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-260,-160,0.000,0.000)in
LIG(-260,-160,-250,-160)
LIG(-252,-162,-250,-160)
LIG(-252,-158,-250,-160)
FSYM
SYM  #button
BB(-319,-164,-310,-156)
TITLE -315 -160  #MainClock
MODEL 59
PROP                                                                                                                                    
REC(-318,-163,6,6,r)
VIS 1
PIN(-310,-160,0.000,0.000)MainClock
LIG(-311,-160,-310,-160)
LIG(-319,-156,-319,-164)
LIG(-311,-156,-319,-156)
LIG(-311,-164,-311,-156)
LIG(-319,-164,-311,-164)
LIG(-318,-157,-318,-163)
LIG(-312,-157,-318,-157)
LIG(-312,-163,-312,-157)
LIG(-318,-163,-312,-163)
FSYM
SYM  #Arrow
BB(-260,-148,-250,-142)
TITLE -260 -150  #RST
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-260,-145,0.000,0.000)in
LIG(-260,-145,-250,-145)
LIG(-252,-147,-250,-145)
LIG(-252,-143,-250,-145)
FSYM
SYM  #button
BB(-319,-149,-310,-141)
TITLE -315 -145  #MainClear
MODEL 59
PROP                                                                                                                                    
REC(-318,-148,6,6,r)
VIS 1
PIN(-310,-145,0.000,0.000)MainClear
LIG(-311,-145,-310,-145)
LIG(-319,-141,-319,-149)
LIG(-311,-141,-319,-141)
LIG(-311,-149,-311,-141)
LIG(-319,-149,-311,-149)
LIG(-318,-142,-318,-148)
LIG(-312,-142,-318,-142)
LIG(-312,-148,-312,-142)
LIG(-318,-148,-312,-148)
FSYM
SYM  #Arrow
BB(-165,-158,-155,-152)
TITLE -165 -160  #RST
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-165,-155,0.000,0.000)in
LIG(-165,-155,-155,-155)
LIG(-157,-157,-155,-155)
LIG(-157,-153,-155,-155)
FSYM
SYM  #Arrow
BB(-165,-168,-155,-162)
TITLE -165 -170  #CLK
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-165,-165,0.000,0.000)in
LIG(-165,-165,-155,-165)
LIG(-157,-167,-155,-165)
LIG(-157,-163,-155,-165)
FSYM
SYM  #Arrow
BB(-5,-168,5,-162)
TITLE -5 -170  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-165,0.000,0.000)in
LIG(-5,-165,5,-165)
LIG(3,-167,5,-165)
LIG(3,-163,5,-165)
FSYM
SYM  #Arrow
BB(-5,-158,5,-152)
TITLE -5 -160  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-155,0.000,0.000)in
LIG(-5,-155,5,-155)
LIG(3,-157,5,-155)
LIG(3,-153,5,-155)
FSYM
SYM  #Arrow
BB(-5,-148,5,-142)
TITLE -5 -150  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-145,0.000,0.000)in
LIG(-5,-145,5,-145)
LIG(3,-147,5,-145)
LIG(3,-143,5,-145)
FSYM
SYM  #Arrow
BB(-5,-138,5,-132)
TITLE -5 -140  #LoadInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-135,0.000,0.000)in
LIG(-5,-135,5,-135)
LIG(3,-137,5,-135)
LIG(3,-133,5,-135)
FSYM
SYM  #Arrow
BB(-5,-128,5,-122)
TITLE -5 -130  #LoadB
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-125,0.000,0.000)in
LIG(-5,-125,5,-125)
LIG(3,-127,5,-125)
LIG(3,-123,5,-125)
FSYM
SYM  #Arrow
BB(-5,-118,5,-112)
TITLE -5 -120  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-115,0.000,0.000)in
LIG(-5,-115,5,-115)
LIG(3,-117,5,-115)
LIG(3,-113,5,-115)
FSYM
SYM  #Arrow
BB(-5,-108,5,-102)
TITLE -5 -110  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-105,0.000,0.000)in
LIG(-5,-105,5,-105)
LIG(3,-107,5,-105)
LIG(3,-103,5,-105)
FSYM
SYM  #Arrow
BB(-5,-98,5,-92)
TITLE -5 -100  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-95,0.000,0.000)in
LIG(-5,-95,5,-95)
LIG(3,-97,5,-95)
LIG(3,-93,5,-95)
FSYM
SYM  #Arrow
BB(-5,-88,5,-82)
TITLE -5 -90  #EnableAlu
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-85,0.000,0.000)in
LIG(-5,-85,5,-85)
LIG(3,-87,5,-85)
LIG(3,-83,5,-85)
FSYM
SYM  #Arrow
BB(-5,-78,5,-72)
TITLE -5 -80  #EnableA
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-75,0.000,0.000)in
LIG(-5,-75,5,-75)
LIG(3,-77,5,-75)
LIG(3,-73,5,-75)
FSYM
SYM  #Arrow
BB(-5,-68,5,-62)
TITLE -5 -70  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-5,-65,0.000,0.000)in
LIG(-5,-65,5,-65)
LIG(3,-67,5,-65)
LIG(3,-63,5,-65)
FSYM
SYM  #Arrow
BB(-345,-18,-335,-12)
TITLE -345 -20  #CLK
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-345,-15,0.000,0.000)in
LIG(-345,-15,-335,-15)
LIG(-337,-17,-335,-15)
LIG(-337,-13,-335,-15)
FSYM
SYM  #Arrow
BB(-345,-8,-335,-2)
TITLE -345 -10  #ProgCount
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-345,-5,0.000,0.000)in
LIG(-345,-5,-335,-5)
LIG(-337,-7,-335,-5)
LIG(-337,-3,-335,-5)
FSYM
SYM  #Arrow
BB(-345,2,-335,8)
TITLE -345 0  #RST
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-345,5,0.000,0.000)in
LIG(-345,5,-335,5)
LIG(-337,3,-335,5)
LIG(-337,7,-335,5)
FSYM
SYM  #Arrow
BB(-230,-58,-220,-52)
TITLE -230 -60  #ReadMem
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(-230,-55,0.000,0.000)in
LIG(-230,-55,-220,-55)
LIG(-222,-57,-220,-55)
LIG(-222,-53,-220,-55)
FSYM
SYM  #Arrow
BB(-180,107,-170,113)
TITLE -180 105  #RST
MODEL 935
PROP                                                                                                                                    
REC(-5,0,0,0, )
VIS 4
PIN(-180,110,0.000,0.000)in
LIG(-180,110,-170,110)
LIG(-172,108,-170,110)
LIG(-172,112,-170,110)
FSYM
SYM  #Arrow
BB(25,-18,35,-12)
TITLE 25 -20  #LoadB
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(25,-15,0.000,0.000)in
LIG(25,-15,35,-15)
LIG(33,-17,35,-15)
LIG(33,-13,35,-15)
FSYM
SYM  #Arrow
BB(25,-28,35,-22)
TITLE 25 -30  #CLK
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(25,-25,0.000,0.000)in
LIG(25,-25,35,-25)
LIG(33,-27,35,-25)
LIG(33,-23,35,-25)
FSYM
SYM  #Arrow
BB(25,-8,35,-2)
TITLE 25 -10  #RST
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(25,-5,0.000,0.000)in
LIG(25,-5,35,-5)
LIG(33,-7,35,-5)
LIG(33,-3,35,-5)
FSYM
SYM  #Arrow
BB(20,87,30,93)
TITLE 20 85  #CLK
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(20,90,0.000,0.000)in
LIG(20,90,30,90)
LIG(28,88,30,90)
LIG(28,92,30,90)
FSYM
SYM  #Arrow
BB(20,97,30,103)
TITLE 20 95  #LoadA
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(20,100,0.000,0.000)in
LIG(20,100,30,100)
LIG(28,98,30,100)
LIG(28,102,30,100)
FSYM
SYM  #Arrow
BB(20,107,30,113)
TITLE 20 105  #EnableA
MODEL 935
PROP   
REC(10,0,0,0, )                                                                                                                               
REC(0,0,0,0, )
VIS 4
PIN(20,110,0.000,0.000)in
LIG(20,110,30,110)
LIG(28,108,30,110)
LIG(28,112,30,110)
FSYM
SYM  #Arrow
BB(20,117,30,123)
TITLE 20 115  #RST
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(20,120,0.000,0.000)in
LIG(20,120,30,120)
LIG(28,118,30,120)
LIG(28,122,30,120)
FSYM
SYM  #Arrow
BB(140,172,150,178)
TITLE 140 170  #EnableIn
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(140,175,0.000,0.000)in
LIG(140,175,150,175)
LIG(148,173,150,175)
LIG(148,177,150,175)
FSYM
SYM  #Arrow
BB(120,12,130,18)
TITLE 120 10  #AddSub
MODEL 935
PROP                                                                                                                                    
REC(5,0,0,0, )
VIS 4
PIN(120,15,0.000,0.000)in
LIG(120,15,130,15)
LIG(128,13,130,15)
LIG(128,17,130,15)
FSYM
SYM  #vdd
BB(265,55,275,65)
TITLE 268 61  #vdd
MODEL 1
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(270,65,0.000,0.000)vdd
LIG(270,65,270,60)
LIG(270,60,265,60)
LIG(265,60,270,55)
LIG(270,55,275,60)
LIG(275,60,270,60)
FSYM
SYM  #Arrow
BB(270,72,280,78)
TITLE 270 70  #CLK
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(270,75,0.000,0.000)in
LIG(270,75,280,75)
LIG(278,73,280,75)
LIG(278,77,280,75)
FSYM
SYM  #Arrow
BB(270,82,280,88)
TITLE 270 80  #LoadOut
MODEL 935
PROP                                                                                                                                    
REC(10,0,0,0, )
VIS 4
PIN(270,85,0.000,0.000)in
LIG(270,85,280,85)
LIG(278,83,280,85)
LIG(278,87,280,85)
FSYM
SYM  #Arrow
BB(-180,62,-170,68)
TITLE -180 60  #EnableInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-180,65,0.000,0.000)in
LIG(-180,65,-170,65)
LIG(-172,63,-170,65)
LIG(-172,67,-170,65)
FSYM
SYM  #Arrow
BB(-180,7,-170,13)
TITLE -180 5  #LoadInstr
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-180,10,0.000,0.000)in
LIG(-180,10,-170,10)
LIG(-172,8,-170,10)
LIG(-172,12,-170,10)
FSYM
SYM  #Arrow
BB(-180,-3,-170,3)
TITLE -180 -5  #CLK
MODEL 935
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 4
PIN(-180,0,0.000,0.000)in
LIG(-180,0,-170,0)
LIG(-172,-2,-170,0)
LIG(-172,2,-170,0)
FSYM
CNC(230 115)
CNC(225 105)
CNC(220 95)
CNC(220 90)
CNC(225 100)
CNC(220 -35)
CNC(235 125)
CNC(225 -25)
CNC(230 -15)
CNC(235 -5)
CNC(235 120)
CNC(230 110)
CNC(-20 70)
CNC(-20 70)
CNC(-20 70)
CNC(-25 60)
CNC(-30 50)
CNC(-35 40)
CNC(-35 40)
CNC(-35 40)
CNC(-20 70)
CNC(90 120)
CNC(-25 60)
CNC(95 110)
CNC(-30 50)
CNC(100 100)
CNC(-35 40)
CNC(105 90)
LIG(290,125,235,125)
LIG(230,115,230,195)
LIG(290,105,225,105)
LIG(235,125,235,120)
LIG(225,105,225,185)
LIG(-30,15,40,15)
LIG(370,95,370,55)
LIG(360,75,360,55)
LIG(290,115,230,115)
LIG(330,75,360,75)
LIG(365,55,365,85)
LIG(355,65,355,55)
LIG(330,65,355,65)
LIG(330,85,365,85)
LIG(330,95,370,95)
LIG(-35,130,40,130)
LIG(-35,40,-35,130)
LIG(40,5,-35,5)
LIG(80,-25,150,-25)
LIG(80,-15,150,-15)
LIG(80,-5,150,-5)
LIG(80,5,150,5)
LIG(-35,5,-35,40)
LIG(150,55,140,55)
LIG(140,55,140,160)
LIG(140,160,80,160)
LIG(150,45,130,45)
LIG(130,45,130,150)
LIG(130,150,80,150)
LIG(150,35,120,35)
LIG(120,35,120,140)
LIG(120,140,80,140)
LIG(150,25,110,25)
LIG(110,25,110,130)
LIG(110,130,80,130)
LIG(190,-35,220,-35)
LIG(220,-35,220,-45)
LIG(190,-25,225,-25)
LIG(225,-25,225,-45)
LIG(190,-15,230,-15)
LIG(230,-15,230,-45)
LIG(190,-5,235,-5)
LIG(235,-5,235,-45)
LIG(105,90,220,90)
LIG(220,-35,220,90)
LIG(200,175,220,175)
LIG(220,90,220,95)
LIG(225,-25,225,100)
LIG(225,185,195,185)
LIG(230,-15,230,110)
LIG(230,195,200,195)
LIG(200,205,235,205)
LIG(235,205,235,125)
LIG(80,120,90,120)
LIG(235,120,235,-5)
LIG(80,110,95,110)
LIG(230,110,230,115)
LIG(80,100,100,100)
LIG(225,100,225,105)
LIG(80,90,105,90)
LIG(220,95,220,175)
LIG(290,95,220,95)
LIG(40,35,-20,35)
LIG(-20,35,-20,70)
LIG(-20,160,40,160)
LIG(40,150,-25,150)
LIG(40,25,-25,25)
LIG(-25,25,-25,60)
LIG(40,140,-30,140)
LIG(-30,15,-30,50)
LIG(-230,-35,-230,-25)
LIG(-115,70,-20,70)
LIG(-20,70,-20,160)
LIG(-115,40,-35,40)
LIG(-30,50,-30,140)
LIG(-115,60,-25,60)
LIG(-25,60,-25,150)
LIG(-115,50,-30,50)
LIG(-200,100,-155,100)
LIG(-200,90,-155,90)
LIG(-200,80,-155,80)
LIG(-200,70,-155,70)
LIG(-200,60,-165,60)
LIG(-165,60,-165,50)
LIG(-165,50,-155,50)
LIG(-200,50,-170,50)
LIG(-170,50,-170,40)
LIG(-170,40,-155,40)
LIG(-200,40,-175,40)
LIG(-175,40,-175,30)
LIG(-175,30,-155,30)
LIG(-200,30,-180,30)
LIG(-180,30,-180,20)
LIG(-180,20,-155,20)
LIG(-290,15,-250,15)
LIG(-290,5,-250,5)
LIG(-290,-5,-250,-5)
LIG(-245,-35,-230,-35)
LIG(-115,0,-90,0)
LIG(-90,0,-90,-125)
LIG(-90,-125,-65,-125)
LIG(-115,10,-85,10)
LIG(-85,10,-85,-115)
LIG(-85,-115,-65,-115)
LIG(-115,20,-80,20)
LIG(-80,20,-80,-105)
LIG(-80,-105,-65,-105)
LIG(-115,30,-75,30)
LIG(-75,30,-75,-95)
LIG(-75,-95,-65,-95)
LIG(-110,-135,-65,-135)
LIG(-110,-145,-65,-145)
LIG(-110,-155,-65,-155)
LIG(-110,-165,-65,-165)
LIG(-310,-160,-260,-160)
LIG(-310,-145,-260,-145)
LIG(-150,-165,-165,-165)
LIG(-150,-155,-165,-155)
LIG(-25,-165,-5,-165)
LIG(-25,-155,-5,-155)
LIG(-25,-145,-5,-145)
LIG(-25,-135,-5,-135)
LIG(-25,-125,-5,-125)
LIG(-25,-115,-5,-115)
LIG(-25,-105,-5,-105)
LIG(-25,-95,-5,-95)
LIG(-25,-85,-5,-85)
LIG(-25,-75,-5,-75)
LIG(-25,-65,-5,-65)
LIG(-330,-15,-345,-15)
LIG(-155,0,-180,0)
LIG(-330,5,-345,5)
LIG(-220,-25,-220,-55)
LIG(-230,-55,-220,-55)
LIG(-155,110,-180,110)
LIG(40,-15,25,-15)
LIG(40,-25,25,-25)
LIG(40,-5,25,-5)
LIG(20,90,40,90)
LIG(20,100,40,100)
LIG(20,120,40,120)
LIG(20,110,40,110)
LIG(-20,70,90,70)
LIG(90,70,90,120)
LIG(90,120,235,120)
LIG(-25,60,95,60)
LIG(95,60,95,110)
LIG(95,110,230,110)
LIG(-30,50,100,50)
LIG(100,50,100,100)
LIG(100,100,225,100)
LIG(-35,40,105,40)
LIG(105,40,105,90)
LIG(160,175,140,175)
LIG(120,15,150,15)
LIG(150,-35,120,-35)
LIG(290,65,270,65)
LIG(290,75,270,75)
LIG(290,85,270,85)
LIG(-345,-5,-330,-5)
LIG(-155,60,-155,65)
LIG(-155,65,-180,65)
LIG(-155,10,-180,10)
FFIG C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\Microprocessor.sch
