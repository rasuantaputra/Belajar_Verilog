module T08_Tb_multiplexer;

    reg a, b, selector;
    wire c;
    integer i;

    T08_multiplexer multiplexer (.a(a), .b(b), .selector(selector), .c(c));

    initial begin
        a <= 0;
        b <= 0;
        selector <= 0;

        $monitor("a :%0b b :%0b selector :%0b c :%0b", a, b, selector, c);

        for (i = 0; i <= 8; i = i + 1) begin
            {a, b, selector} = i;
            #10;            
        end
    end    
endmodule