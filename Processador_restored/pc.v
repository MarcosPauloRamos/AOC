module PC 
#(parameter Offset=10'b0000000001)
(
	input clock, halt, reset, Sinal_Desvio, Seletor_Desvio, Seletor_regJr,
	input [9:0] address_input,
	input [9:0] EPI_Jr,
	output reg [9:0] address_output 
);	
	
	always@ (negedge clock)
		begin
		   if (reset==1'B1)
				address_output=10'B0;
				
			else if (halt==1'B1)
				address_output=address_output;
				
			else if (Seletor_Desvio==1'B1 & Sinal_Desvio==1'B1)
				address_output=address_input;
						
			else if (Seletor_Desvio==1'B1 & Sinal_Desvio==1'B0)
			
					address_output=address_output+Offset;
				
			else if (Seletor_Desvio==1'B0 & Sinal_Desvio==1'B1)
				address_output=address_input;
				
			else if (Seletor_regJr==1'B0)
				address_output=EPI_Jr;
			
			else
				address_output=address_input;
			
		end 
		
endmodule 