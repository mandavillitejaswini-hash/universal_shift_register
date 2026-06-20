`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 19:25:09
// Design Name: 
// Module Name: shift_reg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module shift_reg(
    input [7:0] A,
    input [2:0] shift_amt,
    input [2:0] S,
    output reg [7:0] Y
    );
    always @(*)
    begin
        case(S)
        
        3'b000 : begin // logical left shift
                  Y= A << 1;
         end
        3'b001:  begin // logical right shift
                 Y = A >> 1;
         end
        3'b010 : begin // arithmetic right shift
                 Y = $signed(A) >>> 1;
         end
         3'b011 : begin // rotate left
                 Y= {A[6:0],A[7]};
                 end
         3'b100: begin // rotate right
                Y = {A[7],A[6:1]};
                end
         3'b101 :begin // BARREL RIGHT SHIFT
                 Y = A >> shift_amt;
          end
          3'b110 : begin // barrel left shift
                Y = A << shift_amt;
          end 
          default : Y=A; 
          endcase
    end
endmodule
