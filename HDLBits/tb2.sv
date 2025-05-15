module top_module();
    reg clk,in;
    reg [2:0] s;
    wire out;
	
    q7 uut(
        .clk(clk),
        .in(in),
        .s(s),
        .out(out)
    );
    
    initial begin
    	clk = 0;
        in = 0;
        s = 3'b010;
        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #30 in = 0;
    end

    always #5 clk = ~clk; 

    initial begin
        #10 s = 3'b110;
        #10 s = 3'b010;
        #10 s = 3'b111;
        #10 s = 3'b000;
    end

endmodule