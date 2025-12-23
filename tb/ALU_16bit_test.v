`timescale 1ns / 1ps 
module ALU_16bit_test; 
//Inputs 
 reg[15:0] A,B; 
 reg[3:0] ALU_Sel; 
 
//Outputs 
 wire[15:0] ALU_Out; 
 wire CarryOut; 
 integer i; 
  
// Verilog code for ALU   
ALU_16bit test_unit( 
            A,B,  // ALU 8-bit Inputs                  
            ALU_Sel,// ALU Selection 
            ALU_Out, // ALU 8-bit Output 
            CarryOut // Carry Out Flag 
     ); 
initial begin 
  // hold reset state for 100 ns. 
  A = 16'h0A; 
  B = 4'h02; 
  ALU_Sel = 4'h0; 
       
  for (i=0;i<=11;i=i+1) 
      begin 
       ALU_Sel = ALU_Sel + 16'h01; 
       #10; 
      end 
       
      A = 16'hF6; 
      B = 16'h0A; 
       
    end 
endmodule
