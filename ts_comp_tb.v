//------testbench of ts_bmzh-----
`timescale 1ns/10ps

module ts_bmzh_tb;
reg[7:0]	a_in;
wire[7:0]	y_out;

ts_bmzh	ts_bmzh(
		.a(a_in),
		.a_comp(y_out)
		);
//以上是例化
initial begin
		a_in<=0;
	#2600	$stop;   //8 位需要256次，每次10纳秒。
	
end

always #10 a_in<=a_in+1;//变历所有情况；

initial begin
	$dumpfile("test6.vcd");
	$dumpvars(0, ts_bmzh_tb); 


end

endmodule
