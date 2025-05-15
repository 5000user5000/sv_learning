module top_module();
    intput[1:0] in;
    output out;
	initial begin
        in = 2'b0;
        #10 in[0] = 1;
        #10 in = ~in;
        #10 in[0] = 1;
    end
    andgate( .in(in) , .out(out) );
endmodule