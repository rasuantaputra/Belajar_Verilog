// ??????????program error????????????
module T26_named_event;

    event a_event;
    // event b_event[5];

    initial begin
        #20 -> a_event;

        #30;
        -> b_event;

        #50 -> a_event;
        // #10 -> b_event[3];
    end

    always @(a_event) $display("T=%0t [always] a_event is triggered", $time);

    initial begin
        #25;
        @(a_event) $display("T=%0t [initial] a_event is triggered", $time);
        
        // #10 @(b_event) $display("T=%0t [initial] b_event is triggered", $time);
    end
endmodule