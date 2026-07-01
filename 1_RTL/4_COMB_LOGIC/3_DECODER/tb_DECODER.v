`timescale 1ns / 1ps

module tb_DECODER;

reg [3:0] i_bcd;
wire [6:0] O_seg;

DECODER uut(

.i_bcd(i_bcd),
.O_seg(O_seg)
);

initial begin
	$dumpfile("./DECODER.vcd" );
	$dumpvars(0, tb_DECODER   );
end

// apply stimulus
initial begin
	//monitoring
	$monitor("Time = %0t | i_bcd Input = %b | Seven Segment Output = %b", $time, i_bcd, O_seg);

	// apply stimulus
	i_bcd = 4'b0000; #10;
	i_bcd = 4'b0001; #10;
	i_bcd = 4'b0010; #10;
	i_bcd = 4'b0011; #10;
	i_bcd = 4'b0100; #10;
	i_bcd = 4'b0101; #10;
	i_bcd = 4'b0110; #10;
	i_bcd = 4'b0111; #10;
	i_bcd = 4'b1000; #10;
	i_bcd = 4'b1001; #10;

	$finish;
end

endmodule








