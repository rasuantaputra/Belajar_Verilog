// cara nulisnya => "time_unit" / "time_precision" 
// aturan penulisan "time_unit" > "time_precision" atau "time_unit" = "time_precision"
// untuk magnitude hanya boleh 3 angka yaitu 1, 10, 100
// untuk satuan ada 6 yaitu s, ms, us, ns, ps, fs
`timescale 1ns/1ps



module T26_delay_control;

    reg [3:0] a, b;

    initial begin

        {a, b} <= 0;
        $display(" T = %0t a = %0d b = %0b", $realtime, a, b);

        // 10 * 1ns(time_unit) = x
        // x akan di round ke nilai terdekat dari 1ps
        // 10 * 1ns  = 10ns --> 10000ps di dekatkan yg terdekat dg 1ps () (blm paham)
        #10;
        a <= $random;
        $display("T = %0t a = %0d b = %0b", $realtime, a, b);

        #10;
        b <= $random;
        $display("T = %0t a = %0d b = %0b", $realtime, a, b);

        #(a) $display("T=%0t After a delay of a=%0d units", $realtime, a);
        #(a+b) $display("T=%0t After a delay of a=%0d + b=%0d = %0d units", $realtime, a, b, a+b);
        #((a+b)*(10)) $display("T=%0t After a delay of %0d * 10ps", $realtime, a+b);
        
        #(b-a) $display("T=%0t Expr evaluates to a negative delay", $realtime);
        #('h10) $display("T=%0t Delay in hex", $realtime);

        a = 'hx;
        #(a) $display("T=%0t Delay is unknown, taken as zero a=%h", $realtime, a);

        a = 'hz;
        #(a) $display("T=%0t Delay is in high impedance, taken as zero a=%h", $realtime, a);

        #1 $display("T=%0t Delay of 10ps", $realtime);

        

    end    
endmodule