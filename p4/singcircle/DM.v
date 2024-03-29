`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:26 07/11/2019 
// Design Name: 
// Module Name:    DM 
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
module DM(
    input clk,
    input reset,
    input [31:0] ADDR,
    input [31:0] WD,
	 input DMop,
    output [31:0] RD,
	 input [31:0] PC
    );
	 
	 reg [31:0] regDM[1023:0];
	 integer i;
	 assign RD = regDM[ADDR[11:2]];
	 always @(posedge clk) begin
			if (reset) begin
				for (i=0;i<1024;i=i+1) begin
					regDM[i] = 0;
				end
			end
			else if (DMop) begin
				regDM[ADDR[11:2]] = WD;
				$display("@%h: *%h <= %h",PC,ADDR,WD);
			end
	 end
endmodule
