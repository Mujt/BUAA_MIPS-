`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:27:52 07/14/2019 
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
    input [31:0] A,
    input [31:0] WD,
    input DMop,
	 input newop, 
    output [31:0] DR,
	 input [31:0] PCA
    );
	 integer i;
	 reg [31:0] regDM[1023:0];
	 wire [31:0]tmp;
	 assign DR = regDM[A[11:2]];
	 assign tmp = {A[31:2],2'b0};
	 reg [31:0]WDshs;
	 always @(posedge clk) begin
			if (reset) begin
				for (i=0;i<1024;i=i+1) begin
					regDM[i] <= 0;
				end
			end
			else begin
				if (newop)begin
					case (A[1:0])
						2'b00:WDshs = {regDM[tmp][31:16],WD[15:0]};
						2'b01:WDshs = {regDM[tmp][31:24],WD[15:0],regDM[tmp][7:0]};
						2'b10:WDshs = {WD[15:0],regDM[tmp][15:0]};
						2'b11:WDshs = {WD[7:0],regDM[tmp][23:0]};
					endcase
					regDM[tmp] <= WDshs;
					$display("%d@%h: *%h <= %h",$time,PCA - 32'b100,tmp,WDshs);
				end
				else if (DMop) begin
					regDM[A[11:2]] <= WD;
					$display("%d@%h: *%h <= %h",$time,PCA - 32'b100,A,WD);
				end
			end
	 end
endmodule
