module top_module();
    reg[1:0] in;
    wire out;

    // Instantiate the AND gate
    andgate uut (
        .in(in),
        .out(out)
    );


	initial begin
        in = 2'b0;
        #10 in[0] = 1;
        #10 in = ~in;
        #10 in[0] = 1;
    end
    
endmodule