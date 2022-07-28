// DSCH 3.5
// 5/20/2022 9:41:09 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\MemoryCell.sch

module MemoryCell( Write,Data,Read,Q);
 input Write,Data,Read;
 output Q;
 wire w3,w5,w6,;
 nmos #(1) nmos_1(Data,w3,Write); // 0.3u 0.07u
 not #(1) inv_2(w5,w3);
 not #(2) inv_3(w6,w5);
 pmos #(2) pmos_4(w6,w3,Write); // 0.5u 0.07u
 nmos #(1) nmos_5(Q,w6,Read); // 0.3u 0.07u
endmodule

// Simulation parameters in Verilog Format
always
#200 Write=~Write;
#400 Data=~Data;
#800 Read=~Read;

// Simulation parameters
// Write CLK 1 1
// Data CLK 2 2
// Read CLK 4 4
