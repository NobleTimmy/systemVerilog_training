// Class: tb
//
// Top-level testbench, for the logicc_data_type project

module tb;
  logic [3:0] my_data;    //Declar a 4-bit logic type variable
  logic     en;         //Declar a 1-bit logic type variable

  bit       var_a;
  bit [3:0] var_b;

  logic [3:0] x_val;
  logic [15:0] x_bval;


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

      $display ("Initial var_a=0%0b var_b=0%0h", var_a, var_b);
      var_a = 1;
      var_b = 4'hE;
      $display ("New values var_a=0%0b var_b=0%0h", var_a, var_b);
      x_bval = 16'h481a;
      $display ("Truncated value: x_bval=0%0h", x_bval);
      var_b = 4'b01zx;
      $display ("var_b=%b", var_b);
  end
  assign en = my_data[0];
endmodule:tb
