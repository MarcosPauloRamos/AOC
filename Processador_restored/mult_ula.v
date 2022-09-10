module Mult_ULA
(
input [31:0] L2,
input [31:0] Imediato,
input Seletor_ULA,
output wire [31:0] Saida_Mult_ULA
);
reg [31:0] Saida;
assign Saida_Mult_ULA=Saida;
always@ (*)
	begin
		case(Seletor_ULA)
			1'b0:Saida=L2;
			1'b1:Saida=Imediato;
			default:Saida=L2;
		endcase 
	end
endmodule
