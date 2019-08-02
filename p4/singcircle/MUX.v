`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:58:58 07/11/2019 
// Design Name: 
// Module Name:    MUX 
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
module MUX_PC(pc4x,pcx,pcR,op,PCxout);//IFU
	input [31:0] pc4x;
	input [31:0] pcx;
	input [31:0] pcR;
	input [1:0] op;
	output reg [31:0] PCxout;
	always @(*) begin
		case (op)
			2'b00: PCxout = pc4x;
			2'b01: PCxout = pcx;
			2'b10: PCxout = pcR;
		endcase
		//$display("@MUX_PC:%h %h %h %d",pc4x,pcx,pcR,op);
	end
endmodule

module MUX_WG(WG1,WG2,op,WG);//GRF WG
	input [4:0] WG1;
	input [4:0] WG2;
	input [1:0] op;
	output reg [4:0] WG;
	always @(*) begin
	case (op)
		2'b00: 
			WG = WG1;
		2'b01:
			WG = WG2;
		2'b10:
			WG = 5'b11111;
	endcase
	//$display("@MUX_WG:%h %h %h %d",WG1,WG2,5'b11111,op);
	end
endmodule


module MUX_WD(WD1,WD2,WD3,WD4,op,WD);//GRF WD
	input [31:0] WD1,WD2,WD3,WD4;
	output reg [31:0] WD;
	input [1:0] op;
	always @(*) begin
	case (op)
		2'b00:
			WD = WD1;
		2'b01:
			WD = WD2;
		2'b10:
			WD = WD3;
		2'b11:
			WD = WD4;
	endcase
	//$display("@MUX_WD:%h %h %h %h %d",WD1,WD2,WD3,WD4,op);
	end
endmodule

module MUX_ALUIN2(in21,in22,op,in2);//GRF WD
	input [31:0] in21,in22;
	input op;
	output [31:0] in2;
	//always @(*) begin
	//$display("@ALUIN2:%h %h %d",in21,in22,op);
	//end
	assign in2 = (op == 0)?in21:in22;
endmodule