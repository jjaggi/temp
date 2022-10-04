module my_half_adder(s,c,a,b);
	input a,b;
	output s,c;
	assign s=a^b;
	assign c=a&b;
endmodule		


module impand;
	reg a,b;
	wire s,c;

	my_half_adder o(s,c,a,b);
	initial begin
		a = 1'b0; b= 1'b0; //00
		#10
		a = 1'b0; b= 1'b1; //01
		#10
		a = 1'b1; b= 1'b0; //10
		#10
		a = 1'b1; b= 1'b1; //11
		#10
	$finish;
	end

	initial begin
		$monitor("a=%d, b=%d, S=%d,C=%d",a,b,s,c);
	end
endmodule