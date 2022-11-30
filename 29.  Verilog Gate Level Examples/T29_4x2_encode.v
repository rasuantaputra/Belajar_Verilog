module T29_4x2_encode (
    input a, b, c, d,
    output x, y);

    or(x, b, d);
    or(y, c, d);
    
endmodule