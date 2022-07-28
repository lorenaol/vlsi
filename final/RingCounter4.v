// DSCH 3.5
// 5/19/2022 12:50:15 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\RingCounter4.sch

module RingCounter4( Clear,Phase_Count,Phase3,Phase0,Phase1,Phase2);
 input Clear,Phase_Count;
 output Phase3,Phase0,Phase1,Phase2;
 wire w3,w4,w6,w7,w8,w9,w10,w11;
 wire w12,;
 not #(3) inv_1(w3,Clear);
 dreg #(4) dreg_2(w6,w7,w4,w3,Phase_Count);
 dreg #(4) dreg_3(w8,w9,w6,w3,Phase_Count);
 dreg #(4) dreg_4(w10,w11,w8,w3,Phase_Count);
 dreg #(4) dreg_5(w12,w4,w10,w3,Phase_Count);
 xor #(3) xor2_6(Phase0,w12,w7);
 xor #(3) xor2_7(Phase1,w6,w8);
 xor #(3) xor2_8(Phase2,w8,w10);
 xor #(3) xor2_9(Phase3,w10,w12);
endmodule

// Simulation parameters in Verilog Format
always
#200 Clear=~Clear;
#2000 Phase_Count=~Phase_Count;

// Simulation parameters
// Clear CLK 1 1
// Phase_Count CLK 10 10
