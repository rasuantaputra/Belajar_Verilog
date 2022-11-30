module T16_pattern_detector (
    input clk, rstn, in,
    output out);

    parameter IDLE = 0,
        s1 = 1,
        s11 = 2,
        s110 = 3,
        s1101 = 4,
        s11010 = 5,
        s110101 = 6;

        reg [2:0] current_state, next_state;

        assign out = current_state ? 1 : 0;

        always @(posedge clk ) begin
            if (!rstn) begin
                current_state <= IDLE;
            end else begin
                current_state <= next_state;
            end
        end
        
        always @(current_state or in) begin
            case (current_state)
                IDLE : begin
                    if (in) begin
                        next_state = s1;
                    end else begin
                        next_state = IDLE;
                    end
                end
                s1 : begin
                    if (in) begin
                        next_state = s11;
                    end else begin
                        next_state = IDLE;
                    end
                end
                s11 : begin
                    if (in) begin
                        next_state = s110;
                    end else begin
                        next_state = s11;
                    end
                end
                s110 : begin
                    if (in) begin
                        next_state = s1101;
                    end else begin
                        next_state = IDLE;
                    end
                end
                s1101 : begin
                    if (in) begin
                        next_state = s11010;
                    end else begin
                        next_state = IDLE;
                    end
                end
                s11010 : begin
                    if (in) begin
                        next_state = s110101;
                    end else begin
                        next_state = IDLE;
                    end
                end
                s110101 : begin
                    if (in) begin
                        next_state = s1;
                    end else begin
                        next_state = IDLE;
                    end
                end
            endcase
        end
endmodule

module T16_Tb_pattern_detector;

    reg clk, in, rstn;
    wire out;

    integer l_dly;

    always #10 clk = ~clk;

    T16_pattern_detector tb(.clk(clk), .rstn(rstn), .in(in), .out(out));

    initial begin

        clk <= 0;
        rstn <= 0;
        in <= 0;

        $monitor("T :%0t in :%0b out :%0b", $time, in, out);

        repeat (5) @(posedge clk);
        rstn <= 1;

        // generate direct patern
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 1;        
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;
        @(posedge clk) in <= 0;
        @(posedge clk) in <= 1;

        #100;
    end    
endmodule