// Class: tb
//
// Top-level testbench, all the modules,
// which are used are <flipflop_chain>, <counter>
// 
module tb;
  localparam reg[4:0] DW        = 5'd8;
  localparam reg[2:0] CHAIN_NUM = 3'd4;
  logic rst_n = 1'b1;
  logic clk   = 1'b0;

  logic [DW-1:0] input_val = {DW{1'b0}};
  logic [DW-1:0] output_val;

  flipflop_chain#(.DW(DW), .CHAIN_NUM(CHAIN_NUM)) i_flipflop_chain(
    .clk   (clk  ),
    .rst_n (rst_n),
    .in    (input_val),
    .out   (output_val)
  );
  always begin
    #10ns;
    clk <= ~clk;
  end

  initial begin
    $dumpfile("tb.vcd");
    $dumpvars(0, tb);
    input_val = 'hF;
    repeat(5) @(posedge clk);
    rst_n = 1'b0;
    repeat(2) @(posedge clk);
    #5ns;
    rst_n = 1'b1;
    fork
      begin
        repeat(10) @(posedge clk);
        input_val = 'hA;
      end
      begin
        repeat(12) @(posedge clk);
        input_val = 'hB;
      end
      begin
        repeat(17) @(posedge clk);
        input_val = 'hC;
      end
      begin
        repeat(18) @(posedge clk);
        input_val = 'hD;
      end
    join
    repeat(4) @(posedge clk);
    $finish;
  end


//  initial
//     $monitor("At time %t, value = %h (%0d)",
//              $time, value, value);
endmodule
