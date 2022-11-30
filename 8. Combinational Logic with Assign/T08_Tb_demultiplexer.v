module T08_Tb_demultiplexer;

    reg f;
    reg [1:0] selector;
    wire a, b, c, d;
    integer i;
    T08_demultiplexer demux(.f(f), .selector(selector), .a(a), .b(b), .c(c), .d(d));

    initial begin
        
        f <= 0;
        selector <= 0;

        $monitor("f :%0b selector :%0b a :%0b b :%0b c :%0b d :%0b", 
        f, selector, a, b, c, d);

        for (i = 0; i <= 7 ; i = i + 1) begin
            {f, selector} = i;
            #10;
        end
    end
endmodule