`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:19:49 07/14/2019 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
input [31:0]IR,
    input [31:0] A,
    input [31:0] B,
    input [2:0] ALUop,
    output reg[31:0] AO
    );
	 
	always @(*) begin
		case (ALUop)
			3'b000: AO <= A + B;
			3'b001: AO <= A - B;
			3'b010: AO <= A | B;
			3'b011: AO <= {IR[15:0],16'b0};
			//3'b100: AO <= 
		endcase
	end
endmodule
