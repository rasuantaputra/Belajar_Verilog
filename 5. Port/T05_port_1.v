module T05_port_1 (
    input wire clk,
    input input_data,
    // The "signed"  attribute can be attached to a port declaration or a net/reg declaration or both. Implicit nets are by default 
    input signed signed_input,

    inout [15:0] data,
    output out_data);
    
    reg signed a;



endmodule