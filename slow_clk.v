module slow_clk(
	clk_50M_i, 
	slow_clk_o
);
	input clk_50M_i;
	output reg slow_clk_o;
	
   reg [26:0] r_counter = 0;
   always @(posedge clk_50M_i) r_counter <= (r_counter >= 10)? 0 : r_counter + 1;

   always @(posedge clk_50M_i) slow_clk_o <= (r_counter < 5)? 1'b0 : 1'b1;
	
endmodule
