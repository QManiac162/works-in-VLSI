module mux4to1_df(i0, i1, i2, i3, s0, s1, out);
    input i0, i1, i2, i3, s0, s1;
    output out;
    assign out = s0 ? (s1 ? i3:i2):(s1 ? i1:i0);
endmodule