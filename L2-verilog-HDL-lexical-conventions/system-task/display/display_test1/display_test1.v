module display_text;
    reg [3:0] data;
    initial begin
      data = 4'b1100;
      $display("from display, data = ", data);
      $displayb("from displayb, data = ", data);
      $displayh("from displayh, data = ", data);
    end
endmodule