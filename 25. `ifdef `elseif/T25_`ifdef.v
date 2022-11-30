module T25_ifdef (
    input clk, d,

    `ifdef INCLUDE_RSTN
    input rstn,
    `endif

    output reg q);

    always @(posedge clk) begin
        `ifdef INCLUDE_RSTN
        if(!rstn) begin
            q <= 0;
        end else
        `endif
        begin
            q <= d;
        end
    end
endmodule

module T25_Tb_ifdef;

    reg clk, d, rstn;
    wire q;
    reg [3:0] delay;

    T25_ifdef tb(.clk(clk), .d(d),
    `ifdef INCLUDE_RSTN
    .rstn(rstn),
    `endif
    .q(q));

    always #10 clk = ~clk;

    integer i;
    initial begin
        

        {d, rstn, clk} <= 0;

        #20 rstn <= 1;

        for (i = 0; i < 20; i = i + 1) begin
            delay = $random;
        end

        #20;
    end
endmodule