`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:28:08 07/11/2019 
// Design Name: 
// Module Name:    mips 
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
module mips(
	input clk,
	input reset
    );
	 //IFU
	 wire [31:0] PCA;
	 wire [31:0] Instr;
	 wire [31:0] pc4;
	 wire IFU_judge;
	 wire [31:0] pcX;
	 //GRF
	 wire [4:0] RG1,RG2,WG;
	 wire [31:0] WD,RD1,RD2;
	 //EXT
	 //ALU
	 wire [31:0] in1,in2,out;
	 //wire [2:0] ALUop;
	 //DM
	 wire [31:0] DMAD;
	 wire [31:0] DMWD,DMRD;
	 //wire DMop;
	 //Control
	 wire pc_judge,DMop,ALUin2op;
	 wire [2:0] extendOp;
	 wire [1:0] WGop,WDop,PCop;
	 wire [2:0] ALUop;
	 wire WE,BEQJUDGE;
	 
	 //extend
	 wire [31:0] extendOut;
	 //MUX
	 wire [31:0] pc4x;
	 wire [31:0] WD1,WD2,WD3,WD4;
	 wire [31:0] in21,in22;
	 
	 reg [31:0] IM[1023:0];
	 initial begin
		$readmemh("code.txt",IM);
	 end
	 
	 IFU IFUx(.clk(clk),.reset(reset),.pcX(pcX),.pc_judge(IFU_judge),.pc4(pc4),.PC(PCA));
	 
	 GRF GRFx(.clk(clk),.reset(reset),.RG1(Instr[25:21]),.RG2(Instr[20:16])
					,.WG(WG),.WD(WD),.WE(WE),.PC(PCA),.RD1(RD1),.RD2(RD2));
	 
	 ALU ALUx(.op(ALUop),.in1(in1),.in2(in2),.out(out));
	 
	 DM DMx(.clk(clk),.reset(reset),.ADDR(DMAD),.WD(DMWD),.DMop(DMop),.RD(DMRD),.PC(PCA));
	 
	 controll controllx(.opcode(Instr[31:26]),.funct(Instr[5:0]),.pc_judge(pc_judge)
								,.PCop(PCop),.DMop(DMop),.ALUin2op(ALUin2op),.extendOp(extendOp)
								,.WGop(WGop),.WDop(WDop),.ALUop(ALUop),.WE(WE),.BEQJUDGE(BEQJUDGE));
	 
	 EXT EXTx(.extendOp(extendOp),.extendIn(Instr[15:0])
				,.PCA(PCA),.extendIn2(Instr[25:0]),.extendOut(extendOut));
	 
	 MUX_PC MUX_PCx(.pc4x(pc4x),.pcx(extendOut),.pcR(RD1),.op(PCop),.PCxout(pcX));
	 MUX_WG MUX_WGx(.WG1(Instr[20:16]),.WG2(Instr[15:11]),.op(WGop),.WG(WG));
	 MUX_WD MUX_WDx(.WD1(WD1),.WD2(WD2),.WD3(WD3),.WD4(WD4),.op(WDop),.WD(WD));
	 MUX_ALUIN2 MUX_ALUIN2x(.in21(in21),.in22(in22),.op(ALUin2op),.in2(in2));
	 
	 assign Instr = IM[PCA[11:2]];
	 assign in1 = RD1;
	 assign DMWD = RD2;
	 assign DMAD = out;
	 assign IFU_judge = (BEQJUDGE == 1)?(pc_judge & out[0]):pc_judge;
	 assign pc4x = pc4 + extendOut;
	 assign WD1 = out;
	 assign WD2 = DMRD;
	 assign WD3 = PCA + 3'b100;
	 assign WD4 = extendOut;
	 assign in21 = RD2;
	 assign in22 = extendOut;
	 
	 //assign PA = PCA[11:2];
	 
	 //always @(posedge clk) begin
	 //$display("");
	 //$display("PC:%d",PCA[11:2]);
	 //$display("");
	 //end
	 
endmodule
