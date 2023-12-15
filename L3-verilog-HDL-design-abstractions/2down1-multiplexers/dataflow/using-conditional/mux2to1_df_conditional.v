module mux2to1_df2(a, b, s, out);
    input a, b, s;
    output out;
    assign out = s ? b:a;
endmodule