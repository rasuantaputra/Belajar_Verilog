module T31_power_and_ground (
    output vdd,
    output gnd);

    supply1 _vdd;
    supply0 _gnd;

    assign vdd = _vdd;
    assign gnd = _gnd;    
endmodule

module T31_Tb_power_and_ground;

    wire vdd, gnd;
    
    power_n_groud u0(.vdd(vdd), .gnd(gnd));

    initial begin
        #10;
        $display("T=%0t vdd=%0d gnd=%0d", $time, vdd, gnd);
    end    
endmodule