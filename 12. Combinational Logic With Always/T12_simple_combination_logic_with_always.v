module T12_simple_combination_logic_with_always (
    input a, b, c, d, e,
    output reg z);
    
    always @(a or b or c or d or e) begin
        z = ((a & b) | ((c^d) & ~e));
    end

endmodule

module T12_Tb_simple_combination_logic;

    reg a, b, c, d, e;
    wire z;

    integer i;

    T12_simple_combination_logic_with_always Tb(.a(a), .b(b), .c(c), .d(d), .e(e), .z(z));

    initial begin
        
        {a, b, c, d, e} <= 0;

        $monitor("a :%0b b :%0b c :%0b d :%0b e :%0b z :%0b", a, b, c, d, e, z);
                    
        for (i = 0; i < 32; i = i + 1) begin
            {a, b, c, d, e} = i;
            #10;
        end
    end
    
endmodule