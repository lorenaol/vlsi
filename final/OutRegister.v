// DSCH 3.5
// 5/19/2022 11:35:13 AM
// C:\Users\andreea.olescu\Desktop\vlsi\proiect-bun\final\OutRegister.sch

module OutRegister( IB3,LoadOut,MainClock,MainReset,IB0,IB1,IB2,Out3,
 Out0,Out1,Out2);
 input IB3,LoadOut,MainClock,MainReset,IB0,IB1,IB2;
 output Out3,Out0,Out1,Out2;
 wire w4,w5,w7,w10,w13,w15,;
 dreg #(4) dreg_1(Out0,w7,IB0,w4,w5);
 dreg #(4) dreg_2(Out1,w10,IB1,w4,w5);
 dreg #(4) dreg_3(Out2,w13,IB2,w4,w5);
 dreg #(4) dreg_4(Out3,w15,IB3,w4,w5);
 nand #(4) nand2_5(w5,MainClock,LoadOut);
 not #(3) inv_6(w4,MainReset);
endmodule

// Simulation parameters in Verilog Format
always
#200 IB3=~IB3;
#400 LoadOut=~LoadOut;
#2000 MainClock=~MainClock;
#800 MainReset=~MainReset;
#1600 IB0=~IB0;
#3200 IB1=~IB1;
#6400 IB2=~IB2;

// Simulation parameters
// IB3 CLK 1 1
// LoadOut CLK 2 2
// MainClock CLK 10 10
// MainReset CLK 4 4
// IB0 CLK 8 8
// IB1 CLK 16 16
// IB2 CLK 32 32
