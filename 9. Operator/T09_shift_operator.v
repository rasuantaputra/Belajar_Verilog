module T09_shift_operator;
    reg [7:0] data;
    integer i;

    initial begin
        data = 8'h1;
        $display("Original data = 'd%0d or 'b%0b : ", data, data);
        for (i = 0; i < 8; i = i + 1) begin
            $display("data << %0d = 'b%b : ", i, data << i);
            
        end

        data = 8'h80;
        $display("Original data = 'd%0d or 'b%0b : ", data, data);
        for (i = 0; i < 8; i = i + 1) begin
            $display("data >> %0d = 'b%b : ", i, data >> i);
            
        end

        data = 8'h1;
        $display("data >> 1 = 'b%b", data >> 1);

    end
endmodule