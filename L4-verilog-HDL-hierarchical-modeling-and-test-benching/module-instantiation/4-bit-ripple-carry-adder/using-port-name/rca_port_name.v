module fa (a, b, cin, sum, cout);
    input a, b, cin;
    output sum, cout;
    assign sum = a^b^cin;
    assign cout = (a&b) | (b&cin) | (a&cin);
endmodule

module rca_port_name(A, B, CIN, SUM, COUT);
    input [3:0] A, B; input CIN;
    output [3:0] SUM; output COUT;
    fa fa0(.a(A[0]), .b(B[0]), .cin(CIN), .sum(SUM[0]), .cout(C1));
    fa fa1(.a(A[1]), .b(B[1]), .cin(C1), .sum(SUM[1]), .cout(C2));
    fa fa2(.a(A[2]), .b(B[2]), .cin(C2), .sum(SUM[2]), .cout(C3));
    fa fa3(.a(A[3]), .b(B[3]), .cin(C3), .sum(SUM[3]), .cout(COUT));
endmodule