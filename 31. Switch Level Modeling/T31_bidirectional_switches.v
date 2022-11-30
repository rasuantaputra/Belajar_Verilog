module T31_bidirectional_switches (
    input masukan, ctrl,
    output keluaran);

    tran(keluaran, masukan, ctrl);

    tranif0(keluaran, masukan, ctrl);

    tranif1(keluaran, masukan, ctrl);
endmodule