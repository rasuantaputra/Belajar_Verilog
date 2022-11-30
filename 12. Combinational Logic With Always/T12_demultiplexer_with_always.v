module T12_demultiplexer_with_always (
    input f,
    input [1:0] selector,
    output reg a, b, c, d);
    
    always @(f or selector) begin
        a = ((f & ~selector[1]) & ~selector[0]);
        b = ((f & selector[1]) & ~selector[0]);
        c = ((f & ~selector[1]) & selector[0]);
        d = (( f & selector[1]) & selector[0]);
    end
endmodule

module T12_Tb_demultiplexer_with_always;

    reg f;
    reg [1:0] selector;
    wire a, b, c, d;
    integer i;
    T12_demultiplexer_with_always demux(.f(f), .selector(selector), .a(a), .b(b), .c(c), .d(d));

    initial begin
        

        {f, selector} <= 0;

        $monitor("f :%0b selector :%0b a :%0b b :%0b c :%0b d :%0b", 
        f, selector, a, b, c, d);

        for (i = 0; i <= 7 ; i = i + 1) begin
            {f, selector} = i;
            #10;
        end
    end
endmodule