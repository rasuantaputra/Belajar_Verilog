module T13_jk_flip_flop (
    input j, 
    input k, 
    input rstn, // active-low async reset
    input clk,
    output reg q);

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            q <= 0;
        end else begin
            q <= (j & ~q) | (~k & q);
        end
    end    
endmodule

module T13_Tb_jk_flip_flop;

    reg j, k, rstn, clk;
    wire q;

    integer i;

    reg [2:0] delay;

    // start clock
    always #10 clk = ~clk;

    T13_jk_flip_flop tb(.j(j), .k(k), .rstn(rstn), .clk(clk), .q(q));

    initial begin

        {j, k, rstn, clk} <= 0;
        #10 rstn <= 1;

        for (i = 0; i < 10; i = i + 1) begin
            delay = $random;

            #(delay) j <= $random;
            #(delay) k <= $random;

            $monitor(" j :%0d k :%0d", j, k);
        end

        #20; $finish;
    end
    
endmodule