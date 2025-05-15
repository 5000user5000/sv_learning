module top_module ( );
	reg clk;

    // initial clock signal
    initial clk = 0;

    // generate clock signal with a period of 10 time units
    always #5 clk = ~clk;
    
    // instantiate the DUT
    dut my_dut ( .clk(clk) );
endmodule
