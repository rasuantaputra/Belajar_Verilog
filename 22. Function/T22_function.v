module T22_function;
    reg [7:0] result;
    reg [7:0] a, b;

    // function style-1 automatically have return
    function [7:0] sum1;    
        input [7:0] a, b;
        begin
            sum1 = a + b;
        end        
    endfunction

    // function style-2 automatically have return
    function [7:0] sum2 (input [7:0] a, b);
        begin
            sum2 = a + b;
        end        
    endfunction

    initial begin
        a = 4;
        b = 2;

        // first way to calling function
        result = sum1(a, b);
        $display(result);
        result = sum1(3, 2);
        $display(result);

        // second way to calling function
        result = sum2(b, a);
        $display(result);
        result = sum2(3, 2);
        $display(result);
    end    
endmodule

/*
The following are some of the general rules for the Verilog functions:

    - A function cannot contain any time-controlled statements such as #, @, wait, posedge, and negedge.
    - A function cannot start a task because it may consume simulation time but can call other functions.
    - A function should have atleast one input argument.
    - A function cannot have non-blocking assignments or force-release or assign-deassign.
    - A function cannot have any triggers.
    - A function cannot have an inout or output declaration.
Functions must contain a statement that assigns the return value to the implicit function name register.
*/