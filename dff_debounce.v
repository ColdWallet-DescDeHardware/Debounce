// Flip-flop Tipo D para debouncing  
module dff_debounce(
	DFF_CLOCK, 
	D, 
	Q
);

	input DFF_CLOCK, D;
	output reg Q;
	
   always @ (posedge DFF_CLOCK) begin
		Q <= D;
   end
	
endmodule
