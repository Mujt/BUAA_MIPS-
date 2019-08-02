`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:32:19 07/14/2019 
// Design Name: 
// Module Name:    E_M_REG 
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
module E_M_REG(
    input clk,
    input reset,
    input [31:0] IR_M,
    input [31:0] PC4_M,
    input [31:0] AO_M,
    input [31:0] RT_M,
    output [31:0] M_IR,
    output [31:0] M_PC4,
    output [31:0] M_AO,
    output [31:0] M_RT,
	 input [31:0] PC8_M,
	 output [31:0] M_PC8
    );
	 
	 reg [31:0] IR;
	 reg [31:0] PC4;
	 reg [31:0] AO;
	 reg [31:0] RT;
	 reg [31:0] PC8;
	 assign M_IR = IR;
	 assign M_PC4 = PC4;
	 assign M_AO = AO;
	 assign M_RT = RT;
	 assign M_PC8 = PC8;
	 
	 always @(posedge clk) begin
		if (reset) begin
			IR <= 0;
			PC4 <= 0;
			AO <= 0;
			RT <= 0;
			PC8<=0;
		end
		else begin
			IR <= IR_M;
			PC4 <= PC4_M;
			AO <= AO_M;
			RT <= RT_M;
			PC8 <= PC8_M;
		end
	 end
	 
endmodule
