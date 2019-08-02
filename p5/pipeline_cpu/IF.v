`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:39:55 07/14/2019 
// Design Name: 
// Module Name:    IF 
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
module IF(
    input clk,
    input reset,
	 input [1:0] PCSel,
	 input [31:0] NPC,
	 input [31:0] RFRD1,
	 output [31:0] ADD4,
	 output [31:0] IR,
	 input PC_en
    );
	 
	 reg [31:0] IM [1023:0];
	 initial begin
		$readmemh("code.txt",IM);
	 end
	 wire [31:0] PCA,PC;
	 IFU ifu(.clk(clk),.reset(reset),.PC(PC),.ADD4(ADD4),.PCA(PCA),.PC_en(PC_en));
	 MUX_PC mux1(.PCSel(PCSel),.ADD4(ADD4),.NPC(NPC),.RFRD1(RFRD1),.PC(PC));
	 assign IR = IM[PCA[11:2]];
	 
endmodule
