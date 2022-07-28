// DSCH 3.5
// 5/20/2022 10:18:32 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\FullAdder.sch

module FullAdder( A,B,C,Sum,Carry);
 input A,B,C;
 output Sum,Carry;
 wire w4,;
 xor #(3) xor2_1(w4,A,B);
 xor #(3) xor2_2(Sum,w4,C);
 assign Carry=(A&B)|(C&(A|B));
endmodule

// Simulation parameters in Verilog Format
always
#200 A=~A;
#400 B=~B;
#800 C=~C;

// Simulation parameters
// A CLK 1 1
// B CLK 2 2
// C CLK 4 4
