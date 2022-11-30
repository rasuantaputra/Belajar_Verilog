module T10_illegal_usage;

    reg [1:0] a;
    reg [2:0] b;
    reg [3:0] _var;

    initial begin
        a <= 2;
        b <= 4;
        _var <= 3;

        // This is illegal because variables cannot be used
        // as replication constant
        $display("a :%b b :%b res :%b", a, b, {_var{a}});
    end    
endmodule