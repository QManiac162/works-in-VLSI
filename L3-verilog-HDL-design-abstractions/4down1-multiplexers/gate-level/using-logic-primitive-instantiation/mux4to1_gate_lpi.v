module mux4to1_gate(i0, i1, i2, i3, s0, s1, out);
    input i0, i1, i2, i3, s0, s1;
    output out;
    wire s0bar, s1bar;
    not not1 (s0bar, s0);
    not not2 (s1bar, s1);
    and and1 (net1, i0, s0bar, s1bar);
    and and2 (net2, i1, s0bar, s1);
    and and3 (net3, i2, s0, s1bar);
    and and4 (net4, i3, s0, s1);
    or or1 (out, net1, net2, net3, net4);
endmodule