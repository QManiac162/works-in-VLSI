module fa (a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
endmodule

module rca_port_order(A, B, CIN, SUM, COUT);
    input [3:0] A, B; input CIN;
    output [3:0] SUM; output COUT;
    fa fa0(A[0], B[0], CIN, SUM[0], C1);
    fa fa1(A[1], B[1], C1, SUM[1], C2);
    fa fa2(A[2], B[2], C2, SUM[2], C3);
    fa fa3(A[3], B[3], C3, SUM[3], COUT);
endmodule