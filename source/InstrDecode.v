module InstrDecode #(
	parameter DATA_WIDTH = 32
)
(
input [(DATA_WIDTH-1):0] Addr_i,
output reg Sel
);

always @ (Addr_i) begin 
	if (Addr_i >= 7'h100_000) //RAM starts here
		Sel = 1;
	
	else 
		Sel = 0;

end 

endmodule 