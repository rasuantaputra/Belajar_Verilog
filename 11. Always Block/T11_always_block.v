/*
An "always" block is one of the "procedural"  
blocks in Verilog. Statements inside an always block are executed sequentially.

The "always"  block is executed at some particular event. 
The event is defined by a sensitivity list.
*/

/*
WHAT IS SENSITIVITY LIST ?
A "sensitivity" list is the expression that defines 
when the always block should be executed and is specified after the "@"  operator within parentheses "()". 
This list may contain either one or a group of signals whose value change will execute the always block.
*/


module T11_always_block;

    // di ekseku ketika nilai a atau b berubah
    always @(a or b) begin
        
    end





endmodule