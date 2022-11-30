module T20_case (
    input [2:0] a, b, c,
    input [1:0] selector,
    output reg [2:0] out);

    always @(a, b, c, selector) begin
        case(selector)
            2'b00 : out = a;
            2'b01 : out = b;
            2'b10 : out = c;
            default : out = 0;
        endcase
    end
endmodule