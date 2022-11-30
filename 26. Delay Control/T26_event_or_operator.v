module T26_event_or_operator;

    reg a, b;
    
    // use "or" between events
    always @(posedge a or posedge b)
    $display("T=%0t posedge of a or b found", $time, a, b);

    // use a comma(,) between
    always @(posedge a, negedge b)
    $display("T=%0t posedge of a or negedge of b found", $time, a, b);

    always @(a, b)
    $display("T=%0t Any change on a or b", $time, a, b);

    initial begin

        $monitor("t = %0t a = %0d b = %0d", $time, a, b);
        {a, b} <= 0;

        #10 a <= 1;
        #5  b <= 1;
        #5  b <= 0;
    end    
endmodule