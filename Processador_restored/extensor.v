module Extensor 
(
input [5:0] Imediato,
output wire [31:0] Imediato_estendido 
);
reg [31:0] Imediato_estendido1;
assign Imediato_estendido=Imediato_estendido1;
always@ (*)
 begin
	if( Imediato [5] == 1'B1 )
		begin
			Imediato_estendido1 = {{6{1 'B1 }} , Imediato};
		end
	else
		begin
			Imediato_estendido1  = {{6{1 'B0 }} , Imediato};
		end
	end
 endmodule
