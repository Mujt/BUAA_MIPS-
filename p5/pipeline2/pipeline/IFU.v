`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:49:46 07/14/2019 
// Design Name: 
// Module Name:    IFU 
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
module IFU(
    input clk,
    input reset,
	 input [31:0] PC,
	 output [31:0] ADD4,
	 output [31:0] PCA,
	 input PC_en
    );
	 initial begin
	 PCREG <= 32'h3000;
	 end
	 reg [31:0] PCREG;
	 always @(posedge clk) begin
			if (reset) begin
				PCREG <= 32'h3000;
			end
			else begin
				if(PC_en)begin
				//
				end
				else begin
					PCREG <= PC;
				end
			end
	 end
	 assign ADD4 = PCA + 4;
	 assign PCA = PCREG;
endmodule
