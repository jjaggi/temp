module subtractor(x, y, D, B);
	input x, y;
	output D, B;
	assign D = x^y;
	assign B = ~x&y;
endmodule

module sinand;
	reg x, y;
	wire D, B;
	subtractor obj(x, y, D, B);
	
	initial begin
		x=1'b0; y=1'b0;	
		#10
		x=1'b0; y=1'b1;	
		#10
		x=1'b1; y=1'b0;	
		#10
		x=1'b1; y=1'b1;	
		#10		
	$finish;
	end

	initial begin
		$monitor("X=%b, Y=%d, Difference=%d, Borrow=%d",x, y, D, B);
	end
endmodule
