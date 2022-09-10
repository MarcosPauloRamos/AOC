module Binario_BCD 
(
input [31:0] Binario,
output reg [3:0] unidade,
output reg [3:0] dezena,
output reg [3:0] centena,
output reg [3:0] milhar
);

integer i;

always@ (*)
	begin
	
		 unidade = 4'd0;
		 dezena = 4'd0;
		 centena = 4'd0;
		 milhar = 4'd0;
		 
		 
		 
		 for(i = 31; i>=0; i=i-1)
		begin

			
			if(milhar >= 5)
				milhar = milhar + 4'd3;
			if(centena >= 5)
				centena = centena + 4'd3;
			if (dezena >= 5)
				dezena = dezena + 4'd3;
			if (unidade >= 5)
				unidade = unidade + 4'd3;
				
				
			milhar = milhar << 1;
			milhar[0] = centena[3];
			
			centena = centena << 1;
			centena[0] = dezena[3];
			
			dezena = dezena << 1;
			dezena[0] = unidade[3];
			
			unidade = unidade << 1;
			unidade[0] = Binario[i];
		end
		
		
	end
endmodule 