`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:13:22 07/12/2019
// Design Name:   mips
// Module Name:   C:/Users/Mujiangtao/Desktop/computer_science/singcircle/mips_tb.v
// Project Name:  singcircle
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mips
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mips_tb;

	// Inputs
	reg clk;
	reg reset;

	// Instantiate the Unit Under Test (UUT)
	mips uut (
		.clk(clk), 
		.reset(reset)
	);

	initial begin
		// Initialize Inputs
		 clk = 0;
		 reset = 1;
		// Wait 100 ns for global reset to finish
      #10 reset = 0;
		// Add stimulus here

	end
	
	always #5 clk = ~clk;
      
endmodule

