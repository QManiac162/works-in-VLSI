`timescale 10ns / 1ps
module MUX_2_to_1(out, a, b, sel);
    output out;
    input a, b, sel;
    not #1 not1(sel_, sel); // intrinsic delay of this NOT gate is 10ns
    and #2 and1(a1, a, sel_), (b1, b, sel); // intrinsic delay of this AND gate is 20ns
    or #1 or1(out, a1, a2);
endmodule