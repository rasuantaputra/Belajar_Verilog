module T34_event_queque;

    reg x, y, z;

    initial begin
        #1 x = 1;
           y = 1;
        #1 z = 0;
    end    
endmodule