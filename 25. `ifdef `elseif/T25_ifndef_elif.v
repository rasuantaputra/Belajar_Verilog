module T25_ifndef_elsif;

    initial begin
        `ifndef MACRO1
            $display("this is MACRO 1");
        `elsif MACRO2
            $display("this is MACRO 2");
        `endif
    end    
endmodule