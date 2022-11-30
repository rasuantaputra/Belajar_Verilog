/*
there are 2 types procedural block in verilog :
    a. initial
    b. always
*/

module T11_combinational_element_design (
    input a, b, c, d,
    // output signal is declared as type "reg" in the module port list because it is used in procedural block
    // all signal in procedural block should be declared as "reg"
    output reg o);
    
    always @(a or b or c or d) begin
        o <= ~((a & b) | (c ^ d));
    end
endmodule