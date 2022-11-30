/*
The signed  attribute can be attached to a port declaration or a net/reg declaration or both. 
Implicit nets are by default "Unsigned"
*/

module T05_signed_port (
    // x, y are signed from port declaration
    input signed a, b,
    output c);

    wire a, b; // a, b are signed from port declaration
    reg signed c; // c is signed from reg declaration
 
    
endmodule