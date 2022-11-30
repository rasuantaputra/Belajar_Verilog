module T08_half_adder (
    input a, b,
    output cout, sum);

    assign cout = (a & b);
    assign sum = (a ^ b);
    
endmodule