`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:25:39 07/11/2019 
// Design Name: 
// Module Name:    controll 
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
module controll(
    input [5:0] opcode,
    input [5:0] funct,
    //output ctrl
	 output pc_judge,
	 output [1:0] PCop,
	 output DMop,
	 output ALUin2op,
	 output [2:0] extendOp,
	 output [1:0] WGop,
	 output [1:0] WDop,
	 output [2:0] ALUop,
	 output WE,
	 output BEQJUDGE
    );
	 wire addu,subu,ori,lw,sw,beq,lui,jal,jr;
	 
	 assign addu = ~opcode & funct[5] & ~funct[4] & ~funct[3]
					& ~funct[2] & ~funct[1] & funct[0];
	 assign subu = ~opcode & funct[5] & ~funct[4] & ~funct[3]
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
	 assign jr = ~opcode & ~funct[5] & ~funct[4] & funct[3]
					& ~funct[2] & ~funct[1] & ~funct[0];
	 assign nop = ~opcode & ~funct;
	 
	 assign pc_judge = beq | jal | jr;
	 assign PCop[1] = jr;
	 assign PCop[0] = jal;
	 assign DMop = sw;
	 assign ALUin2op = ori | lw |sw;
	 assign extendOp[2] = jal;
	 assign extendOp[1] = beq | lui;
	 assign extendOp[0] = lw | sw | lui;
	 assign WGop[1] = jal;
	 assign WGop[0] = addu | subu;
	 assign WDop[1] = lui | jal;
	 assign WDop[0] = lw | lui;
	 assign ALUop[1] = ori | beq;
	 assign ALUop[0] = subu | beq;
	 assign ALUop[2] = 0;
	 assign WE = addu | subu | ori | lw | lui | jal;
	 assign BEQJUDGE = beq;
endmodule
