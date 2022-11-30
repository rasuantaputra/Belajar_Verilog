module T08_demultiplexer (
    input f,
    input [1:0] selector,
    output a, b, c, d);
    
    assign a = ( (f & ~selector[1]) & ~selector[0] );
    assign b = ( (f & selector[1]) & ~selector[0] );
    assign c = ( (f & ~selector[1]) & selector[0] );
    assign d = ( ( f & selector[1]) & selector[0] );
endmodule