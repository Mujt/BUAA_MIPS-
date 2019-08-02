`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:08:20 07/14/2019 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input clk,
    input reset,
    input WE,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD,
    output [31:0] RD1,
    output [31:0] RD2,
	 input [31:0] PCA
    );
	 
	 reg [31:0] regs[31:0];
	 assign RD1 = regs[A1];
	 assign RD2 = regs[A2];
	 integer i;
	 always @(posedge clk) begin
		if (reset) begin
			for (i=0;i < 32;i=i+1)begin
				regs[i] <= 32'b0;
			end
		end
		else begin
			if (WE) begin
				if (A3 != 5'b0)begin
				regs[A3] <= WD;
				$display("%d@%h: $%d <= %h",$time,PCA,A3,WD);
				end
			end
		end
	 end
	 
endmodule
