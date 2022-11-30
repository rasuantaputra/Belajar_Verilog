module T08_full_adder (
    input a, b, cin,
    output cout, sum);

    assign cout = (a & b | ( (a ^ b) & cin));
    assign sum = (( a ^ b ) ^ cin);
endmodule