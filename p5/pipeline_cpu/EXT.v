`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:17:08 07/14/2019 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
		input [15:0] imm,
		input extop,
		output reg [31:0] ext_imm
    );
	 integer i;
	 always @(*) begin
		case (extop)
			1'b0:ext_imm = {16'b0,imm};
			1'b1:begin
				ext_imm = {16'b0,imm};
				for (i=16;i<32;i=i+1) begin
					ext_imm[i] = imm[15];
				end
			end
		endcase
	 end
endmodule
