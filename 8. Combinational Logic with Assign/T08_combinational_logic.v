module T08_combinational_logic (
    input a, b, c, d, e,
    output z);

    assign z = (a & b | (c ^ d) & ~e);
    
endmodule