module top_module();

    // variables declaration
    reg clk,in;
    reg [2:0] s;
    wire out;

	// Instantiate the DUT
    // DUT: q7
    q7 uut(
        .clk(clk),
        .in(in),
        .s(s),
        .out(out)
    );

    // Clock: 10-unit period
    initial clk = 0;
    always #5 clk = ~clk;
    
    // Input stimulus for in
    initial begin
        in = 0;
        #20 in = 1;
        #10 in = 0;
        #10 in = 1;
        #30 in = 0;
    end

    // Stimulus for s
    initial begin
        s = 3'b010;
        #10 s = 3'b110;
        #10 s = 3'b010;
        #10 s = 3'b111;
        #10 s = 3'b000;
    end

endmodule