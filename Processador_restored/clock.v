module Clock (Entrada,Saida);
input Entrada;
output reg Saida;
reg [26:0] OUT;

always @ (posedge Entrada)
	if (OUT == 27'd100000000)
		begin
			OUT <= 27'd0;
			Saida <= 1;
		end
	else
		begin
			OUT<= OUT+27'B000000000000000000000000001;
			Saida <= 0;
		end
endmodule 