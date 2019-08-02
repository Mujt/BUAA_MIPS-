`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:43:57 07/11/2019 
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
	 input [2:0] extendOp,
    input [15:0] extendIn,
	 input [31:0] PCA,
	 input [25:0] extendIn2,
    output reg [31:0] extendOut
    );
	 
	 reg [15:0] tmp = 16'b0;
	 integer i;
	 always @(*) begin
		case (extendOp)
			3'b000://zero_extend ori
				extendOut = {16'b0,extendIn};
			3'b001://sign_extend lw sw
				begin
				extendOut = {tmp,extendIn};
				for (i=16;i<32;i=i+1) begin
					extendOut[i] = extendIn[15];
				end
				end
			3'b010://beq
				begin
				extendOut = {extendIn,2'b0};
				for (i=18;i<32;i=i+1) begin
					extendOut[i] = extendIn[15];
				end
				end
			3'b011://lui
				extendOut = {extendIn,16'b0};
			3'b100://jal
				extendOut = {PCA[31:28],extendIn2,2'b0};
		endcase
		//$display("@EXT:%h %h %h",extendIn,extendOp,extendOut);
	 end
endmodule
