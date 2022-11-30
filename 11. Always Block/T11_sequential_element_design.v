/*
AT THE POSITIVE EDGE OF CLK :
    1. First "if" block checks value of active-low reset "rstn" :
        a. If "rstn" is zero, then output "q" should be reset to default value of 0
        b. If "rstn" is one, then it means reset is not applied and should follow default behavior

    2. If the previous step is false:
        a. Check value of "d" and if it is found to be one, then invert value of "q"
        b. If "d" is 0, then maintain value of "q"
*/      


/*
AT THE NEGATIVE EDGE OF CLK :
    1. First "if" block checks value of active-low reset "rstn". At negative edge of the signal, its value is 0.
        a. If value of "rstn" is 0, then it means reset is applied and output should be reset to default value of 0
        b. The case where value of "rstn" is 1 is not considered because the current event is negative edge of the "rstn"
*/
// =========================================================================================================================================
module T11_sequential_element_design (
    input d, clk, rstn,
    output reg q);

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            q <= 0;
        end else begin
            if (d) begin
                q <= ~q;
            end else begin
                q <= q;
            end
        end
    end    
endmodule

module Tb_T11_sequential_element_design;

    reg d, clk, rstn;
    wire q;
    integer i;

    T11_sequential_element_design Tb (.d(d), .clk(clk), .rstn(rstn), .q(q));

    initial begin
        d    <= 0;
        clk  <= 0;
        rstn <= 0;

        $monitor("d :%0d clk :%0d rstn :%0d q :%0d", d, clk, rstn, q);        

        for (i = 0; i < 4; i = i + 1) begin
            {d, rstn} = i;
            #10;
        end
    end
    always #10 clk = ~clk;
    
endmodule