// Class: flipflop_chain
//
// Simple shift-register module with parameterized 
// data width, and number of shifts.
//
//  Parameters:
//
//  - DW        : type (reg[4:0]), default_val (5'd8)
//  - CHAIN_NUM : type (reg[2:0]), default_val (3'b010)
//
//  Ports:
//
//  - input   wire          clk   
//  - input   wire          rst_n 
//  - input   wire[DW-1:0]  in    
//  - output  wire[DW-1:0]  out
//
//
// *Note*: 
// reset is active when it's 0, and it's 
// asynchronous
// _CHAIN_NUM PARAMETER ALWAYS BIGGER THAN 1_
//

module flipflop_chain#(
  parameter reg[4:0] DW         = 5'd8,
  parameter reg[2:0] CHAIN_NUM  = 3'b010 
)(
  input   wire          clk   ,
  input   wire          rst_n ,
  input   wire[DW-1:0]  in    ,
  output  wire[DW-1:0]  out
);

  reg [DW-1:0] ff_chain_reg[CHAIN_NUM-1:0];


  always @(posedge clk, negedge rst_n) begin
    for( reg [2:0] i = 3'b000; i < CHAIN_NUM; i += 1'b1) begin
      if (!rst_n) begin
/* verilator lint_off WIDTHTRUNC */
        ff_chain_reg[i] <= {DW{1'b0}};
/* verilator lint_on WIDTHTRUNC */
      end  
      else begin
        if (i == 3'b000) begin
/* verilator lint_off WIDTHTRUNC */
          ff_chain_reg[i] <= in;
/* verilator lint_on WIDTHTRUNC */
        end
        else begin
/* verilator lint_off WIDTHTRUNC */
          ff_chain_reg[i] <= ff_chain_reg[i-1'b1];
/* verilator lint_on WIDTHTRUNC */
        end
      end
    end
  end

  assign out = ff_chain_reg[CHAIN_NUM-1];

endmodule: flipflop_chain


