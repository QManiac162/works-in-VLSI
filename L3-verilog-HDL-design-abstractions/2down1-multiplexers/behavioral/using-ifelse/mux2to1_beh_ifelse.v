module mux2to1_beh1(a, b, s, out);
    input a, b, s;
    output reg out;
    always @ (a, b, s)
        begin
          if(s) out = b;
          else out = a;
        end
endmodule;