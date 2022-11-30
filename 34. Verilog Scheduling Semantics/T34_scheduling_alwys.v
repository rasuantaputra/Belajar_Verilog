module T34_scheduling_alwys;

    reg a, b, c;
    wire d;

    // 'always' is a process that gets evaluated when either 'a' or 'b' is updated.
    // When 'a' or 'b' changes in value it is called an 'update event'. When 'always'
    // block is triggered because of a change in 'a' or 'b' it is called an evaluation
    // event

    always @(a or b) begin
        c = a & b;
    end

    // Here 'assign' is a process which is evaluated when either 'a' or 'b' or 'c'
    // gets updated

    assign d = a | b ^ c;    
endmodule