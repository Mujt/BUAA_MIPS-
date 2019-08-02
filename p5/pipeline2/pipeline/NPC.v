`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:39:55 07/16/2019 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
	 input [31:0] IR, 
    input [31:0] PC4,
	 input [31:0] SignExt,
    input  [1:0]NPCop,
    output reg [31:0] NPCout
    );
	 reg [31:0]tmp;
	 always @(*) begin
		case (NPCop)
			2'b00:begin
				tmp = PC4 - 4;
				NPCout <= {tmp[31:28],IR[25:0],2'b00};
			end
			2'b01:
				NPCout <= PC4 + (SignExt<<2);
			2'b10:
				NPCout <= PC4 + (SignExt<<2);
		endcase
	 end
endmodule
