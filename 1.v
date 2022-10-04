module mycombine(x_or,x_and,x_xor,x_not,x_xnor,x_nand,x_nor,a,b);
	output x_or,x_xor,x_and,x_nand,x_xnor,x_nor,x_not;
	input a,b;
	assign x_and = (a & b);
	assign x_or = (a | b);
	assign x_xor = (a ^ b);
	assign x_not = (!a);
	assign x_nor = (a ~| b);
	assign x_xnor = (a ~^ b);
	assign x_nand = (a ~& b);
endmodule		


module impand;
	reg a,b;
	wire y_or,y_xor,y_and,y_not,y_xnor,y_nand,y_nor;

	mycombine o(y_or,y_and,y_xor,y_not,y_xnor,y_nand,y_nor,a,b);
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
		$monitor("a=%d, b=%d, y_or=%d, y_xor=%d, y_and=%d, y_not=%d, y_xnor=%d, y_nand=%d, y_nor=%d \n",a,b,y_or,y_xor,y_and,y_not,y_xnor,y_nand,y_nor);
	end
endmodule