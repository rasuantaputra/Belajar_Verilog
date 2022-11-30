// 4x16 decoder

module T12_decoder_with_always (
    input [3:0] masukan, 
    input selector,
    output reg [15:0] keluaran);

    always @(masukan or selector) begin
        keluaran = masukan ? 1 << selector : 0;
    end    
endmodule

module T12_Tb_dencoder;

    reg [3:0] masukan;
    reg selector;
    wire keluaran;

    integer i;

    T12_decoder_with_always dencoder(.masukan(masukan), .selector(selector), .keluaran(keluaran));

    initial begin

        {masukan, selector} <= 0;

        $monitor("masukan :%0b selector :0x%0h keluaran :0x%0h",
        masukan, selector, keluaran);

        for (i = 0; i < 32 ; i = i +1) begin
            {masukan, selector} = i;
            #10;            
        end
    end    
endmodule