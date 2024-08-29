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
      foreach(memory_map[i]) begin
        memory_map[i] = input_data >> (8*i); //DEAD_BEEF 00DE_ADBE 0000_DEAD 0000_00DE
      end
      $display("Memory_map %p", memory_map);
      foreach(memory_map[i]) begin
        $display($sformatf("memory_map foreach, index[%d], value[%h]", i, memory_map[i]));
      end
      // Second realization
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

    `ifdef Ex4
      string array[];
      array = new [2];
      array = '{"Biba", "Boba"};
      $display("content %p, \nsize = %d", array, array.size());
      array.delete();
      $display("content %p, \nsize = %d", array, array.size());
    `endif
    `ifdef Ex5
      int map_size = 'd0;
      bit[7:0] memory_map[bit[7:0]] = '{8'h0: 8'hFF, 8'h1C:8'h77 };
      foreach(memory_map[key]) begin
        $display("memory_map[%h] = %h", key, memory_map[key]);
      end
      $display("size = %d", memory_map.size()); 
      memory_map.delete(8'h1C);
      $display("size = %d", memory_map.size()); 
      memory_map[8'h3B]= 8'h1B;
      $display("size = %d", memory_map.size()); 
      for(bit[7:0] i='d0; 1; i += 1'b1) begin
        if (memory_map.exists(i)) begin
          map_size = map_size + 1'b1;
          $display("memory_map[%h] = %h", i, memory_map[i]);
        end
        if (map_size == memory_map.size())
          break;
      end

     // for(;;) begin
     // end

     // while(1) begin
     // end

     // forever begin
     // end

     // always begin
     // end

     // do begin
     // end
     // while(1)
    `endif // Ex5
    `ifdef Ex6
      bit[7:0] queue_ex[$] = '{8'hFF, 8'hAA, 8'hCC, 8'hBB};
      $display("queue_ex_1 is %p, \nsize is %d", queue_ex, queue_ex.size());
      
      queue_ex.push_back(8'h77);
      $display("queue_ex_2 is %p, \nsize is %d", queue_ex, queue_ex.size());

      queue_ex.push_front(8'h66);
      $display("queue_ex_2 is %p, \nsize is %d", queue_ex, queue_ex.size());

      queue_ex.insert(3, 8'h00);
      $display("queue_ex_3 is %p, \nsize is %d", queue_ex, queue_ex.size());

      // Pop_examples
      $display("Pop_front %h", queue_ex.pop_front());
      $display("queue_ex_4 is %p, \nsize is %d", queue_ex, queue_ex.size());

      $display("Pop_back %h", queue_ex.pop_back());
      $display("queue_ex_5 is %p, \nsize is %d", queue_ex, queue_ex.size());

      void'(queue_ex.pop_front());
      void'(queue_ex.pop_back());

      $display("queue_ex_6 is %p, \nsize is %d", queue_ex, queue_ex.size());
      // First way of iteration
      foreach(queue_ex[index]) begin
        $display("[iter_foreach] queue_ex[%d]=%h", index,queue_ex[index]);
      end

      // Second way of iteration
      for(int index = 'd0; index < queue_ex.size(); ++index) begin
        $display("[iter_for] queue_ex[%d]=%h", index,queue_ex[index]);
      end



    `endif
    $finish;



  end





endmodule     :tb
