module plot_mag_comp();
    reg [2:0] A, B;
    wire AltB, AgtB, AeqB;
    assign AltB = (A<B);
    assign AgtB = (A==B);
    assign AeqB = (A>B);
    initial begin
        $dumpfile("plot_mag_comp.vcd");
        $dumpvars(0, plot_mag_comp);
        A = 0; B = 0; #10;
        A = 0; B = 1; #10;
        A = 1; B = 0; #10;
        A = 1; B = 1; #10;
    end
endmodule