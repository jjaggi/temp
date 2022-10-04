// https://qr.ae/pvb7i9
module EX3_To_BCD (w,x,y,z,a,b,c,d);
    input w,x,y,z;
    output a,b,c,d;
    wire a,b,c,d;

    assign a = (w & y & z) | (w & x);
    assign b = (x & y & z) | (~x & ~y) | (~x & ~z);
    assign c = y ^ z;
    assign d = ~z;

endmodule

module main;
    reg w,x,y,z;
    wire a,b,c,d;
    EX3_To_BCD ex(w,x,y,z,a,b,c,d);
    initial 
    begin
        $monitor("EX3 = %b%b%b%b \t BCD = %b%b%b%b",w,x,y,z,a,b,c,d);
        #0 w = 0; x = 0; y = 1; z = 1;
        #1 w = 0; x = 1; y = 0; z = 0;
        #2 w = 0; x = 1; y = 0; z = 1;
        #3 w = 0; x = 1; y = 1; z = 0;
        #4 w = 0; x = 1; y = 1; z = 1;
        #5 w = 1; x = 0; y = 0; z = 0;
        #6 w = 1; x = 0; y = 0; z = 1;
        #7 w = 1; x = 0; y = 1; z = 0;
        #8 w = 1; x = 0; y = 1; z = 1;
        #9 w = 1; x = 1; y = 0; z = 0;
    end
endmodule 