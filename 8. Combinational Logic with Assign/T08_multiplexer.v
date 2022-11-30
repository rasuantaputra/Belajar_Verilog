module T08_multiplexer (
    input a, b, selector,
    output c);

    assign c = selector ? a : b; 
endmodule