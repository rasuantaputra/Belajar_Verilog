// The sensitivity list or the event expression list is often a common cause for a lot of functional errors in the RTL. This is because the user may forget to update the sensitivity list after introducing a new signal in the procedural block.

/* 
If the user decides to add new signal "e"
and capture the inverse into "z",
special care must be taken to add "e"
also into the sensitivity list.
*/

/* 
Verilog now allows the sensitivity list to be replaced by "*"
which is a convenient shorthand that eliminates these problems by adding all nets and variables that are read by the statemnt like shown below.
*/

module T26_implicit_event_expression_list;

    reg a, b, c, d, e;
    reg x, y, z;

    // use @* or @(*)
    always @* begin
        x = a | b;
        y = c ^ d;
        z = ~e;
    end

    initial begin
        $monitor("T=%0t a=%0b b=%0b c=%0b d=%0b e=%0b x=%0b y=%0b z=%0b", $time, a, b, c, d, e, x, y, z);

        {a, b, c, d, x, y, z} <= 0;

        #10 {a, b, c, d, e} <= $random;
        #10 {a, b, c, d, e} <= $random;
        #10 {a, b, c, d, e} <= $random;
    end    
endmodule