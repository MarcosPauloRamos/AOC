module ULA (L1,Multiplexador_ULA,Modo_Funcao_UC,Sinal_Desvio,Result);
input wire [31:0] L1, Multiplexador_ULA;
input wire [5:0] Modo_Funcao_UC;
output reg Sinal_Desvio;
output reg [31:0] Result;
parameter 
	ADD = 6'b000000,
	SUB = 6'b000001,
	MULT = 6'b000010,
	DIV = 6'b000011,
	ADDI = 6'b010000,
	SUBI = 6'b010001,
	AND = 6'b000100,
	OR = 6'b000101,
	NOT = 6'b000110,
	XOR = 6'b000111,
	SHR = 6'b001000,
	SHL = 6'b001001,
	BEQ = 6'b001010,
	BNE = 6'b001011,
	BLE = 6'b001100,
	BGR = 6'b001101;

always@ (*)
	begin
		case(Modo_Funcao_UC)
			ADD: Result= L1 + Multiplexador_ULA;
			
			SUB: Result= L1 - Multiplexador_ULA;
			
			MULT: Result= L1 * Multiplexador_ULA;
		
			DIV: Result= L1/Multiplexador_ULA;
			
			ADDI: Result= L1 + Multiplexador_ULA;
			
			SUBI: Result= L1 - Multiplexador_ULA;
			
			AND: Result= L1 & Multiplexador_ULA;
			
			OR: Result= L1|Multiplexador_ULA;
			
			NOT: Result= ~L1;
			
			XOR: Result= L1 ^ Multiplexador_ULA;
			
			SHR: Result= L1/01;
			
			SHL: Result= L1 * 01;
		
		default:Result=32'b0;
		endcase
		
		case(Modo_Funcao_UC)
			BEQ: if(L1==Multiplexador_ULA)
						Sinal_Desvio=1'b1;
					else 
						Sinal_Desvio=1'b0;
			BNE: if(L1!=Multiplexador_ULA)
						Sinal_Desvio=1'b0;
					else 
						Sinal_Desvio=1'b1;
				
			BLE: if(L1<Multiplexador_ULA)
						Sinal_Desvio=1'b1;
					else 
						Sinal_Desvio=1'b0;
			BGR: if(L1>Multiplexador_ULA)
						Sinal_Desvio=1'b1;
					else 
						Sinal_Desvio=1'b0;
			
			default:Sinal_Desvio=1'b0;
			endcase
		end
endmodule
		
	