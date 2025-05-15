module top_module ();
    // variables declaration
    reg clk,reset,t;
    wire q;

    // Clock: 5-unit period
    initial clk = 0;
    always #5 clk = ~clk;
    
    // Input stimulus for reset and t
    initial begin
        reset = 1;
        t = 0;
        #10 
        reset = 0; 
        t = 1;
    end

    // Instantiate the DUT
    // DUT: tff (Toggle Flip-Flop)
    tff tff1 (
        .clk(clk),
        .reset(reset),
        .t(t),
        .q(q)
    );


endmodule