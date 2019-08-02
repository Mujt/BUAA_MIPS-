`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:05:41 07/14/2019 
// Design Name: 
// Module Name:    ID 
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
module ID(
    input clk,
    input reset,
	 input [31:0]IR,
	 input [4:0]A1,
	 input [4:0]A2,
	 input [4:0]A3,
	 input [31:0]D_PC4,
	 input [31:0]W_PC4,
	 input [31:0]AO,
	 input [31:0]M4,
	 input WE,
	 
	 input [31:0]CMP1,
	 input [31:0]CMP2,
	 
	 output [31:0]RD1,
	 output [31:0]RD2,
	 output [31:0]EXTout,
	 output [31:0]NPCout,
	 output CMPout,
	 
	 output [1:0]PCSel,
	 output BEQJUD,
	 output BJ
    );
	 wire [31:0] PCA;
	 //wire [31:0] CMP1,CMP2;
	 wire extop;
	 wire [1:0]NPCop;
	 wire [1:0]CMPop;
	 assign PCA = W_PC4 - 4;
	 GRF GRF1(.clk(clk),.reset(reset),.WE(WE),.A1(A1),.A2(A2),.A3(A3),.WD(M4),.RD1(RD1),.RD2(RD2),.PCA(PCA));
	 EXT EXT1(.imm(IR[15:0]),.extop(extop),.ext_imm(EXTout));
	 //CMP
	 CMP CMP11(.CMP1(CMP1),.CMP2(CMP2),.CMPop(CMPop),.CMPout(CMPout));
	 //NPC
	 NPC NPC1(.IR(IR),.PC4(D_PC4),.SignExt(EXTout),.NPCop(NPCop),.NPCout(NPCout));
	 
	 
	 Controller controll(.opcode(IR[31:26]),.funct(IR[5:0]),.PCSel(PCSel),.extop(extop),.NPCop(NPCop)
								,.CMPop(CMPop),.ALUop(),.DMop()
								,.WE(),.BSel(),.WRSel(),.WDSel(),.BEQJUD(BEQJUD),.BJ(BJ));
endmodule
