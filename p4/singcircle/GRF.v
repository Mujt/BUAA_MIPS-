`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:33:52 07/11/2019 
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
    input [4:0] RG1,
    input [4:0] RG2,
    input [4:0] WG,
	 input [31:0] WD,
	 input  WE,
	 input [31:0] PC,
    output [31:0] RD1,
    output [31:0] RD2
    );
	 integer i;
	 reg [31:0] regs[31:0];
	 assign RD1 = regs[RG1];
	 assign RD2 = regs[RG2];
	 always @(posedge clk) begin
		if (reset) begin
			for (i = 0;i < 32;i=i+1) begin
				regs[i]<=0;
			end
		end
		else if (WE) begin
			if (WG != 5'b0) begin
				regs[WG] <= WD;
				$display("@%h: $%d <= %h",{16'b0,PC[15:0]},WG,WD);
			end
		end
	 end
endmodule
