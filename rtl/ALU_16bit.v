`timescale 1ns / 1ps 
module ALU_16bit( 
           input [15:0] A,B,  // ALU 16-bit Inputs                  
           input [3:0] ALU_Sel,// ALU Selection 
           output [15:0] ALU_Out, // ALU 16-bit Outputv 
           output CarryOut // Carry Out Flag 
    ); 
reg [15:0] ALU_Result; 
wire [16:0] tmp; 
assign ALU_Out = ALU_Result; // ALU out 
assign tmp = {1'b0,A} + {1'b0,B}; 
assign CarryOut = tmp[16]; // Carryout flag 
  
always @(*) 
    begin 
        case(ALU_Sel) 
          4'b0000: // Addition 
             ALU_Result = A + B ;  
          4'b0001: // Subtraction 
             ALU_Result = A - B ; 
          4'b0010: // Multiplication 
             ALU_Result = A * B; 
          4'b0011: // Division 
             ALU_Result = A/B;  
          4'b0100: // Logical shift left 
             ALU_Result = A<<1; 
          4'b0101: // Logical shift right 
             ALU_Result = A>>1; 
          4'b0110: //  Logical and  
             ALU_Result = A & B; 
          4'b0111: //  Logical or 
             ALU_Result = A | B; 
          4'b1000: //  Logical xor  
             ALU_Result = A ^ B; 
          4'b1001: //  Logical nor 
             ALU_Result = ~(A | B); 
          4'b1010: // Logical nand  
             ALU_Result = ~(A & B); 
          4'b1011: // Logical xnor 
             ALU_Result = ~(A ^ B); 
          default: ALU_Result = A + B ;  
        endcase 
    end 
endmodule 
