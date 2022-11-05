//2022-7-23,罗力中；
//补码转换；

module ts_bmzh(a,a_comp);
input[7:0] 	a;
output[7:0] 	a_comp;

wire[6:0]	b;//按位取反的幅度位；
wire[7:0]	y;//负数的补码；

assign 	b=~a[6:0];
assign	 y[6:0]=b+1;//按位取反+1；
assign	 y[7]=a[7];//符号位不变；
// assign	y={a[7],~a[6:0]+1}; //{}按位连接；
assign a_comp=a[7]?y:a;//原码最高位为1就是负数；二选一；

//assign a_comp=a[7]?{a[7],~a[6:0]+1}:a;




endmodule
