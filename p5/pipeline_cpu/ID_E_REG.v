`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:22:24 07/14/2019 
// Design Name: 
// Module Name:    ID_E_REG 
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
module ID_E_REG(
    input clk,
    input reset,
	 input [31:0] IR_E,
	 input [31:0] PC4_E,
	 input [31:0] RS_E,
	 input [31:0] RT_E,
	 input [31:0] EXT_E,
	 
	 output [31:0] E_IR,
	 output [31:0] E_PC4,
	 output [31:0] E_RS,
	 output [31:0] E_RT,
	 output [31:0] E_EXT,
	 input DE_reset,
	 input [31:0] PC8_E,
	 output [31:0] E_PC8
    );
	 
	 reg [31:0] IR;
	 reg [31:0] PC4;
	 reg [31:0] RS;
	 reg [31:0] RT;
	 reg [31:0] EXT;
	 reg [31:0] PC8;
	 assign E_IR = IR;
	 assign E_PC4 = PC4;
	 assign E_RS = RS;
	 assign E_RT = RT;
	 assign E_EXT = EXT;
	 assign E_PC8 = PC8;
	 
	 always @(posedge clk) begin
		if (reset | DE_reset) begin
			IR <= 0;
			PC4 <= 0;
			RS <= 0;
			RT <= 0;
			EXT <= 0;
			PC8 <= 0;
		end
		else begin
			IR <= IR_E;
			PC4 <= PC4_E;
			RS <= RS_E;
			RT <= RT_E;
			EXT <= EXT_E;
			PC8 <= PC8_E;
		end
	 end
endmodule
