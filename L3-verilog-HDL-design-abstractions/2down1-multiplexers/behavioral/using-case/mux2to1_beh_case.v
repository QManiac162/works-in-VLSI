module mux2to1_beh2(a, b, s, out);
    input a, b, s;
    output reg out;
    always @ (a, b, s)
        begin
            case(s)
                1'b0: out = a;
                1'b1: out = b;
                default: out = 1'bx;
            endcase
        end
endmodule;