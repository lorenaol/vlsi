// DSCH 3.5
// 5/19/2022 6:58:19 PM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\Counter16.sch

module Counter16( ClearCounter,MainClock,EnableCount,PC[3],PC[2],PC[1],PC[0]);
 input ClearCounter,MainClock,EnableCount;
 output PC[3],PC[2],PC[1],PC[0];
 wire w2,w3,w4,w6,w8,w10,;
 dreg #(4) dreg_1(PC[0],w2,w2,w3,w4);
 dreg #(4) dreg_2(PC[1],w6,w6,w3,PC[0]);
 dreg #(4) dreg_3(PC[2],w8,w8,w3,PC[1]);
 dreg #(4) dreg_4(PC[3],w10,w10,w3,PC[2]);
 not #(3) inv_5(w3,ClearCounter);
 and #(3) and2_6(w4,EnableCount,MainClock);
endmodule

// Simulation parameters in Verilog Format
always
#200 ClearCounter=~ClearCounter;
#2000 MainClock=~MainClock;
#400 EnableCount=~EnableCount;

// Simulation parameters
// ClearCounter CLK 1 1
// MainClock CLK 10 10
// EnableCount CLK 2 2
