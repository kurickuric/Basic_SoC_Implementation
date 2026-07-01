`timescale 1ns / 1ps

module DECODER (
	// port list
	i_bcd,
	O_seg,
);


	// port declaration
	
	input [3:0] i_bcd;
	output [6:0] O_seg;

	//modeling
	
	reg [6:0] O_seg;
	always@(*) begin
		case (i_bcd)
		    4'b0000 : O_seg = 7'b1111110; // 0
		    4'b0001 : O_seg = 7'b0110000; // 1
		    4'b0010 : O_seg = 7'b1101101; // 2
		    4'b0011 : O_seg = 7'b1111001; // 3
		    4'b0100 : O_seg = 7'b0110011; // 4
		    4'b0101 : O_seg = 7'b1011011; // 5
		    4'b0110 : O_seg = 7'b1011111; // 6
		    4'b0111 : O_seg = 7'b1110000; // 7
		    4'b1000 : O_seg = 7'b1111111; // 8
		    4'b1001 : O_seg = 7'b1111011; // 9
		    default : O_seg = 7'b0000000; // disabled
		endcase
	end
	

	endmodule
