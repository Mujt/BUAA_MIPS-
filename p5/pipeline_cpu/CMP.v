`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:44:36 07/16/2019 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] CMP1,
    input [31:0] CMP2,
    input [1:0] CMPop,
    output reg CMPout
    );
	 
	 always @(*) begin
		case(CMPop) 
			2'b00:CMPout <= (CMP1 == CMP2)?1'b1:1'b0;
			2'b01:CMPout <= (CMP1 <= 32'b0)?1'b1:1'b0;
		endcase
	 end

endmodule
