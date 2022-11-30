// hasilnya akan sama saja ?

module T11_combinational_element_alwaysBlock (
    input a, b, c, d,
    output reg o);

    always @(a or b or c or d) begin
        o <= ~((a & b) | (c ^ d));
    end
    
endmodule

module T11_combinational_element(
    input a, b, c, d,
    output o);

    assign o = ~((a & b) | (c ^ d));
    
endmodule
 
module Tb_T11_combinational_element_alwaysBlock;

    reg a, b, c, d;
    wire o;

    integer i;

    T11_combinational_element_alwaysBlock Tb(.a(a), .b(b), .c(c), .d(d), .o(o));

    initial begin
        a <= 0;
        b <= 0;
        c <= 0;
        d <= 0;

        $monitor("a :%0b b :%0b c :%0b d :%0b o :%0b", a, b, c, d, o);

        for (i = 0; i < 16; i = i +1) begin
            {a, b, c, d} = i;
            #10;
        end
    end
endmodule


module Tb_T11_combinational_element;

    reg a, b, c, d;
    wire o;

    integer i;

    T11_combinational_element Tb(.a(a), .b(b), .c(c), .d(d), .o(o));

    initial begin
        a <= 0;
        b <= 0;
        c <= 0;
        d <= 0;

        $monitor("a :%0b b :%0b c :%0b d :%0b o :%0b", a, b, c, d, o);

        for (i = 0; i < 16; i = i +1) begin
            {a, b, c, d} = i;
            #10;
        end
    end    
endmodule
