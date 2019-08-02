`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:25:06 07/14/2019 
// Design Name: 
// Module Name:    Controller 
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
module Controller(
    input [5:0] opcode,
    input [5:0] funct,
	 output [1:0]PCSel,
	 output extop,
	 output [1:0]NPCop,
	 output [1:0]CMPop,
	 output [2:0]ALUop,
	 output DMop,
	 output WE,
	 output BSel,
	 output [1:0]WRSel,
	 output [1:0]WDSel,
	 output BEQJUD,
	 output BJ,
	 output newop
    );
	 
	 wire addu,subu,ori,lw,sw,beq,lui,j,jal,jr;
	 
	 wire addi;
	 wire blezals,shs;
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
		
		assign PCSel[1] = jr | 1'b0;
		assign PCSel[0] = beq | j | jal | blezals;
		assign extop = lw | sw | beq | addi | blezals|shs;
		assign NPCop[1] = blezals;
		assign NPCop[0] = beq;
		assign CMPop[1] = 0;
		assign CMPop[0] = blezals | 1'b0;
		assign ALUop[1] = ori|lui;
		assign ALUop[0] = subu|lui;
		assign ALUop[2] = 0;
		assign DMop = sw;
		assign WE = addu | subu | ori | lw | lui | jal |addi|blezals;
		assign BSel = ori | lw | sw | addi|shs;
		assign WRSel[1] = jal | blezals;
		assign WRSel[0] = addu | subu;
		assign WDSel[1] = lui|jal|blezals;
		assign WDSel[0] = addu|subu|ori|jal|addi|blezals;
		
		assign BEQJUD = beq | blezals;
		assign BJ = beq | j |jal | jr|blezals;
		assign newop = shs;
endmodule
