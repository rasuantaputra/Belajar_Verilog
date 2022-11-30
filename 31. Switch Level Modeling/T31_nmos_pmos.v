// Verilog also provides support for transistor level modeling although it is rarely used by designers these days as the complexity of circuits have required them to move to higher levels of abstractions rather than use switch level modeling.

module T31_nmos_pmos (
    input d, ctrl,
    output outn, outp);

    nmos(outn, d, ctrl);
    
endmodule

module T31_Tb_nmos_pmos;

    reg d, ctrl;
    wire outn, outp;

    trans_lvl d0 (.d(d), .ctrl(ctrl), .outn(outn), .outp(outp));

    initial begin
        {d, ctrl} <= 0;

        $monitor("T=%0t d=%0b ctrl=%0b outn=%0b outp=%0b", $time, d, ctrl, outn, outp);

        #10 d <= 1;
        #10 ctrl <= 1;
        #10 ctrl <= 0;
        #10 d <= 0;
    end
endmodule