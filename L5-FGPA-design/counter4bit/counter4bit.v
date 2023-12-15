module counter(clk,rst,count); // Port Information
    input clk,rst;  //Input Ports
    output reg [3:0] count;  //Output Ports
    reg [25:0]temp;   //Temporary variables
    reg clk_div;
    always@(posedge clk)
        begin
            if(rst)
            begin
                temp=0;
                clk_div<=4'd0;
            end
        else
        begin
            temp<=temp+26'd1;
            clk_div<=temp[20];
        end
    end
    always @(posedge clk_div)
        begin
            if(rst)
                count<=4'd0;
            else
                count<=count+4'd1;
        end
endmodule