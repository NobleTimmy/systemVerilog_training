// Class: tb
//
// Top-level testbench, for the HELLO_WORLD project
module tb;

  initial begin
    `ifdef Ex1
      bit   [7:0] byte_unsigned = 8'b0000_0000; // 8'h00, 8'd0
      logic [7:0] eight_elem_logic = 8'hX;
      // * logic:
      //    * 0 - binary 0
      //    * 1 - binary 1
      //    * X - undefined (whne comparison treated as binary 0)
      //    * Z - high-impedance, used with inout buses
      // wire - sampling
      // reg - drive
      // logic - sampling/drive (carefull)
      $display("Hello World! Ex1");
    `endif

    `ifdef Ex2
      // *  Array types:
      //    * Packed, unpacked array:
      //      bit[3:0][7:0] packed_array;
      //      bit[7:0]      unpacked_array[3:0];
      logic[31:0]     input_data      = 32'hDEAD_BEEF;
      logic[7:0]      memory_map[3:0] = '{ 8'h0, 8'h0, 8'h0, 8'h0};
      logic[3:0][7:0] packed_array    = 32'h0;
      // First realization
      /* verilator lint_off WIDTHTRUNC */
      foreach(memory_map[i]) begin
        memory_map[i] = input_data >> (8*i); //DEAD_BEEF 00DE_ADBE 0000_DEAD 0000_00DE
      end
      /* verilator lint_on WIDTHTRUNC */
      $display("Memory_map %p", memory_map);
      foreach(memory_map[i]) begin
        $display($sformatf("memory_map foreach, index[%d], value[%h]", i, memory_map[i]));
      end
      // Second realization
      /* verilator lint_off WIDTHTRUNC */
      foreach(memory_map[i]) begin
        memory_map[i] = {8{1'bX}};
      end
      $display("Memory_map after erase %p", memory_map);
      packed_array = input_data; 
      for(int i = 0; i < $size(packed_array) ; i+=1'b1) begin
        memory_map [i]= packed_array [i]; 
        $display($sformatf("Packed_array elements by_index packed_array[%d]=[%h]", i, packed_array[i]));
        $display($sformatf("Memory_map elements by_index memory_map[%d]=[%h]", i, memory_map[i]));
      end
      $display("Hello World! Ex2");
    `endif

    `ifdef Ex3
      bit[7:0] dynamic_array_1[];
      bit[7:0] dynamic_array_2[];
      dynamic_array_1 = new[4]; //[[0] [1] [2] [3]] In every cell 8bit number is presented
      dynamic_array_1 = '{8'hF, 8'hA, 8'hB, 8'h7 };
      foreach(dynamic_array_1[j]) begin
        $display("dynamic array_1[%d]=%h", j, dynamic_array_1[j]);
      end
      dynamic_array_2 = new[2](dynamic_array_1);
      $display("dynamic array_2 %p", dynamic_array_2);
      dynamic_array_1[0] = 8'hC;
      $display("dynamic array_1 %p \ndynamic_array_2 %p", dynamic_array_1, dynamic_array_2);
    `endif
    `ifdef Ex4 
      //Associative array
      bit[31:0] assoc_array[bit[7:0]];  // assoc_array[key] = value
      //Queue (LIFO, FIFO)
      bit[7:0] byte_q[$];



    `endif 




    $finish;
  end





endmodule:tb
