`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:16:48 07/11/2019 
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
	 input [31:0] pcX,
	 input pc_judge,
	 output [31:0] pc4,
    output [31:0] PC
    );
	 
	 reg [31:0] PCREG;
	 
	 always @(posedge clk) begin
		if (reset) begin
			PCREG <= 32'h3000;
		end
		else begin
			if (pc_judge == 1'b0) begin
				PCREG <= pc4;
			end
			else if (pc_judge == 1'b01) begin
				PCREG <= pcX;
			end
		end
	 end
	 assign pc4 = PC + 4;
	 assign PC = PCREG;
endmodule
