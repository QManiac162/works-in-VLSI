module mux2to1_df1(a, b, s, out);
    input a, b, s;
    output out;
    wire sbar;
    assign sbar = ~s;
    assign out = (a&sbar) | (b&s);
endmodule