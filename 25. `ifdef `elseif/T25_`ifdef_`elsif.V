module T25_ifdef_elsif;

    initial begin
        `ifdef MACRO1
            $display("this is MACRO 1");
        `elsif MACRO2
            $display("this is MACRO 2");
        `endif
    end    
endmodule