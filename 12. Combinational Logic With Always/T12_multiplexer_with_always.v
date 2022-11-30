module T12_multiplexer_with_always (
    input a, b, selector,
    output reg c);

    always @(a or b or selector) begin
        c = selector ? a : b;
    end
endmodule

module T12_Tb_multiplexer_with_always;

    reg a, b, selector;
    wire c;
    integer i;

    T12_multiplexer_with_always Tb (.a(a), .b(b), .selector(selector), .c(c));

    initial begin

        {a, b, selector} <= 0;

        $monitor("a :%0b b :%0b selector :%0b c :%0b", a, b, selector, c);

        for (i = 0; i <= 8; i = i + 1) begin
            {a, b, selector} = i;
            #10;            
        end
    end    
endmodule