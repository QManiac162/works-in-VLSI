module monitor_test;
    reg in; wire out;
    not#1 G0(out, in);

    initial
        $display($time,,"out = %b in = %b", out, in);
    
    initial begin
        in = 0; 
        #10 in = 1; 
        #10 in = 0;
    end
endmodule