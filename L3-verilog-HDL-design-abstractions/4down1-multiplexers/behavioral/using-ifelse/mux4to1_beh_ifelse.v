module mux4to1_beh(i0, i1, i2, i3, s0, s1, out);
    input i0, i1, i2, i3, s0, s1;
    output reg out;
    always @ (i0, i1, i2, i3, s0, s1)
        begin
            // {} = concatenation
            if({s0, s1}==2'b00) out = i0;
            else if({s0, s1}==2'b01) out = i1;
            else if({s0, s1}==2'b10) out = i2;
            else if({s0, s1}==2'b11) out = i3;
            else out = 1'bx;
        end
endmodule