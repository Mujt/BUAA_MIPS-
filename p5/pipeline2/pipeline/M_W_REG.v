`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:57 07/14/2019 
// Design Name: 
// Module Name:    M_W_REG 
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
module M_W_REG(
    input clk,
    input reset,
    input [31:0] IR_W,
    input [31:0] PC4_W,
    input [31:0] AO_W,
    input [31:0] DR_W,
    output [31:0] W_IR,
    output [31:0] W_PC4,
    output [31:0] W_AO,
    output [31:0] W_DR,
	 input [31:0] PC8_W,
	 output [31:0] W_PC8
    );
	 
	 reg [31:0] IR;
	 reg [31:0] PC4;
	 reg [31:0] AO;
	 reg [31:0] DR;
	 reg [31:0] PC8;
	 assign W_IR = IR;
	 assign W_PC4 = PC4;
	 assign W_AO = AO;
	 assign W_DR = DR;
	 assign W_PC8 = PC8;
	 always @(posedge clk) begin
		if (reset) begin
			IR <= 32'b0;
			PC4 <= 32'b0;
			AO <= 32'b0;
			DR <= 32'b0;
			PC8 <=32'b0;
		end
		else begin
			IR <= IR_W;
			PC4 <= PC4_W;
			AO <= AO_W;
			DR <= DR_W;
			PC8 <= PC8_W;
		end
	 end
endmodule
