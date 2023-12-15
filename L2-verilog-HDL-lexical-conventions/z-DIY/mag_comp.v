module mag_comp(A, B, AltB, AgtB, AeqB);
    input [2:0] A, B;
    output AltB, AgtB, AeqB;
    assign AltB = (A<B);
    assign AgtB = (A==B);
    assign AeqB = (A>B);
endmodule