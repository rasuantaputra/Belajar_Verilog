module T08_Tb_dencoder;

    reg [3:0] masukan;
    reg selector;
    wire keluaran;

    integer i;

    T08_dencode dencoder(.masukan(masukan), .selector(selector), .keluaran(keluaran));

    initial begin
        masukan <= 0;
        selector <= 0;

        $monitor("masukan :%0b selector :%0b keluaran :%0b",
        masukan, selector, keluaran);

        for (i = 0; i < 32 ; i = i +1) begin
            {masukan, selector} = i;
            #10;            
        end
    end    
endmodule