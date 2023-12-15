// -DUV (design under verification): AND2 gate description
module and2_df(a, b, out);
    input a, b;
    output out;
    wire a, b, out;
    assign out = a&b;
endmodule

// -Stimulus description
module and2_df_tb;
    reg A, B; wire OUT;
    and2_df duv(.a(A), .b(B), .out(OUT));
    initial begin
        $monitor("simtime = %g, A = %b, B = %b, OUT = %b", $time, A, B, OUT);
    end
    initial begin
        $dumpfile("and2_df_tb.vcd");
        $dumpvars(0, and2_df_tb);
        #5 A = 0; B = 0;
        #5 A = 0; B = 1;
        #5 A = 1; B = 0;
        #5 A = 1; B = 1;
    end 
endmodule

