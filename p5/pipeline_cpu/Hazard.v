`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:40:38 07/17/2019 
// Design Name: 
// Module Name:    Hazard 
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
`define NW 2'b00
`define ALU 2'b01
`define DM 2'b10
`define ADD4 2'b11
module Hazard(
	 input clk,
	 input reset,
	 input [31:0]FD_IR,
	 input [31:0]E_IR,
	 input [31:0]M_IR,
	 input [31:0]W_IR,
	 
	 output stall,
	 output [2:0] FRSD,
	 output [2:0] FRTD,
		output [2:0] FRSE,
		output [2:0] FRTE,
		output FRTM
    );
	 
	 wire [5:0] opcode,funct;
	 wire addu,subu,ori,lw,sw,beq,lui,j,jal,jr;
	 wire addi;
	 wire blezals,shs;
	 
	 assign opcode = FD_IR[31:26];
	 assign funct = FD_IR[5:0];
	 assign addu = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0] & funct[5] & ~funct[4] & ~funct[3]
					& ~funct[2] & ~funct[1] & funct[0];
	 assign subu = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0] & funct[5] & ~funct[4] & ~funct[3]
					& ~funct[2] & funct[1] & funct[0];
	 assign ori = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2]
					& ~opcode[1] & opcode[0];
	 assign lw = opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2]
					& opcode[1] & opcode[0];	
	 assign sw = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2]
					& opcode[1] & opcode[0];
	 assign beq = ~opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2]
					& ~opcode[1] & ~opcode[0];
	 assign lui = ~opcode[5] & ~opcode[4] & opcode[3] & opcode[2]
					& opcode[1] & opcode[0];
	 assign jal = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2]
					& opcode[1] & opcode[0];
	 assign jr = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0]& ~funct[5] & ~funct[4] & funct[3]
					& ~funct[2] & ~funct[1] & ~funct[0];
	 assign nop = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0]& ~funct[5] & ~funct[4] & ~funct[3]
					& ~funct[2] & ~funct[1] & ~funct[0];
	 assign j = ~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] 
					& opcode[1] & ~opcode[0];
		assign addi = 	~opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0];
		assign blezals = ~opcode[5] & opcode[4] & opcode[3] & ~opcode[2] 
					& ~opcode[1] & ~opcode[0];
		assign shs = opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] 
					& opcode[1] & ~opcode[0];
					
	reg [1:0]res_e;
	reg [4:0]A3_D;
	always @(*) begin
		if (lw == 1'b1)begin
			res_e <= `DM;
			A3_D <= FD_IR[20:16];
		end
		else if (sw == 1'b1)begin
			res_e <= `NW;
		end
		else if (shs == 1'b1)begin
			res_e <= `NW;
		end
		else if (addu == 1'b1) begin
			res_e <= `ALU;
			A3_D <= FD_IR[15:11];
		end
		else if (subu == 1'b1)begin
			res_e <= `ALU;
			A3_D <= FD_IR[15:11];
		end
		else if (addi == 1'b1)begin
			res_e <= `ALU;
			A3_D <= FD_IR[20:16];
		end
		else if (ori == 1'b1)begin
			res_e <= `ALU;
			A3_D <= FD_IR[20:16];
		end
		else if (lui == 1'b1)begin
			res_e <= `ALU;
			A3_D <= FD_IR[20:16];
		end
		else if (beq == 1'b1)begin
			res_e <= `NW;
		end
		else if (j == 1'b1)begin
			res_e <= `NW;
		end
		else if (jal == 1'b1)begin
			res_e <= `ADD4;
			A3_D <= 5'b11111;
		end
		else if (blezals == 1'b1)begin
			res_e <= `ADD4;
			A3_D <= 5'b11111;
		end
		else if (jr == 1'b1)begin
			res_e <= `NW;
		end
		else begin
			res_e <= `NW;
		end
	end
	
	wire Tuse_rs0,Tuse_rt0,Tuse_rs1,Tuse_rt1;
	assign Tuse_rs0 = beq|jr;
	assign Tuse_rt0 = beq;
	assign Tuse_rs1 = addu|subu|ori|lui|lw|sw|shs;
	assign Tuse_rt1 = addu|subu;
	wire clr_re;
	wire [1:0]resE,resM,resW;
	assign clr_re = stall | reset;
	HazReg resE1(.clr(clr_re),.clk(clk),.in(res_e),.out(resE));
				defparam resE1.DATAWIDTH = 2;
	HazReg resM1(.clr(reset),.clk(clk),.in(resE),.out(resM));
				defparam resM1.DATAWIDTH = 2;
	HazReg resW1(.clr(reset),.clk(clk),.in(resM),.out(resW));
				defparam resW1.DATAWIDTH = 2;
				
	wire [4:0]A3_E,A3_M,A3_W;
	HazReg A3_E1(.clr(clr_re),.clk(clk),.in(A3_D),.out(A3_E));
				defparam A3_E1.DATAWIDTH = 5;
	HazReg A3_M1(.clr(reset),.clk(clk),.in(A3_E),.out(A3_M));
				defparam A3_M1.DATAWIDTH = 5;
	HazReg A3_W1(.clr(reset),.clk(clk),.in(A3_M),.out(A3_W));
				defparam A3_W1.DATAWIDTH = 5;
	//Stall
	wire stall_rs0_de1,stall_rs0_de2,stall_rs0_em1,stall_rs1_de2;
	wire stall_rt0_de1,stall_rt0_de2,stall_rt0_em1,stall_rt1_de2;
	wire stall_rs,stall_rt;
	wire stall_31rs;
	wire stall_31rt;
	assign stall_31rs = Tuse_rs0 & (resE === `ADD4) & (FD_IR[25:21] == A3_E);
	assign stall_31rt = Tuse_rt0 & (resE === `ADD4) & (FD_IR[20:16] == A3_E);
	assign stall_rs0_de1 = Tuse_rs0 & (resE === `ALU) & (FD_IR[25:21] == A3_E);
	assign stall_rs0_de2 = Tuse_rs0 & (resE === `DM) & (FD_IR[25:21] == A3_E);
	assign stall_rs0_em1 = Tuse_rs0 & (resM === `DM) & (FD_IR[25:21] == A3_M);
	assign stall_rs1_de2 = Tuse_rs1 & (resE === `DM) & (FD_IR[25:21] == A3_E);
	assign stall_rt0_de1 = Tuse_rt0 & (resE === `ALU) & (FD_IR[20:16] == A3_E);
	assign stall_rt0_de2 = Tuse_rt0 & (resE === `DM) & (FD_IR[20:16] == A3_E);
	assign stall_rt0_em1 = Tuse_rt0 & (resM === `DM) & (FD_IR[20:16] == A3_M);
	assign stall_rt1_de2 = Tuse_rt1 & (resE === `DM) & (FD_IR[20:16] == A3_E);
	assign stall_rs = stall_rs0_de1|stall_rs0_de2|stall_rs0_em1|stall_rs1_de2|stall_31rs;
	assign stall_rt = stall_rt0_de1|stall_rt0_de2|stall_rt0_em1|stall_rt1_de2|stall_31rt;
	assign stall = stall_rs | stall_rt;
	
	//Forward
	assign FRSD = (FD_IR[25:21] === 5'b0)?3'b000:
						((FD_IR[25:21] === A3_M) & (resM === `ALU))?3'b101:
						((FD_IR[25:21] === A3_M) & (resM === `ADD4))?3'b100:
						((FD_IR[25:21] === A3_W) & (resW === `ADD4))?3'b011:
						((FD_IR[25:21] === A3_W) & (resW === `ALU))?3'b010:
						((FD_IR[25:21] === A3_W) & (resW === `DM))?3'b001:3'b000;
	assign FRTD = (FD_IR[20:16] === 5'b0)?3'b0:
						((FD_IR[20:16] === A3_M) & (resM === `ALU))?3'b101:
						((FD_IR[20:16] === A3_M) & (resM === `ADD4))?3'b100:
						((FD_IR[20:16] === A3_W) & (resW === `ADD4))?3'b011:
						((FD_IR[20:16] === A3_W) & (resW === `ALU))?3'b010:
						((FD_IR[20:16] === A3_W) & (resW === `DM))?3'b001:3'b000;
	assign FRSE = (E_IR[25:21] === 5'b0)?3'b0:
						((E_IR[25:21] === A3_M) & (resM === `ALU))?3'b101:
						((E_IR[25:21] === A3_M) & (resM === `ADD4))?3'b100:
						((E_IR[25:21] === A3_W) & (resW === `ADD4))?3'b011:
						((E_IR[25:21] === A3_W) & (resW === `ALU))?3'b010:
						((E_IR[25:21] === A3_W) & (resW === `DM))?3'b001:3'b000;
	assign FRTE = (E_IR[20:16] === 5'b0)?3'b0:
						((E_IR[20:16] === A3_M) & (resM === `ALU))?3'b101:
						((E_IR[20:16] === A3_M) & (resM === `ADD4))?3'b100:
						((E_IR[20:16] === A3_W) & (resW === `ADD4))?3'b011:
						((E_IR[20:16] === A3_W) & (resW === `ALU))?3'b010:
						((E_IR[20:16] === A3_W) & (resW === `DM))?3'b001:3'b000;
	assign FRTM = (M_IR[20:16] === 5'b0)?1'b0:
						((M_IR[20:16] === A3_W) & (resW !== `NW))?1'b1:1'b0;
endmodule
