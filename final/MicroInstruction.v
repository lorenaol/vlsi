// DSCH 3.5
// 5/20/2022 9:28:49 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\MicroInstruction.sch

module MicroInstruction( Instr0,Instr1,Instr2,Instr3,Phase3,Phase2,Phase1,Phase0,
 ProgCount,LoadOut,AddSub,EnableIn,EnableAlu,ReadMem,LoadB,LoadInstr,
 EnableA,EnableInstr,LoadA);
 input Instr0,Instr1,Instr2,Instr3,Phase3,Phase2,Phase1,Phase0;
 output ProgCount,LoadOut,AddSub,EnableIn,EnableAlu,ReadMem,LoadB,LoadInstr;
 output EnableA,EnableInstr,LoadA;
 wire w6,w7,w8,w9,w10,w11,w12,w13;
 wire w14,w15,w17,w19,w20,w21,w22,w23;
 wire w24,w25,w26,w27,w28,w29,w43,w44;
 wire w45,w46,w47,w48,w49,w50,w51,w52;
 wire w53,w54;
 not #(3) inv_1(w6,Instr3);
 not #(2) inv_2(w7,Instr0);
 not #(3) inv_3(w8,Instr1);
 not #(3) inv_4(w9,Instr2);
 and #(4) and4_5(w10,w6,w9,w8,w7);
 and #(4) and4_6(w11,w6,Instr2,w8,Instr0);
 and #(4) and4_7(w12,w6,w9,w8,Instr0);
 and #(4) and4_8(w13,w6,w9,Instr1,w7);
 and #(4) and4_9(w14,w6,w9,Instr1,Instr0);
 and #(4) and4_10(w15,w6,Instr2,w8,w7);
 probe #(1) probe_11(w11); // 1 Load(0101)
 probe #(1) probe_12(w15); // 1 In(0100)
 and #(7) and2_13(w17,w11,Phase3);
 and #(7) and2_14(w19,w11,Phase2);
 and #(7) and2_15(w20,w15,Phase3);
 and #(7) and2_16(w21,w15,Phase2);
 and #(7) and2_17(w22,w14,Phase3);
 and #(7) and2_18(w23,w14,Phase2);
 and #(7) and2_19(w24,w13,Phase3);
 and #(7) and2_20(w25,w13,Phase2);
 probe #(1) probe_21(w14); // 1 Out(0011)
 probe #(1) probe_22(w13); // 1 Sub(0010)
 and #(7) and2_23(w26,w12,Phase3);
 and #(7) and2_24(w27,w10,Phase2);
 and #(7) and2_25(w28,w12,Phase2);
 and #(7) and2_26(w29,w10,Phase3);
 probe #(1) probe_27(w12); // 1 Add(0001)
 probe #(1) probe_28(w10); // 1 Nop(0000)
 nmos #(7) nmos_29(LoadOut,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_30(EnableAlu,vdd,w24); // 0.3u 0.07u
 nmos #(7) nmos_31(EnableAlu,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_32(LoadOut,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_33(EnableAlu,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_34(LoadOut,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_35(LoadOut,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_36(LoadOut,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_37(LoadOut,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_38(LoadOut,vdd,w23); // 0.3u 0.07u
 nmos #(7) nmos_39(LoadOut,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_40(LoadOut,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_41(LoadOut,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_42(LoadOut,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_43(EnableAlu,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_44(EnableAlu,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_45(EnableAlu,vdd,w26); // 0.3u 0.07u
 nmos #(7) nmos_46(EnableAlu,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_47(EnableAlu,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_48(EnableAlu,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_49(EnableAlu,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_50(EnableAlu,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_51(EnableAlu,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_52(EnableAlu,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_53(EnableAlu,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_54(ProgCount,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_55(ProgCount,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_56(ProgCount,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_57(ProgCount,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_58(ProgCount,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_59(ProgCount,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_60(ProgCount,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_61(ProgCount,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_62(ProgCount,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_63(ProgCount,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_64(ProgCount,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_65(ProgCount,vdd,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_66(ProgCount,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_67(ProgCount,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_68(LoadOut,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_69(LoadOut,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_70(LoadOut,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_71(AddSub,vdd,w24); // 0.3u 0.07u
 nmos #(7) nmos_72(AddSub,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_73(AddSub,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_74(LoadInstr,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_75(AddSub,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_76(AddSub,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_77(AddSub,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_78(AddSub,vdd,w25); // 0.3u 0.07u
 nmos #(7) nmos_79(AddSub,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_80(AddSub,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_81(AddSub,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_82(AddSub,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_83(AddSub,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_84(AddSub,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_85(AddSub,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_86(EnableIn,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_87(EnableIn,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_88(EnableIn,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_89(EnableIn,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_90(EnableIn,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_91(EnableIn,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_92(EnableIn,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_93(EnableIn,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_94(EnableIn,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_95(EnableIn,vdd,w21); // 0.3u 0.07u
 nmos #(7) nmos_96(EnableIn,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_97(EnableIn,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_98(EnableIn,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_99(EnableIn,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_100(LoadA,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_101(ReadMem,vdd,w27); // 0.3u 0.07u
 nmos #(7) nmos_102(ReadMem,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_103(LoadB,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_104(ReadMem,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_105(ReadMem,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_106(ReadMem,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_107(ReadMem,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_108(ReadMem,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_109(ReadMem,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_110(ReadMem,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_111(ReadMem,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_112(ReadMem,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_113(ReadMem,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_114(ReadMem,vdd,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_115(ReadMem,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_116(LoadB,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_117(LoadB,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_118(LoadB,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_119(LoadB,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_120(LoadB,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_121(LoadB,vdd,w28); // 0.3u 0.07u
 nmos #(7) nmos_122(LoadB,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_123(LoadB,vdd,w25); // 0.3u 0.07u
 nmos #(7) nmos_124(LoadB,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_125(LoadB,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_126(LoadB,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_127(LoadB,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_128(LoadB,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_129(EnableA,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_130(EnableA,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_131(EnableA,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_132(EnableA,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_133(EnableA,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_134(EnableA,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_135(EnableA,vdd,w23); // 0.3u 0.07u
 nmos #(7) nmos_136(EnableA,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_137(EnableA,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_138(EnableA,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_139(EnableA,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_140(EnableA,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_141(EnableA,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_142(EnableA,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_143(EnableInstr,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_144(EnableInstr,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_145(EnableInstr,vdd,w19); // 0.3u 0.07u
 nmos #(7) nmos_146(EnableInstr,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_147(EnableInstr,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_148(EnableInstr,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_149(EnableInstr,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_150(EnableInstr,vdd,w25); // 0.3u 0.07u
 nmos #(7) nmos_151(EnableInstr,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_152(EnableInstr,vdd,w28); // 0.3u 0.07u
 nmos #(7) nmos_153(EnableInstr,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_154(EnableInstr,vdd,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_155(EnableInstr,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_156(EnableInstr,vss,w24); // 0.3u 0.07u
 nmos #(7) nmos_157(LoadA,vdd,w24); // 0.3u 0.07u
 nmos #(7) nmos_158(LoadA,vss,Phase0); // 0.3u 0.07u
 nmos #(7) nmos_159(LoadA,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_160(LoadInstr,vss,w27); // 0.3u 0.07u
 nmos #(7) nmos_161(LoadInstr,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_162(LoadInstr,vss,w19); // 0.3u 0.07u
 nmos #(7) nmos_163(LoadInstr,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_164(LoadInstr,vss,w21); // 0.3u 0.07u
 nmos #(7) nmos_165(LoadInstr,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_166(LoadInstr,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_167(LoadInstr,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_168(LoadInstr,vss,w26); // 0.3u 0.07u
 nmos #(7) nmos_169(LoadInstr,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_170(LoadInstr,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_171(LoadA,vss,w29); // 0.3u 0.07u
 nmos #(7) nmos_172(LoadA,vss,w28); // 0.3u 0.07u
 nmos #(7) nmos_173(LoadA,vdd,w26); // 0.3u 0.07u
 nmos #(7) nmos_174(LoadA,vss,w25); // 0.3u 0.07u
 nmos #(7) nmos_175(LoadA,vss,w23); // 0.3u 0.07u
 nmos #(7) nmos_176(LoadA,vss,w22); // 0.3u 0.07u
 nmos #(7) nmos_177(LoadA,vdd,w21); // 0.3u 0.07u
 nmos #(7) nmos_178(LoadA,vss,w20); // 0.3u 0.07u
 nmos #(7) nmos_179(LoadA,vdd,w19); // 0.3u 0.07u
 nmos #(7) nmos_180(LoadInstr,vss,Phase1); // 0.3u 0.07u
 nmos #(7) nmos_181(LoadA,vss,w17); // 0.3u 0.07u
 nmos #(7) nmos_182(LoadInstr,vdd,Phase0); // 0.3u 0.07u
 and #(2) and2_1_183(w43,w9,w6);
 and #(2) and2_2_184(w44,w7,w8);
 and #(3) and2_3_185(w10,w44,w43);
 and #(2) and2_1_186(w45,Instr2,w6);
 and #(2) and2_2_187(w46,Instr0,w8);
 and #(3) and2_3_188(w11,w46,w45);
 and #(2) and2_1_189(w47,w9,w6);
 and #(2) and2_2_190(w48,Instr0,w8);
 and #(3) and2_3_191(w12,w48,w47);
 and #(2) and2_1_192(w49,w9,w6);
 and #(2) and2_2_193(w50,w7,Instr1);
 and #(3) and2_3_194(w13,w50,w49);
 and #(2) and2_1_195(w51,w9,w6);
 and #(2) and2_2_196(w52,Instr0,Instr1);
 and #(3) and2_3_197(w14,w52,w51);
 and #(2) and2_1_198(w53,Instr2,w6);
 and #(2) and2_2_199(w54,w7,w8);
 and #(3) and2_3_200(w15,w54,w53);
endmodule

// Simulation parameters in Verilog Format
always
#200 Instr0=~Instr0;
#400 Instr1=~Instr1;
#800 Instr2=~Instr2;
#1600 Instr3=~Instr3;
#3200 Phase3=~Phase3;
#6400 Phase2=~Phase2;
#12800 Phase1=~Phase1;
#25600 Phase0=~Phase0;

// Simulation parameters
// Instr0 CLK 1 1
// Instr1 CLK 2 2
// Instr2 CLK 4 4
// Instr3 CLK 8 8
// Phase3 CLK 16 16
// Phase2 CLK 32 32
// Phase1 CLK 64 64
// Phase0 CLK 128 128
