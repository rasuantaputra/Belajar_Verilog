/*
One method of making the connection between the port expressions 
listed in a module instantiation with the signals inside the parent module is by the ordered list
*/

module T06_port_connection_by_ordered_list (
    input x, y, z, // x is at position 1 , y at 2, z at 3
    output out);   // out at 4
    
endmodule

module testBench_top;

    wire [1:0] a;
    wire b, c;

    //  instantiated with the name "d0"
    T06_port_connection_by_ordered_list d0(
        a[0],   // a[0] is at position 1 so it is automatically connected to x
        b,      // b is at position 2 so it is automatically connected to y
        a[1],   // a[1] is at position 3 so it is connected to z 
        c);     // c is at position 4, and hence connection is with oout
    
endmodule

/*
Order of ports in the design 
module should be known for a correct connection.
*/

/*
This is very inconvenient because the order might change 
if a new port is added to the list or when the number of ports 
in the design is very large.
*/