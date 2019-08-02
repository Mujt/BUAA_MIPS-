`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:11:31 07/11/2019 
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
    input [2:0] op,
    input signed [31:0] in1,
    input signed [31:0] in2,
    output [31:0] out
    );
	reg [31:0] outt;
	 always @(*) begin
		case (op)
			3'b000: outt <= in1 + in2;//Ìí¼ÓopÇé¿ö
			3'b001: outt <= in1 - in2;
			3'b010: outt <= in1 | in2;
			3'b011: outt <= (in1 == in2)?32'b1:32'b0;
		endcase
		//$display("@ALU:%h %h %h %b",in1,in2,outt,op);
	 end
	 
	assign out = outt;
endmodule
