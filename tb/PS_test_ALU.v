//`timescale 1ns / 1ps 
//For Post Synthesis Timing Simulation with back-annotation 
`include "osu05_stdcells.v" 
`include "ALU_nbit_RTL.v" 
 
module PS_test_ALU; 
//Inputs 
 reg[15:0] A,B; 
 reg[3:0] ALU_Sel; 
 
//Outputs 
 wire[15:0] ALU_Out; 
 wire CarryOut; 
 // Verilog code for ALU 
 integer i; 
//ALU_16bit test_unit( 
//            A,B,  // ALU 16-bit Inputs                  
  //          ALU_Sel,// ALU Selection 
    //        ALU_Out, // ALU 16-bit Output 
      //      CarryOut // Carry Out Flag 
     //); 
  initial $sdf_annotate("ALU_16bit_RTL.sdf", PS_test_ALU, ,"sdf_ALU_16bit.log"); 
 
    initial begin 
    // hold reset state for 100 ns. 
      A = 16'h0A; 
      B = 4'h02; 
      ALU_Sel = 4'h0;      
      for (i=0;i<=11;i=i+1) 
      begin 
       ALU_Sel = ALU_Sel + 4'h01; 
       #10; 
      end 
       
      A = 16'hF6; 
      B = 16'hFF; 
       
    end 
ALU_16bit v_1(A,B,ALU_Sel,ALU_Out,CarryOut); 
initial $monitor($time, "   A=%d, B=%d ALU_Sel=%d ALU_out=%d CarryOut = %d", A, B, 
ALU_Sel, ALU_Out, CarryOut); 
endmodule
