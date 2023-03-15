programa
{
	
	funcao inicio()
	{
		real total_vendas, carros_vendidos, valor_carros_vendidos, comissao_venda
		cadeia funcionario
		escreva("Informe o nome do funcionário: ")
		leia(funcionario)
		
		escreva("Total de carros vendidos: ")
		leia(carros_vendidos)
		valor_carros_vendidos = carros_vendidos * 50			//Calcula a comissão sobre a quantidade de vendas * R$ 50 por unidade
		
		escreva("Valor Total em vendas: R$ ")
		leia(total_vendas)
		comissao_venda = (total_vendas / 100) * 5			//Calcula os 5% sobre o valor total das vendas

		escreva("\n----------------------------------------")
		escreva("\nFuncionário: ", funcionario, "\nSalário Fixo: R$ 500,00\nComissão Vendas (R$ 50,00 un): R$ ", valor_carros_vendidos, "\nComissão Total Vendas: R$ ", comissao_venda, "\n\nTotal: R$ ", 500 + valor_carros_vendidos + comissao_venda)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 388; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */