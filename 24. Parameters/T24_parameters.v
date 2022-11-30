// A constant expression refers to a constant number or previously defined parameter. We cannot modify parameter values at runtime, but we can modify a parameter value using the defparam statement.

// style-1
module T24_parameters (
    input a,
    inout b,
    output c);

    parameter bus_width = 32, data_width = 64, fifo_depth = 512;

    
endmodule

// style-2
// In the new ANSI style of Verilog port declaration, you may declare parameters as show below.
module design2 #(
    parameter bus_width = 32,
    parameter dta_witdh = 8) 
    (
    input a,
    inout b,
    output c);
    
endmodule