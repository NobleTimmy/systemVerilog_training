module counter(out, clk, reset);

  parameter WIDTH = 8;

  output [WIDTH-1 : 0] out;
  input            clk, reset;

  reg [WIDTH-1 : 0]   out;
  wire            clk, reset;

  always@(posedge clk, posedge reset) begin
    if (reset == 1'b1) begin
      out <= {WIDTH{1'b0}};
    end
    else begin
      out <= out + 1;
    end
  end
endmodule // counter
