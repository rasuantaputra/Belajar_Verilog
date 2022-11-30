module T31_cmos_switches (
    input d, nctrl, pctrl,
    output out);

    cmos(out, d, nctrl, pctrl);    
endmodule