module plot_mux4to1_gate_lpi();
    reg i0, i1, i2, i3, s0, s1;
    wire out, s0bar, s1bar;
    not not1 (s0bar, s0);
    not not2 (s1bar, s1);
    and and1 (net1, i0, s0bar, s1bar);
    and and2 (net2, i1, s0bar, s1);
    and and3 (net3, i2, s0, s1bar);
    and and4 (net4, i3, s0, s1);
    or or1 (out, net1, net2, net3, net4);
    initial begin
        i0 = 00; i1 = 01; i2 = 10;
        $dumpfile("plot_mux4to1_gate_lpi.vcd");
        $dumpvars(0, plot_mux4to1_gate_lpi);
        i3 = 11; s0 = 0; s1 = 0; #10;
        i3 = 11; s0 = 0; s1 = 1; #10;
        i3 = 11; s0 = 1; s1 = 0; #10;
        i3 = 11; s0 = 1; s1 = 1; #10;
    end
endmodule