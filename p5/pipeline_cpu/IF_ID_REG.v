`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:16 07/14/2019 
// Design Name: 
// Module Name:    IF_ID_REG 
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
module IF_ID_REG(
		input clk,
		input reset,
		input [31:0] IR_D,
		input [31:0] PC4_D,
		output [31:0] D_IR,
		output [31:0] D_PC4,
		input FD_en,
		input [31:0] PC8_D,
		output [31:0] D_PC8
    );
	 
	 reg [31:0] IR;
	 reg [31:0] PC4;
	 reg [31:0] PC8;
	 assign D_IR = IR;
	 assign D_PC4 = PC4;
	 assign D_PC8 = PC8;
	 always @(posedge clk) begin
		if(reset) begin
			IR <= 0;
			PC4 <= 0;
			PC8 <= 0;
		end
		else begin
			if (FD_en) begin
			//
			end
			else begin
				IR <= IR_D;
				PC4 <= PC4_D;
				PC8 <= PC8_D;
			end
		end
	 end
endmodule
