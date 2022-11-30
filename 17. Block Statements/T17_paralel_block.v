module T17_paralel_block;

    reg[31:0] data;

    initial begin : blok_pertama // ini conoth cara namain block
        #10 data = 8'hfe;
        $display("[Time :%0t] data : %0b", $time, data);

        fork : ini_percabangan_block // ini conoth cara namain block
            #20 data = 8'h11;
            $display("[Time :%0t] data : %0b", $time, data);
            #10 data = 8'h00;
            $display("[Time :%0t] data : %0b", $time, data);
        join
    end
endmodule