`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:33:33 07/18/2019 
// Design Name: 
// Module Name:    HazReg 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module HazReg(clr,clk,in,out);
	 parameter DATAWIDTH = 32;
	 input clr;
    input clk;
    input [DATAWIDTH:1]in;
    output reg[DATAWIDTH:1]out;
	 
	 always @(posedge clk)begin
		if (clr)begin
			out <= 0;
		end
		else begin
			out <= in;
		end
	 end
	 
endmodule
