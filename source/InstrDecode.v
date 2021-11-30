module InstrDecode #(
	parameter MEMORY_DEPTH = 32
)
(
input [(MEMORY_DEPTH-1):0] Addr_i,
output reg Sel
);

always @ (Addr_i) begin 
	if (Addr_i >= 32'h100_000) //RAM starts here, to be modified
		Sel = 1;
	
	else 
		Sel = 0;

end 

endmodule 