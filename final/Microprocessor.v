// DSCH 3.5
// 5/20/2022 10:20:01 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\Microprocessor.sch

module Microprocessor( DataIn[0],DataIn[1],DataIn[2],DataIn[3],MainClock,MainClear,digit2[1],digit2[2],
 digit2[3],digit2[4],digit1[1],digit1[2],digit1[3],digit1[4]);
 input DataIn[0],DataIn[1],DataIn[2],DataIn[3],MainClock,MainClear;
 output digit2[1],digit2[2],digit2[3],digit2[4],digit1[1],digit1[2],digit1[3],digit1[4];
 wire w2,w7,w10,w11,w12,w13,w14,w15;
 wire w16,w17,w18,w19,w20,w29,w30,w31;
 wire w32,w33,w34,w35,w36,w37,w38,w39;
 wire w40,w41,w42,w43,w44,w45,w46,w47;
 wire w48,w49,w50,w51,w52,w53,w54,w55;
 wire w56,w57,w58,w59,w60,w61,w62,w63;
 wire w64,w65,w66,w67,w68,w69,w70,w71;
 wire w72,w73,w74,w75,w76,w77,w78,w79;
 wire w80,w81,w82,w83,w84,w85,w86,w87;
 wire w88,w89,w90,w91,w92,w93,w94,w95;
 wire w96,w97,w98,w99,w100,w101,w102,w103;
 wire w104,w105,w106,w107,w108,w109,w110,w111;
 wire w112,w113,w114,w115,w116,w117,w118,w119;
 wire w120,w121,w122,w123,w124,w125,w126,w127;
 wire w128,w129,w130,w131,w132,w133,w134,w135;
 wire w136,w137,w138,w139,w140,w141,w142,w143;
 wire w144,w145,w146,w147,w148,w149,w150,w151;
 wire w152,w153,w154,w155,w156,w157,w158,w159;
 wire w160,w161,w162,w163,w164,w165;
//Warning: mem8x8 (Mem8x8) ignored 
 dreg #(2) dreg_1_1(w11,w66,digit1[4],w64,w65);
 not #(3) inv_2_2(w64,MainClear);
 and #(4) and2_3_3(w65,MainClock,w7);
 dreg #(2) dreg_4_4(w14,w67,digit1[1],w64,w65);
 dreg #(2) dreg_5_5(w13,w68,digit1[2],w64,w65);
 dreg #(2) dreg_6_6(w12,w69,digit1[3],w64,w65);
 notif1 #(3) notif1_7_7(digit1[4],w66,w10);
 notif1 #(3) notif1_8_8(digit1[3],w69,w10);
 notif1 #(3) notif1_9_9(digit1[2],w68,w10);
 notif1 #(1) notif1_10_10(w70,w67,w10);
 not #(3) inv_1_11(w71,MainClear);
 dreg #(2) dreg_2_12(w19,w73,digit1[4],w71,w72);
 dreg #(2) dreg_3_13(w16,w74,digit1[1],w71,w72);
 dreg #(2) dreg_4_14(w17,w75,digit1[2],w71,w72);
 dreg #(2) dreg_5_15(w18,w76,digit1[3],w71,w72);
 and #(4) and2_6_16(w72,MainClock,w15);
 dreg #(2) dreg_1_17(digit2[4],w79,digit1[4],w77,w78);
 dreg #(2) dreg_2_18(digit2[3],w80,digit1[3],w77,w78);
 dreg #(2) dreg_3_19(digit2[2],w81,digit1[2],w77,w78);
 dreg #(2) dreg_4_20(digit2[1],w82,digit1[1],w77,w78);
 nand #(4) nand2_5_21(w78,MainClock,w20);
 not #(3) inv_6_22(w77,vdd);
 bufif1 #(3) bufif1_1_23(digit1[4],DataIn[0],w29);
 bufif1 #(3) bufif1_2_24(digit1[3],DataIn[1],w29);
 bufif1 #(3) bufif1_3_25(digit1[2],DataIn[2],w29);
 bufif1 #(3) bufif1_4_26(digit1[1],DataIn[3],w29);
 not #(1) inv_1_27(w83,w14);
 not #(1) inv_2_28(w84,w13);
 not #(1) inv_3_29(w85,w12);
 not #(1) inv_4_30(w86,w11);
 mux #(2) mux_5_31(w87,w14,w83,w30);
 mux #(2) mux_6_32(w88,w13,w84,w30);
 mux #(2) mux_7_33(w89,w12,w85,w30);
 mux #(2) mux_8_34(w90,w11,w86,w30);
 mux #(2) mux_9_35(w91,vss,vdd,w30);
 bufif1 #(3) bufif1_10_36(digit1[4],w92,w2);
 bufif1 #(3) bufif1_11_37(digit1[3],w93,w2);
 bufif1 #(3) bufif1_12_38(digit1[2],w94,w2);
 bufif1 #(3) bufif1_13_39(digit1[1],w95,w2);
 xor #(1) xor2_1_14_40(w96,w17,w88);
 xor #(1) xor2_2_15_41(w94,w96,w97);
 assign w98=(w17&w88)|(w97&(w17|w88));
 xor #(1) xor2_1_16_42(w99,w16,w87);
 xor #(1) xor2_2_17_43(w95,w99,w98);
 assign w31=(w16&w87)|(w98&(w16|w87));
 xor #(1) xor2_1_18_44(w100,w18,w89);
 xor #(1) xor2_2_19_45(w93,w100,w101);
 assign w97=(w18&w89)|(w101&(w18|w89));
 xor #(1) xor2_1_20_46(w102,w19,w90);
 xor #(1) xor2_2_21_47(w92,w102,w91);
 assign w101=(w19&w90)|(w91&(w19|w90));
 dreg #(2) dreg_1_48(w105,w106,w39,w103,w104);
 dreg #(2) dreg_2_49(w107,w108,w40,w103,w104);
 dreg #(2) dreg_3_50(w109,w110,w41,w103,w104);
 dreg #(2) dreg_4_51(w111,w112,w32,w103,w104);
 dreg #(2) dreg_5_52(w42,w113,w34,w103,w104);
 notif1 #(3) notif1_6_53(digit1[4],w106,w33);
 notif1 #(3) notif1_7_54(digit1[3],w108,w33);
 notif1 #(3) notif1_8_55(digit1[2],w110,w33);
 notif1 #(3) notif1_9_56(digit1[1],w112,w33);
 dreg #(2) dreg_10_57(w43,w114,w36,w103,w104);
 dreg #(2) dreg_11_58(w44,w115,w37,w103,w104);
 dreg #(2) dreg_12_59(w45,w116,w38,w103,w104);
 not #(5) inv_13_60(w103,MainClear);
 and #(6) and2_14_61(w104,MainClock,w35);
 dreg #(2) dreg_1_62(w48,w117,w117,w118,w119);
 dreg #(2) dreg_2_63(w47,w120,w120,w118,w48);
 dreg #(2) dreg_3_64(w46,w121,w121,w118,w47);
 dreg #(2) dreg_4_65(w59,w122,w122,w118,w46);
 not #(3) inv_5_66(w118,MainClear);
 and #(2) and2_6_67(w119,w58,MainClock);
 not #(6) inv_1_68(w123,w42);
 not #(3) inv_2_69(w124,w43);
 not #(5) inv_3_70(w125,w44);
 not #(5) inv_4_71(w126,w45);
 and #(4) and4_5_72(w127,w123,w126,w125,w124);
 and #(4) and4_6_73(w128,w123,w45,w125,w43);
 and #(4) and4_7_74(w129,w123,w126,w125,w43);
 and #(4) and4_8_75(w130,w123,w126,w44,w124);
 and #(4) and4_9_76(w131,w123,w126,w44,w43);
 and #(4) and4_10_77(w132,w123,w45,w125,w124);
 probe #(1) probe_11_78(w128); // 1 Load(0101)
 probe #(1) probe_12_79(w132); // 1 In(0100)
 and #(8) and2_13_80(w133,w128,w60);
 and #(8) and2_14_81(w134,w128,w61);
 and #(8) and2_15_82(w135,w132,w60);
 and #(8) and2_16_83(w136,w132,w61);
 and #(8) and2_17_84(w137,w131,w60);
 and #(8) and2_18_85(w138,w131,w61);
 and #(8) and2_19_86(w139,w130,w60);
 and #(8) and2_20_87(w140,w130,w61);
 probe #(1) probe_21_88(w131); // 1 Out(0011)
 probe #(1) probe_22_89(w130); // 1 Sub(0010)
 and #(8) and2_23_90(w141,w129,w60);
 and #(8) and2_24_91(w142,w127,w61);
 and #(8) and2_25_92(w143,w129,w61);
 and #(8) and2_26_93(w144,w127,w60);
 probe #(1) probe_27_94(w129); // 1 Add(0001)
 probe #(1) probe_28_95(w127); // 1 Nop(0000)
 nmos #(10) nmos_29_96(w20,vss,w142); //  
 nmos #(11) nmos_30_97(w2,vdd,w139); //  
 nmos #(11) nmos_31_98(w2,vss,w63); //  
 nmos #(10) nmos_32_99(w20,vss,w133); //  
 nmos #(11) nmos_33_100(w2,vss,w62); //  
 nmos #(10) nmos_34_101(w20,vss,w134); //  
 nmos #(10) nmos_35_102(w20,vss,w135); //  
 nmos #(10) nmos_36_103(w20,vss,w136); //  
 nmos #(10) nmos_37_104(w20,vss,w137); //  
 nmos #(10) nmos_38_105(w20,vdd,w138); //  
 nmos #(10) nmos_39_106(w20,vss,w140); //  
 nmos #(10) nmos_40_107(w20,vss,w141); //  
 nmos #(10) nmos_41_108(w20,vss,w143); //  
 nmos #(10) nmos_42_109(w20,vss,w144); //  
 nmos #(11) nmos_43_110(w2,vss,w144); //  
 nmos #(11) nmos_44_111(w2,vss,w143); //  
 nmos #(11) nmos_45_112(w2,vdd,w141); //  
 nmos #(11) nmos_46_113(w2,vss,w140); //  
 nmos #(11) nmos_47_114(w2,vss,w138); //  
 nmos #(11) nmos_48_115(w2,vss,w137); //  
 nmos #(11) nmos_49_116(w2,vss,w136); //  
 nmos #(11) nmos_50_117(w2,vss,w135); //  
 nmos #(11) nmos_51_118(w2,vss,w134); //  
 nmos #(11) nmos_52_119(w2,vss,w133); //  
 nmos #(11) nmos_53_120(w2,vss,w142); //  
 nmos #(10) nmos_54_121(w58,vss,w142); //  
 nmos #(10) nmos_55_122(w58,vss,w133); //  
 nmos #(10) nmos_56_123(w58,vss,w134); //  
 nmos #(10) nmos_57_124(w58,vss,w135); //  
 nmos #(10) nmos_58_125(w58,vss,w136); //  
 nmos #(10) nmos_59_126(w58,vss,w137); //  
 nmos #(10) nmos_60_127(w58,vss,w138); //  
 nmos #(10) nmos_61_128(w58,vss,w140); //  
 nmos #(10) nmos_62_129(w58,vss,w141); //  
 nmos #(10) nmos_63_130(w58,vss,w143); //  
 nmos #(10) nmos_64_131(w58,vss,w144); //  
 nmos #(10) nmos_65_132(w58,vdd,w62); //  
 nmos #(10) nmos_66_133(w58,vss,w63); //  
 nmos #(10) nmos_67_134(w58,vss,w139); //  
 nmos #(10) nmos_68_135(w20,vss,w62); //  
 nmos #(10) nmos_69_136(w20,vss,w63); //  
 nmos #(10) nmos_70_137(w20,vss,w139); //  
 nmos #(12) nmos_71_138(w30,vdd,w139); //  
 nmos #(12) nmos_72_139(w30,vss,w63); //  
 nmos #(12) nmos_73_140(w30,vss,w62); //  
 nmos #(10) nmos_74_141(w35,vss,w139); //  
 nmos #(12) nmos_75_142(w30,vss,w144); //  
 nmos #(12) nmos_76_143(w30,vss,w143); //  
 nmos #(12) nmos_77_144(w30,vss,w141); //  
 nmos #(12) nmos_78_145(w30,vdd,w140); //  
 nmos #(12) nmos_79_146(w30,vss,w138); //  
 nmos #(12) nmos_80_147(w30,vss,w137); //  
 nmos #(12) nmos_81_148(w30,vss,w136); //  
 nmos #(12) nmos_82_149(w30,vss,w135); //  
 nmos #(12) nmos_83_150(w30,vss,w134); //  
 nmos #(12) nmos_84_151(w30,vss,w133); //  
 nmos #(12) nmos_85_152(w30,vss,w142); //  
 nmos #(11) nmos_86_153(w29,vss,w139); //  
 nmos #(11) nmos_87_154(w29,vss,w63); //  
 nmos #(11) nmos_88_155(w29,vss,w62); //  
 nmos #(11) nmos_89_156(w29,vss,w144); //  
 nmos #(11) nmos_90_157(w29,vss,w143); //  
 nmos #(11) nmos_91_158(w29,vss,w141); //  
 nmos #(11) nmos_92_159(w29,vss,w140); //  
 nmos #(11) nmos_93_160(w29,vss,w138); //  
 nmos #(11) nmos_94_161(w29,vss,w137); //  
 nmos #(11) nmos_95_162(w29,vdd,w136); //  
 nmos #(11) nmos_96_163(w29,vss,w135); //  
 nmos #(11) nmos_97_164(w29,vss,w134); //  
 nmos #(11) nmos_98_165(w29,vss,w133); //  
 nmos #(11) nmos_99_166(w29,vss,w142); //  
 nmos #(10) nmos_100_167(w7,vss,w142); //  
 nmos #(10) nmos_101_168(w57,vdd,w142); //  
 nmos #(10) nmos_102_169(w57,vss,w133); //  
 nmos #(10) nmos_103_170(w15,vss,w142); //  
 nmos #(10) nmos_104_171(w57,vss,w134); //  
 nmos #(10) nmos_105_172(w57,vss,w135); //  
 nmos #(10) nmos_106_173(w57,vss,w136); //  
 nmos #(10) nmos_107_174(w57,vss,w137); //  
 nmos #(10) nmos_108_175(w57,vss,w138); //  
 nmos #(10) nmos_109_176(w57,vss,w140); //  
 nmos #(10) nmos_110_177(w57,vss,w141); //  
 nmos #(10) nmos_111_178(w57,vss,w143); //  
 nmos #(10) nmos_112_179(w57,vss,w144); //  
 nmos #(10) nmos_113_180(w57,vss,w62); //  
 nmos #(10) nmos_114_181(w57,vdd,w63); //  
 nmos #(10) nmos_115_182(w57,vss,w139); //  
 nmos #(10) nmos_116_183(w15,vss,w139); //  
 nmos #(10) nmos_117_184(w15,vss,w63); //  
 nmos #(10) nmos_118_185(w15,vss,w62); //  
 nmos #(10) nmos_119_186(w15,vss,w133); //  
 nmos #(10) nmos_120_187(w15,vss,w144); //  
 nmos #(10) nmos_121_188(w15,vdd,w143); //  
 nmos #(10) nmos_122_189(w15,vss,w141); //  
 nmos #(10) nmos_123_190(w15,vdd,w140); //  
 nmos #(10) nmos_124_191(w15,vss,w138); //  
 nmos #(10) nmos_125_192(w15,vss,w137); //  
 nmos #(10) nmos_126_193(w15,vss,w136); //  
 nmos #(10) nmos_127_194(w15,vss,w135); //  
 nmos #(10) nmos_128_195(w15,vss,w134); //  
 nmos #(11) nmos_129_196(w10,vss,w142); //  
 nmos #(11) nmos_130_197(w10,vss,w133); //  
 nmos #(11) nmos_131_198(w10,vss,w134); //  
 nmos #(11) nmos_132_199(w10,vss,w135); //  
 nmos #(11) nmos_133_200(w10,vss,w136); //  
 nmos #(11) nmos_134_201(w10,vss,w137); //  
 nmos #(11) nmos_135_202(w10,vdd,w138); //  
 nmos #(11) nmos_136_203(w10,vss,w140); //  
 nmos #(11) nmos_137_204(w10,vss,w141); //  
 nmos #(11) nmos_138_205(w10,vss,w143); //  
 nmos #(11) nmos_139_206(w10,vss,w144); //  
 nmos #(11) nmos_140_207(w10,vss,w62); //  
 nmos #(11) nmos_141_208(w10,vss,w63); //  
 nmos #(11) nmos_142_209(w10,vss,w139); //  
 nmos #(11) nmos_143_210(w33,vss,w142); //  
 nmos #(11) nmos_144_211(w33,vss,w133); //  
 nmos #(11) nmos_145_212(w33,vdd,w134); //  
 nmos #(11) nmos_146_213(w33,vss,w135); //  
 nmos #(11) nmos_147_214(w33,vss,w136); //  
 nmos #(11) nmos_148_215(w33,vss,w137); //  
 nmos #(11) nmos_149_216(w33,vss,w138); //  
 nmos #(11) nmos_150_217(w33,vdd,w140); //  
 nmos #(11) nmos_151_218(w33,vss,w141); //  
 nmos #(11) nmos_152_219(w33,vdd,w143); //  
 nmos #(11) nmos_153_220(w33,vss,w144); //  
 nmos #(11) nmos_154_221(w33,vdd,w62); //  
 nmos #(11) nmos_155_222(w33,vss,w63); //  
 nmos #(11) nmos_156_223(w33,vss,w139); //  
 nmos #(10) nmos_157_224(w7,vdd,w139); //  
 nmos #(10) nmos_158_225(w7,vss,w63); //  
 nmos #(10) nmos_159_226(w7,vss,w62); //  
 nmos #(10) nmos_160_227(w35,vss,w142); //  
 nmos #(10) nmos_161_228(w35,vss,w133); //  
 nmos #(10) nmos_162_229(w35,vss,w134); //  
 nmos #(10) nmos_163_230(w35,vss,w135); //  
 nmos #(10) nmos_164_231(w35,vss,w136); //  
 nmos #(10) nmos_165_232(w35,vss,w137); //  
 nmos #(10) nmos_166_233(w35,vss,w138); //  
 nmos #(10) nmos_167_234(w35,vss,w140); //  
 nmos #(10) nmos_168_235(w35,vss,w141); //  
 nmos #(10) nmos_169_236(w35,vss,w143); //  
 nmos #(10) nmos_170_237(w35,vss,w144); //  
 nmos #(10) nmos_171_238(w7,vss,w144); //  
 nmos #(10) nmos_172_239(w7,vss,w143); //  
 nmos #(10) nmos_173_240(w7,vdd,w141); //  
 nmos #(10) nmos_174_241(w7,vss,w140); //  
 nmos #(10) nmos_175_242(w7,vss,w138); //  
 nmos #(10) nmos_176_243(w7,vss,w137); //  
 nmos #(10) nmos_177_244(w7,vdd,w136); //  
 nmos #(10) nmos_178_245(w7,vss,w135); //  
 nmos #(10) nmos_179_246(w7,vdd,w134); //  
 nmos #(10) nmos_180_247(w35,vss,w62); //  
 nmos #(10) nmos_181_248(w7,vss,w133); //  
 nmos #(10) nmos_182_249(w35,vdd,w63); //  
 and #(1) and2_1_183_250(w145,w126,w123);
 and #(1) and2_2_184_251(w146,w124,w125);
 and #(3) and2_3_185_252(w127,w146,w145);
 and #(1) and2_1_186_253(w147,w45,w123);
 and #(1) and2_2_187_254(w148,w43,w125);
 and #(3) and2_3_188_255(w128,w148,w147);
 and #(1) and2_1_189_256(w149,w126,w123);
 and #(1) and2_2_190_257(w150,w43,w125);
 and #(3) and2_3_191_258(w129,w150,w149);
 and #(1) and2_1_192_259(w151,w126,w123);
 and #(1) and2_2_193_260(w152,w124,w44);
 and #(3) and2_3_194_261(w130,w152,w151);
 and #(1) and2_1_195_262(w153,w126,w123);
 and #(1) and2_2_196_263(w154,w43,w44);
 and #(3) and2_3_197_264(w131,w154,w153);
 and #(1) and2_1_198_265(w155,w45,w123);
 and #(1) and2_2_199_266(w156,w124,w125);
 and #(3) and2_3_200_267(w132,w156,w155);
 not #(3) inv_1_268(w157,MainClear);
 dreg #(2) dreg_2_269(w159,w160,w158,w157,MainClock);
 dreg #(2) dreg_3_270(w161,w162,w159,w157,MainClock);
 dreg #(2) dreg_4_271(w163,w164,w161,w157,MainClock);
 dreg #(2) dreg_5_272(w165,w158,w163,w157,MainClock);
 xor #(6) xor2_6_273(w63,w165,w160);
 xor #(6) xor2_7_274(w62,w159,w161);
 xor #(4) xor2_8_275(w61,w161,w163);
 xor #(4) xor2_9_276(w60,w163,w165);
endmodule

// Simulation parameters in Verilog Format
always
#200 MainClock=~MainClock;
#400 MainClear=~MainClear;

// Simulation parameters
// DataIn[0] CLK 1 1
// DataIn[1] CLK 2 2
// DataIn[2] CLK 4 4
// DataIn[3] CLK 8 8
// MainClock CLK 16 16
// MainClear CLK 32 32
