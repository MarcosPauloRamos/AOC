module Memoria_Instrucoes (read_address, Instrucao);
	input [9:0] read_address;
	reg [33:0] mem_instrucoes [64:0];
	output  [33:0] Instrucao; 
	
	always@ (read_address)
		begin
	
		
				//Fibonacci
				
				mem_instrucoes [0] = 34 'B010000_000010_000000_000000_0000000001; //zerando os regiistradores (ADDI) 
				mem_instrucoes [1] = 34 'B010000_000001_000000_000000_0000000010; //zerando os regiistradores (ADDI)
				mem_instrucoes [2] = 34 'B010000_000101_000000_000000_0000000011; //zerando os regiistradores (ADDI)
				mem_instrucoes [3] = 34 'B010000_001000_000000_000000_0000000100; //zerando os regiistradores (ADDI)
				mem_instrucoes [4] = 34 'B010000_000001_000000_000001_0000000101; //Registrador b (000001)= registrador constante (000000) + 1 (ADDI)
				mem_instrucoes [5] = 34 'B100000_000101_000000_000000_0000000110; //Registrador C (000101) = switches (IN)
				mem_instrucoes [6] = 34 'B000000_000100_000010_000001_0000000111; //Auxiliar (000100) = a (000010) + b (000001)  (ADD)
				mem_instrucoes [7] = 34 'B000000_000010_000000_000001_0000001000; // a (000010) = registrador constante (000000) + b (000001) (ADD)
				mem_instrucoes [8] = 34 'B000000_000001_000000_000100_0000001001; // b (000001) = registrador constante (000000) + Auxiliar (000100) (ADD)
				mem_instrucoes [9] = 34 'B010000_001000_001000_000001_0000001010; // d (001000) = d (001000) + 1  (contador) (ADDI)
			   mem_instrucoes [10] = 34 'B001011_000110_000101_001000_0000000110; //   if (C (000101) !=d (001000)) vai para instrução 2 e repete o loop (comparador) (BNE) 
				mem_instrucoes [11] = 34 'B100010_000000_000000_000100_0000000000; //Imprime o valor no display e volta para instrução 0 (OUT)
				
				//Sintético
				
				/*mem_instrucoes [0] = 34 'B100000_000001_000000_000000_0000000001; //Registrador A (000001) = switches (IN)
				mem_instrucoes [1] = 34 'B100000_000010_000000_000000_0000000010; //Registrador B (000010) = switches (IN)
				mem_instrucoes [2] = 34 'B000000_000011_000010_000001_0000000011; //Registrador C (000011) = B (000010) + A (000001)  (ADD)
				mem_instrucoes [3] = 34 'B100010_000000_000000_000011_0000000100; //Imprime o valor de, no display,  C (000011) (OUT)
				mem_instrucoes [4] = 34 'B000001_000100_000010_000001_0000000101; //Registrador D (000100) = B (000010) - A (000001)  (SUB)
				mem_instrucoes [5] = 34 'B100010_000000_000000_000100_0000000110; //Imprime o valor de, no display,  D (000100) (OUT)
				mem_instrucoes [6] = 34 'B000010_000101_000010_000001_0000000111; //Registrador E (000101) = B (000010) * A (000001)   (MULT)
				mem_instrucoes [7] = 34 'B100010_000000_000000_000101_0000001000; //Imprime o valor de, no display,  E (000101) (OUT)
				mem_instrucoes [8] = 34 'B000011_000110_000010_000001_0000001001; //Registrador F (000101) = B (000010)/A (000001) (DIV)
				mem_instrucoes [9] = 34 'B100010_000000_000000_000110_0000001010; //Imprime o valor de, no display,  F (000110) (OUT)
				mem_instrucoes [10] = 34 'B000100_000111_000010_000001_0000001011; //Registrador G (000111) = B (000010) & A (000001) (AND)
				mem_instrucoes [11] = 34 'B100010_000000_000000_000111_0000001100; //Imprime o valor de, no display,  G (000111) (OUT)
				mem_instrucoes [12] = 34 'B000101_001000_000010_000001_0000001101; //Registrador H (001000) = B (000010) | A (000001) (OR)
				mem_instrucoes [13] = 34 'B100010_000000_000000_001000_0000001110; //Imprime o valor de, no display,   H (001000) (OUT)
				mem_instrucoes [14] = 34 'B000110_001001_000010_000001_0000001111; //Registrador I (001001) = ~ B (000010) (NOT)
				mem_instrucoes [15] = 34 'B100010_000000_000000_001001_0000010000; //Imprime o valor de, no display,   H (001001) (OUT)
				mem_instrucoes [16] = 34 'B000111_001010_000010_000001_0000010001; //Registrador J (001010) = B (000010) ^ A (000001) (XOR)
				mem_instrucoes [17] = 34 'B100010_000000_000000_001010_0000010010; //Imprime o valor de, no display,   J (001010) (OUT)
				mem_instrucoes [18] = 34 'B001000_001011_000010_000001_0000010011; //Registrador K (001011) =  ~ B (000010)/01 (SHR)
				mem_instrucoes [19] = 34 'B100010_000000_000000_001011_0000010100; //Imprime o valor de, no display,   K (001011) (OUT)
				mem_instrucoes [20] = 34 'B001001_001100_000010_000001_0000010101; //Registrador L (001100) =  B (000010)* 01 (SHL)
				mem_instrucoes [21] = 34 'B100010_000000_000000_001100_0000010110; //Imprime o valor de, no display,   L (001100) (OUT) 
				mem_instrucoes [22] = 34 'B110000_000000_000000_000000_0000010111; // Vai para o endereço da próxima instrução (JUMP)
				mem_instrucoes [23] = 34 'B010000_001101_000000_000011_0000011000; //Registrador M (001101) =  Registrador constante (000000) + 3 (ADDI)
				mem_instrucoes [24] = 34 'B010001_001111_001101_000001_0000011001; //Registrador N (001111) =  Registrador M (001101)  - 1 (SUBI)
				mem_instrucoes [25] = 34 'B100110_000000_000001_001111_0000011010; // Memória (000001) = Registrador N (001111) (STORE)
				mem_instrucoes [26] = 34 'B100100_010000_000001_000000_0000011011; // Registrador O (010000) = Memória (000001) (LOAD)
				mem_instrucoes [27] = 34 'B100010_000000_000000_010000_0000011100; //Imprime o valor de, no display,  O (010000) (OUT)
				mem_instrucoes [28] = 34 'B101000_010001_000000_000100_0000011101; // Registrador P (010001) = 4 (LOADIM)
				mem_instrucoes [29] = 34 'B100010_000000_000000_010001_0000011110; //Imprime o valor de, no display,  P (010001) (OUT)
				mem_instrucoes [30] = 34 'B010000_010010_000000_000101_0000011111; //Registrador Q (010010) =  Registrador constante (000000) + 5 (ADDI)
				mem_instrucoes [31] = 34 'B010000_010011_000000_000111_0000100000; //Registrador R (010011) =  Registrador constante (000000) + 6 (ADDI)
				mem_instrucoes [32] = 34 'B001010_000000_010010_010011_0000100010; // IF (Q (010010)==R (010011)) imprime 6, mas não 5; else imprime 5 e 6 (BEQ)
				mem_instrucoes [33] = 34 'B100010_000000_000000_010010_0000100010; //Imprime o valor de, no display,  Q (010010) (OUT)
				mem_instrucoes [34] = 34 'B100010_000000_000000_010011_0000100011; //Imprime o valor de, no display,  R (010011) (OUT)
				mem_instrucoes [35] = 34 'B100000_010100_000000_000000_0000100100; //Registrador S (010100) = switches (IN)
				mem_instrucoes [36] = 34 'B100000_010101_000000_000000_0000100101; //Registrador T (010101) = switches (IN)
				mem_instrucoes [37] = 34 'B001100_000000_010100_010101_0000100111; // IF (S (010100)< T (010101)) imprime T (010101), mas não S (010100); else imprime S (010100) e T (010101) (BLE)
				mem_instrucoes [38] = 34 'B100010_000000_000000_010100_0000100111; //Imprime o valor de, no display,  S (010100) (OUT)
				mem_instrucoes [39] = 34 'B100010_000000_000000_010101_0000101000; //Imprime o valor de, no display,  T (010101) (OUT)
				mem_instrucoes [40] = 34 'B100000_010110_000000_000000_0000101001; //Registrador U (010110) = switches (IN)
				mem_instrucoes [41] = 34 'B100000_010111_000000_000000_0000101010; //Registrador V (010111) = switches (IN)
				mem_instrucoes [42] = 34 'B001100_000000_010110_010111_0000101100; // IF (U (010110)< V (010111)) imprime V (010111), mas não U (010110); else imprime U (010110) e V (010111) (BGE)
				mem_instrucoes [43] = 34 'B100010_000000_000000_010110_0000101100; //Imprime o valor de, no display,  U (010110) (OUT)
				mem_instrucoes [44] = 34 'B100010_000000_000000_010111_0000101100;*/ //Imprime o valor de, no display,  V (010111) (OUT)
		
			/*mem_instrucoes [0] = 34 'B100000_000001_000000_000000_0000000001; //Registrador A (000001) = switches (IN)
			  mem_instrucoes [1] = 34 'B100000_000010_000000_000000_0000000010; //Registrador B (000010) = switches (IN)
			  mem_instrucoes [2] = 34 'B010000_000011_000000_000001_0000000011;
			  mem_instrucoes [3] = 34 'B010000_000100_000000_000000_0000000100;
			  mem_instrucoes [4] = 34 'B001100_000000_000001_000010_0000000110; // IF (U (010110)< V (010111)) imprime V (010111), mas não U (010110); else imprime U (010110) e V (010111) (BGE)
			  mem_instrucoes [5] = 34 'B100010_000000_000000_000100_0000000101; //Imprime o valor de, no display,  U (010110) (OUT)
			  mem_instrucoes [6] = 34 'B100010_000000_000000_000011_0000000110; */ //Imprime o valor de, no display,  V (010111) (OUT)
		end
		
		assign Instrucao = mem_instrucoes[read_address];
	 
endmodule
	