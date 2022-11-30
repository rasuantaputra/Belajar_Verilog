module T19_non_blocking_assignment;

    reg [7:0] a, b, c, d, e;

    initial begin
        a <= 8'hDA;
        $display ("[%0t] a=%0d b=%0d c=%0d", $time, a, b, c);

        b <= 8'hF1;
        $display ("[%0t] a=%0d b=%0d c=%0d", $time, a, b, c);

        c <= 8'h30;
        $display ("[%0t] a=%0d b=%0d c=%0d", $time, a, b, c);
    end

    initial begin  
        d <= 8'hAA;
        $display ("[%0t] d=%0d e=%0d", $time, d, e);

        e <= 8'h55;
        $display ("[%0t] d=%0d e=%0d", $time, d, e);
    end 
    
endmodule