module T28_nand_nor_xnor_gates(input a, b,
                            output c, d, e);

    nand(c, a, b); // c is an output, a and b are inputs
    nor(d, a, b); // d is an output, a and b are inputs
    xnor(e, a, b); // e is an output, a and b are inputs
    
endmodule

module T28_Tb_nand_nor_xnor_gates
    reg a, b;
    wire c, d, e;

    integer i;

    gates u0 (.a(a), .b(b), .c(c), .d(d), .e(e));

    initial begin
        {a, b} <= 0;

        $monitor("T=%0t a=%0b b=%0b c(and)=%0b d(or)=%0b e(xor)=%0b", $time, a, b, c, d, e);

        for (i = 0; i < 10; i = i + 1) begin
            #1 a <= $random;
               b <= $random;
        end
    end    
endmodule