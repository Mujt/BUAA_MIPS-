`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:38 07/16/2019 
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
	 wire [31:0]IR_D,PC4_D;
	 
	 wire [31:0]NPC,RFRD1,RFRD2;
	 
	 wire [4:0]RF_A3;
	 
	 wire [31:0]RF_WD,EXTout;
	 //IF_stage
	 wire [1:0]PCSel,PCSel1;
	 wire CMPout,BEQJUD;
	 //suspend
	 wire stall;
	 wire [2:0]FRSD,FRTD,FRSE,FRTE;
	 wire FRTM;
	 
	 wire [31:0] CMP1,CMP2;
	 wire BJ;
	 
	 wire [31:0]D_IR,D_PC4;
	 wire [31:0]W_IR,W_DR,W_AO,W_PC4;
	 wire [31:0]ALU_A,ALU_B,AO;
	 wire [31:0]E_IR,E_PC4;
	 
	 wire [1:0]WRSel,WDSel;
	 
	 wire [31:0]E_RS,E_RT,E_EXT,RTE;
	 wire BSel;
	 wire [2:0]ALUop;
	 
	 wire [31:0] M_IR,M_PC4,M_AO,M_RT;
	 
	 wire [31:0] DR,RTM;
	 wire DMop;
	 
	 Hazard Hazard1(.clk(clk),.reset(reset),.FD_IR(D_IR),.E_IR(E_IR),.M_IR(M_IR),.W_IR(W_IR)
							,.stall(stall),.FRSD(FRSD),.FRTD(FRTD),.FRSE(FRSE),.FRTE(FRTE),.FRTM(FRTM));
	 
	 wire [31:0]PC8,D_PC8,E_PC8,M_PC8,W_PC8;
	 IF IF1(.clk(clk),.reset(reset),.PCSel(PCSel),.NPC(NPC),.RFRD1(CMP1),.ADD4(PC4_D),.IR(IR_D),.PC_en(stall));
	 assign PC8 = PC4_D + 4;
	 assign PCSel = (BEQJUD == 1'b0)?PCSel1:(CMPout == 1)?PCSel1:2'b00;
	 //F_D stage reg
	 //wire FD_en;
	 //assign FD_en = stall | BJ;
	 IF_ID_REG IF_ID_REG1(.clk(clk),.reset(reset),.IR_D(IR_D)
								,.PC4_D(PC4_D),.D_IR(D_IR),.D_PC4(D_PC4),.FD_en(stall),.PC8_D(PC8),.D_PC8(D_PC8));
	 
	 //ID_stage
	 
	 ID ID1(.clk(clk),.reset(reset),.IR(D_IR),.A1(D_IR[25:21]),.A2(D_IR[20:16]),.A3(RF_A3),.D_PC4(D_PC4),.W_PC4(W_PC4),.AO(AO),.M4(RF_WD),.WE(WE)
				,.CMP1(CMP1),.CMP2(CMP2),.RD1(RFRD1),.RD2(RFRD2),.EXTout(EXTout),.NPCout(NPC),.CMPout(CMPout),.PCSel(PCSel1),.BEQJUD(BEQJUD),.BJ(BJ));
	 MFRSD MFRSD1(.FRSD(FRSD),.RF_RD1(RFRD1),.DMout(W_DR),.AOW(W_AO),.PC8W(W_PC8),.PC8M(M_PC8),.AOM(M_AO),.RSD(CMP1));
	 MFRTD MFRTD1(.FRTD(FRTD),.RF_RD2(RFRD2),.DMout(W_DR),.AOW(W_AO),.PC8W(W_PC8),.PC8M(M_PC8),.AOM(M_AO),.RTD(CMP2));
	 
	 
	 //D_E stage reg
	 
	 Controller controll_W(.opcode(W_IR[31:26]),.funct(W_IR[5:0]),.PCSel(),.extop(),.NPCop(),.CMPop(),.ALUop()
								,.DMop(),.BSel(),.WE(WE),.WRSel(WRSel),.WDSel(WDSel),.BEQJUD(),.BJ());
	 ID_E_REG ID_E_REG1(.clk(clk),.reset(reset),.IR_E(D_IR),.PC4_E(D_PC4),.RS_E(CMP1),.RT_E(CMP2),.EXT_E(EXTout)
							,.E_IR(E_IR),.E_PC4(E_PC4),.E_RS(E_RS),.E_RT(E_RT),.E_EXT(E_EXT),.DE_reset(stall),.PC8_E(D_PC8),.E_PC8(E_PC8));
	 MUX_RF_A3 MUX_A3(.WRSel(WRSel),.IR_rt(W_IR[20:16]),.IR_rd(W_IR[15:11]),.RF_A3(RF_A3));
	 MUX_RF_WD MUX_WD(.WDSel(WDSel),.W_DR(W_DR),.W_AO(W_AO),.IR_W_16(W_IR[15:0]),.W_PC4(W_PC8),.RF_WD(RF_WD));
	 //E_stage
	 
	 ALU ALU1(.IR(E_IR),.A(ALU_A),.B(ALU_B),.ALUop(ALUop),.AO(AO));
	 MFRSE MFRSE1(.FRSE(FRSE),.RS_E(E_RS),.DMout(W_DR),.AOW(W_AO),.PC8W(W_PC8),.PC8M(M_PC8),.AOM(M_AO),.RSE(ALU_A),.DM(DR));
	 MUX_ALUB MUX_ALUB1(.BSel(BSel),.RT_E(RTE),.EXT_E(E_EXT),.ALU_B(ALU_B));
	 MFRTE MFRTE1(.FRTE(FRTE),.RT_E(E_RT),.DMout(W_DR),.AOW(W_AO),.PC8W(W_PC8)
						,.PC8M(M_PC8),.AOM(M_AO),.DM(DR),.RTE(RTE));
	 Controller controll1(.opcode(E_IR[31:26]),.funct(E_IR[5:0]),.BSel(BSel),.ALUop(ALUop),.PCSel(),.extop(),.NPCop(),.CMPop()
								,.DMop(),.WE(),.WRSel(),.WDSel(),.BEQJUD(),.BJ());
	 //E_M stage reg
	 
	 
	 E_M_REG E_M_REG1(.clk(clk),.reset(reset),.IR_M(E_IR),.PC4_M(E_PC4),.AO_M(AO),.RT_M(RTE)
							,.M_IR(M_IR),.M_PC4(M_PC4),.M_AO(M_AO),.M_RT(M_RT),.PC8_M(E_PC8),.M_PC8(M_PC8));
	 //M stage
	 wire newop;
	 DM DM1(.clk(clk),.reset(reset),.A(M_AO),.WD(RTM),.DMop(DMop),.newop(newop),.DR(DR),.PCA(M_PC4));
	 MFRTM MFRTM1(.FRTM(FRTM),.RT_M(M_RT),.M4(RF_WD),.RTM(RTM));
	 Controller controll2(.opcode(M_IR[31:26]),.funct(M_IR[5:0]),.DMop(DMop),.PCSel(),.extop(),.NPCop(),.CMPop()
								,.WE(),.WRSel(),.WDSel(),.BEQJUD(),.BJ(),.ALUop(),.BSel(),.newop(newop));
	 //M_W stage reg
	 M_W_REG M_W_REG1(.clk(clk),.reset(reset),.IR_W(M_IR),.PC4_W(M_PC4),.AO_W(M_AO),.DR_W(DR)
							,.W_IR(W_IR),.W_PC4(W_PC4),.W_AO(W_AO),.W_DR(W_DR),.PC8_W(M_PC8),.W_PC8(W_PC8));

endmodule
