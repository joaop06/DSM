programa
{
	
	funcao inicio()
	{
		real prestacao, juros, desconto, total
		escreva("Informe o valor da prestação em atraso: ")
		leia(prestacao)

		juros = prestacao + (prestacao * 0.1)
		desconto = juros - (juros * 0.1)	
		escreva("\nPrestação com juros: R$ ", juros, "\nValor total com desconto 10%: R$ ", desconto)


		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */