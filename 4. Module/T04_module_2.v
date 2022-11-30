/*
A module represents a design unit that implements certain behavioral 
characteristics and will get converted into a digital circuit during synthesis.
Any combination of inputs can be given to the module and it will provide a corresponding output. 
This allows the same "module"  to be reused to form bigger modules that implement more complex hardware.
*/

/*
example of shift_register DFF
*/

module T04_module_2 (
    input d,
    input clk,
    input rstn,
    output q);

    wire [2:0] q_net;

    dff u0(.d(d), .clk(clk), .rstn(rstn), .q(q_net[0]));
    dff u1(.d(q_net[0]), .clk(clk), .rstn(rstn), .q(q_net[1]));
    dff u2(.d(q_net[1]), .clk(clk), .rstn(rstn), .q(q_net[2]));
    dff u3(.d(q_net[2]), .clk(clk), .rstn(rstn), .q(q));

    
endmodule