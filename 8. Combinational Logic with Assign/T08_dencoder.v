// 4x16 decoder

module T08_dencode (
    input [3:0] masukan,
    input selector,
    output [15:0] keluaran);

    assign keluaran = selector ? 1 << masukan : 0;    
endmodule