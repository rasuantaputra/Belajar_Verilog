module T10_nested_replication;

    reg [1:0] a;
    reg [2:0] b;

    initial begin
        a <= 2;
        b <= 4;

        #10;

        $display("a :%0b b :%0b res :%0b", a, b, {a, b, 3'b000, {{2{a}}, {3{b}}}});
    end
    
endmodule