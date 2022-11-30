/*
The dot "."
indicates that the port name following the dot belongs to the design. \
The signal name to which the design port has to be connected is given next within parentheses 
*/

module T06_port_connection_by_name (
    input x, y, z, // x is at position 1 , y at 2, z at 3
    output out);   // out at 4
    
endmodule

module tb;

    wire [1:0] a;
    wire b, c;

    //  instantiated with the name "d0"
    T07_port_connection_by_name d0(
        .x(a[0]),   // signal "x" should be connected to "a[0]" in this module (tb)
        .y(b),      // signal "y" should be connected to "b" in this module (tb)
        .z(a[1]),
        // x(b) => illegal - x is already connected to a[0]
        .out(c));
endmodule

/*
It is recommended to code each port connection in a separate line so that any compilation error message will correctly point to the line number where the error occured. 
This is much easier to debug and resolve compared to not knowing which port created the error had they been all in the same line.
*/
/*
Because these connections are made by name, the order in which they appear is irrelevant. 
Multiple module instance port connections are not allowed.
*/