// DSCH 3.5
// 5/18/2022 10:33:17 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\InRegister.sch

module InRegister( DataIn3,EnableIn,DataIn0,DataIn1,DataIn2,B0,B1,B2,
 B3);
 input DataIn3,EnableIn,DataIn0,DataIn1,DataIn2;
 output B0,B1,B2,B3;
 wire ;
 bufif1 #(1) bufif1_1(B0,DataIn0,EnableIn);
 bufif1 #(1) bufif1_2(B1,DataIn1,EnableIn);
 bufif1 #(1) bufif1_3(B2,DataIn2,EnableIn);
 bufif1 #(1) bufif1_4(B3,DataIn3,EnableIn);
endmodule

// Simulation parameters in Verilog Format
always
#200 DataIn3=~DataIn3;
#400 EnableIn=~EnableIn;
#800 DataIn0=~DataIn0;
#1600 DataIn1=~DataIn1;
#3200 DataIn2=~DataIn2;

// Simulation parameters
// DataIn3 CLK 1 1
// EnableIn CLK 2 2
// DataIn0 CLK 4 4
// DataIn1 CLK 8 8
// DataIn2 CLK 16 16
