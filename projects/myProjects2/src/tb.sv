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

    `ifdef Ex5
      //Home work 
      bit[7:0]    my_mem[3];
      logic[3:0]  my_logicmem[4];
      logic[3:0]  my_logic;

      my_mem = '{default:8'hA5};
      my_logicmem = {0,1,2,3};
      my_logic = 4'hF;
      
      //my_mem[2] = my_logicmem[4]; //a) Selection index out of range: 4 outside 3:0
      //$display("my_mem=%b", my_mem);
      //my_logic = my_logicmem;   //b) Error and crashlog
      //$display("my_logic=%b", my_logic);
      // my_logicmem[3] = my_mem[3];
      // $display("my_logicmem=%b", my_logicmem);
      
    `endif

    `ifdef Ex6
      bit[11:0] my_array[];
      my_array = new [4];
      my_array[0] = 12'h012;
      my_array[1] = 12'h345;
      my_array[2] = 12'h678;
      my_array[3] = 12'h9AB;
          //foreach(my_array[i])begin  
            //$display("my_arraydata %b index %d", my_array[i][5:4], i);
          //end
            for(int i=0; i<my_array.size; ++i) begin
              $display("my_array %b index %d", my_array[i][5:4], i);
           // end
            end 
    `endif
     
    `ifdef Ex7 
      logic[31:0]  my_array1[4:0];
        my_array1[4][30] = 1'b1;
        // my_array1[29][4] = 1'b1; //out of bounds
        // my_array1[4] = 32'b1; //overflow
      /* verilator lint_on WIDTHTRUNC */
        foreach(my_array1[i]) begin
          $display("my_array1 %b index %d", my_array1[i], i);
        end
      /* verilator lint_off WIDTHTRUNC */
      `endif


      `ifdef Ex8
        bit[4:0][31:0] my_array2;
        my_array2[4][30] = 1'b1;
        // my_array2[29][4] = 1'b1; //out of bounds
        // my_array2[3] = 32'b1; //overflow
        foreach(my_array2[i]) begin
          $display("my_array2 %b index %d", my_array2[i], i);
        end
      `endif




      string street[$];
      `ifdef Ex9
          street = {"Tejon", "Bijon", "Boulder"};
          $display("Street[0] = %s", street[0]);
          street.insert(2, "Platte");
          $display("Streat[2] = %s", street[2]);
          street.push_front("St. Vrain");
          $display("Streat[2] = %s", street[2]);
          $display("pop_back = %s", street.pop_back);
          $display("street.size = %d", street.size);
      `endif


      `ifdef Ex10
        bit[24:0]     









      `endif


    $finish;
  end


endmodule:tb
