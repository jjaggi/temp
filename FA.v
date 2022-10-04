module fullAdder(x,y,a,b,c);
	output x,y;
	input a,b,c;
	assign x= ~a&~b&c | ~a&b&~c | a&~b&~c | a&b&c;
	assign y=a&b | b&c | c&a;
endmodule

module impand;
	reg a,b,c;
	wire x,y;
	fullAdder o(x,y,a,b,c);
	initial begin
		a=1'b0;b=1'b0;c=1'b0;
		#10
		a=1'b0;b=1'b0;c=1'b1;
		#10
		a=1'b0;b=1'b1;c=1'b0;
		#10
		a=1'b0;b=1'b1;c=1'b1;
		#10

		a=1'b1;b=1'b0;c=1'b0;
		#10
		a=1'b1;b=1'b0;c=1'b1;
		#10
		a=1'b1;b=1'b1;c=1'b0;
		#10
		a=1'b1;b=1'b1;c=1'b1;
	$finish;
	end

	initial begin 
	$monitor("a=%d,b=%d,Cin=%d,S=%d,Cout=%d\n",a,b,c,x,y);
	end 
endmodule
	  