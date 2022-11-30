module T26_level_sensitive_event_control;

    reg [3:0] ctr;
    reg clk;

    always #10 clk = ~clk;
    
    always @(posedge clk ) begin
        ctr <= ctr + 1;        
    end
    
    initial begin
        {ctr, clk} <= 0;
        
        // The wait statement shall evaluate a condition and if it is false, the procedural statements following it shall remain blocked until the condition becomes true.
        wait(ctr)
        $display("T=%0t Counter reached non-zero value 0x%0h", $time, ctr);

        wait(ctr == 4)
        $display("T=%0t Counter reached 0x%0h", $time, ctr);

        // $finish;    
    end    
endmodule