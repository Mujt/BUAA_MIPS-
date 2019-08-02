`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:43 07/16/2019 
// Design Name: 
// Module Name:    E_Stage 
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
module E_Stage(
output reg[31:0]tmp
    );
	 initial begin
		i = 0;
		tmp = 32'b0;
	 end
	 integer i;
	 always@(*)begin
			begin:for1
			for (i=0;i<=32;i=i+1)begin
				if (i == 10)begin
						disable for1;
				end
				$display("i:%d",i);
			end
			end
			tmp <= i;
	 end
	 
endmodule
