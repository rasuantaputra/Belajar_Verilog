module T15_sequence_detector (
    input clk, rstn, in,
    output out);

    parameter IDLE  = 0,
            s1      = 1,
            s10     = 2,
            s101    = 3,
            s1011   = 4;

    reg [2:0] current_state, next_state;

    assign out = current_state ? 1 : 0;

    // reset
    always @(posedge clk ) begin
        if (!rstn) begin
            current_state <= IDLE;
        end else begin
            current_state <= next_state;
        end
    end

    always @(posedge clk or in) begin
        case (current_state)
            IDLE : begin
                if(in) next_state = s1;
                else next_state = IDLE;
            end

            s1 : begin
                if(in) next_state = IDLE;
                else next_state = s10;
            end

            s10 : begin
                if(in) next_state = s101;
                else next_state = IDLE;
            end

            s101 : begin
                if(in) next_state = s1011;
                else next_state = IDLE;
            end

            s1011 : begin
                next_state = IDLE;
            end
        endcase
    end    
endmodule

module T15_Tb_sequence_detector;

    reg clk, in, rstn;
    wire out;

    reg [1:0] l_dly;
    reg tb_in;

    integer loop = 1;
    integer i;

    always #10 clk = ~clk;

    T15_sequence_detector tb(.clk(clk), .rstn(rstn), .in(in), .out(out));

    initial begin
        clk <= 0;
        rstn <= 0;
        in <= 0;

        $monitor("T :%0t in :%0b out :%0b", $time, in, out);

        repeat (5) @(posedge clk);
        rstn <= 1;

        // generate direct patern
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1; // pattern is compelate
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;        
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1; // pattern complete again

        // Or random stimulus using a for loop that drives a random
        // value of input N times
        for (i = 0; i < loop; i = i + 1) begin
            l_dly = $random;
            repeat (l_dly) @(posedge clk);
            tb_in = $random;
            in <= tb_in;
        end

        #100;
    end    
endmodule