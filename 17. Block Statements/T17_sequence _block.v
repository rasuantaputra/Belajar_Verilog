module T17_sequence_block;

    reg[31:0] data;

    // "initial" block start at 0
    initial begin
        // after 10 units, data becomes 0xfe
        #10 data = 8'hfe;
        $display("[Time :%0t] data : %0b", $time, data);

        // after 20 units, data becomes 0x11
        #20 data = 8'h11;
        $display("[Time :%0t] data : %0b", $time, data);
    end
endmodule