// DSCH 3.5
// 5/19/2022 5:10:41 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\and4.sch

module and4( in1,in2,in3,in4,out1);
 input in1,in2,in3,in4;
 output out1;
 wire w6,w7,;
 and #(3) and2_1(w6,in2,in1);
 and #(3) and2_2(w7,in4,in3);
 and #(3) and2_3(out1,w7,w6);
endmodule

// Simulation parameters in Verilog Format
always
#200 in1=~in1;
#400 in2=~in2;
#800 in3=~in3;
#1600 in4=~in4;

// Simulation parameters
// in1 CLK 1 1
// in2 CLK 2 2
// in3 CLK 4 4
// in4 CLK 8 8
