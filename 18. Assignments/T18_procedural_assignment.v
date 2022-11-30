// Procedural assignments occur within procedures such as initial, always, task, and functions are used to place values onto variables.
// The value will be placed onto the variable when the simulation executes this statement during simulation time. This can be modified and controlled the way we want by using control flow statements such as if-else-if, looping, and case statement mechanisms.

module T18_procedural_assignment;

    reg [31:0] data;
    integer cout;
    real period;

    initial begin
        data = 8'h3e;
        period = 4.23;
        count = 0;
    end

    always @(posedge clk) begin
        count = count + 1;
    end
    
endmodule