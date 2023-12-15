module mux2to1_gate(a, b, s, out);
    input a, b, s;
    output out;
    not not1 (sbar, s);
    and and1 (net1, b, s);
    and and2 (net2, a, sbar);
    or or1 (out, net1, net2);
endmodule