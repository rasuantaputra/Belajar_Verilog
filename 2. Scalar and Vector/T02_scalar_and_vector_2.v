module T02_scalar_and_vector_2 ();

    reg [31:0] data;
    integer i;

    initial begin
        data = 32'hface_cafe;
        for (i = 0; i < 4 ; i = i + 1) begin
            $display("data[8*%0d +: 8] = ", i, data[8*i +: 8]);            
        end

        $display("data[7:0] = ", data[7:0]);
        $display("data[15:8] = ", data[15:8]);
        $display("data[23:16] = ", data[23:16]);
        $display("data[31:24] = ", data[31:24]);

    end
    
endmodule