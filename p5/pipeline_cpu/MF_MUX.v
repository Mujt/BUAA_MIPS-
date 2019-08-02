`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:54:54 07/16/2019 
// Design Name: 
// Module Name:    MF_MUX 
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
module MFRSD(
		input [2:0] FRSD,
		input [31:0] RF_RD1,
		input [31:0] DMout,
		input [31:0] AOW,
		input [31:0] PC8W,
		input [31:0] PC8M,
		input [31:0] AOM,
		output reg [31:0] RSD
    );
	 always @(*) begin
			case (FRSD)
				3'b000:RSD <= RF_RD1;
				3'b001:RSD <= DMout;
				3'b010:RSD <= AOW;
				3'b011:RSD <= PC8W;
				3'b100:RSD <= PC8M;
				3'b101:RSD <= AOM;
			endcase
			//$display("@CMP1:%d %h",FRSD,DMout);
	 end
	 
endmodule

module MFRTD(
		input [2:0] FRTD,
		input [31:0] RF_RD2,
		input [31:0] DMout,
		input [31:0] AOW,
		input [31:0] PC8W,
		input [31:0] PC8M,
		input [31:0] AOM,
		output reg [31:0] RTD
    );
	 always @(*) begin
			case (FRTD)
				3'b000:RTD <= RF_RD2;
				3'b001:RTD <= DMout;
				3'b010:RTD <= AOW;
				3'b011:RTD <= PC8W;
				3'b100:RTD <= PC8M;
				3'b101:RTD <= AOM;
			endcase
			//$display("@CMP2:%d %h",FRTD,DMout);
	 end
endmodule

module MFRSE(
		input [2:0] FRSE,
		input [31:0] RS_E,
		input [31:0] DMout,
		input [31:0] AOW,
		input [31:0] PC8W,
		input [31:0] PC8M,
		input [31:0] AOM,
		input [31:0] DM,
		output reg [31:0] RSE
    );
	 always @(*) begin
			case (FRSE)
				3'b000:RSE <= RS_E;
				3'b001:RSE <= DMout;
				3'b010:RSE <= AOW;
				3'b011:RSE <= PC8W;
				3'b100:RSE <= PC8M;
				3'b101:RSE <= AOM;
				3'b110:RSE <= DM;
			endcase
			//$display("@ALU_A:%d %h",FRSE,DMout);
	 end
endmodule


module MFRTE(
		input [2:0] FRTE,
		input [31:0] RT_E,
		input [31:0] DMout,
		input [31:0] AOW,
		input [31:0] PC8W,
		input [31:0] PC8M,
		input [31:0] AOM,
		input [31:0] DM,
		output reg [31:0] RTE
    );
	 always @(*) begin
			case (FRTE)
				3'b000:RTE <= RT_E;
				3'b001:RTE <= DMout;
				3'b010:RTE <= AOW;
				3'b011:RTE <= PC8W;
				3'b100:RTE <= PC8M;
				3'b101:RTE <= AOM;
				3'b110:RTE <= DM;
			endcase
			//$display("@ALU_B:%d %h",FRTE,DMout);
	 end
endmodule

module MFRTM(
		input  FRTM,
		input [31:0] RT_M,
		//input [31:0] AO,
		input [31:0] M4,
		output reg [31:0] RTM
    );
	 always @(*) begin
			case (FRTM)
				1'b0:RTM <= RT_M;
				//2'b01:RTM <= AO;
				1'b1:RTM <= M4;
			endcase
	 end
endmodule