`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:32:45 02/19/2024
// Design Name:   or_gate
// Module Name:   D:/xilinux/day_challenge/or_gate/or_gate_tb.v
// Project Name:  or_gate
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: or_gate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module or_gate_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	or_gate uut (
		.a(a), 
		.b(b), 
		.y(y)
	);

	initial begin
        a = 0; b = 0;
        #10; 
		  $display("a = %b, b = %b, y = %b", a, b, y);
		  a = 0; b = 1;
        #10; 
        $display("a = %b, b = %b, y = %b", a, b, y);
        a = 1; b = 0;
        #10;
        $display("a = %b, b = %b, y = %b", a, b, y);
        a = 1; b = 1;
        #10; 
        $display("a = %b, b = %b, y = %b", a, b, y);
        $finish;


	end
      
endmodule

