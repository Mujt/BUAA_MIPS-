`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:50 07/14/2019 
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
module MUX_PC(
		input [1:0] PCSel,
		input [31:0] ADD4,
		input [31:0] NPC,
		input [31:0] RFRD1,
		output reg [31:0] PC
    );
	 
	 always @(*) begin
		case (PCSel) 
			2'b00:PC <= ADD4;
			2'b01:PC <= NPC;
			2'b10:PC <= RFRD1;
			//2'b11:PC <= NPC;
		endcase
	 end
endmodule

module MUX_ALUB(
		input BSel,
		input [31:0] RT_E,
		input [31:0] EXT_E,
		output reg [31:0] ALU_B
    );
	 
	 always @(*) begin
		case (BSel) 
			1'b0:ALU_B <= RT_E;
			1'b1:ALU_B <= EXT_E;
			//2'b10:PC <= RFRD1;
		endcase
	 end
endmodule

module MUX_RF_A3(
		input [1:0] WRSel,
		input [4:0] IR_rt,
		input [4:0] IR_rd,
		output reg[4:0]RF_A3
	 );
		always @(*) begin
			case (WRSel)
				2'b00:RF_A3 <= IR_rt;
				2'b01:RF_A3 <= IR_rd;
				2'b10:RF_A3 <= 5'b11111;
			endcase
		end
endmodule


module MUX_RF_WD(
		input [1:0]WDSel,
		input [31:0] W_DR,
		input [31:0] W_AO,
		input [15:0] IR_W_16,
		input [31:0] W_PC4,
		output reg [31:0] RF_WD
    );
	 
	 always @(*) begin
		case (WDSel) 
			2'b00:RF_WD <= W_DR;
			2'b01:RF_WD <= W_AO;
			2'b10:RF_WD <= W_AO;
			2'b11:RF_WD <= W_PC4;
		endcase
	 end
endmodule