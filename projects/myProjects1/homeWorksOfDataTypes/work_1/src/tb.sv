// Class: tb
//
// Top-level testbench, for the logicc_data_type project

module tb;
  logic [3:0] my_data;    //Declar a 4-bit logic type variable
  logic     en;         //Declar a 1-bit logic type variable

  initial begin
      $display ("my_data=0x%0h en=%0b", my_data, en);
      my_data = 4'hB;
      $display ("my_data=0x%0h en=%0b", my_data, en);
      #1;
      $display ("my_data=0x%0b en=%0b", my_data, en);
      my_data = 4'hA;
      #2;
      $display ("my_data=0x%0b en=%0b", my_data, en);
      my_data = 4'hF;
      #2;
      $display ("my_data=0x%0b en=%0b", my_data, en);
      my_data = 4'h6;
      #2;
      $display ("my_data=0x%0b en=%0b", my_data, en);
  end
  assign en = my_data[0];
endmodule:tb
