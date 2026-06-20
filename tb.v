`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.06.2026 19:33:14
// Design Name: 
// Module Name: tb
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


module tb();
 reg [7:0] A;
 reg [2:0] shift_amt;
 reg [2:0] S;
 wire [7:0] Y;
 
 shift_reg s0(A, shift_amt, S, Y);
 
 initial begin
 
 A = 8'b00001111;
 shift_amt = 3'b011;
 S =3'b000;
 #5;
  S =3'b001;
 #5;
  S =3'b010;
 #5;
  S =3'b011;
 #5;
  S =3'b100;
 #5;
  S =3'b101;
 #5;
  S =3'b110;
 #5;
 $finish;
 end
 
 
endmodule
