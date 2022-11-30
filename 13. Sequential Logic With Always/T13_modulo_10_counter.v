module T13_modulo_10_counter (
    input clk, rstn,
    output reg [3:0] out);

    always @(posedge clk) begin
        // reset nya
        if (!rstn) begin
            out <= 0;
        end 
        else begin
            // counter nya
            if (out == 10) begin
                out <= 0;
            end else begin
                    out <= out + 1;
                end
            end
    end    
endmodule

module T13_Tb_modulo_10_counter;

    reg clk, rstn;
    wire [3:0] out;

    T13_modulo_10_counter tb (.clk(clk), .rstn(rstn), .out(out));

    always #10 clk = ~clk;

    initial begin
        {clk, rstn} <= 0;

        #10 rstn <= 1;
        // #450 $finish;
    end
endmodule