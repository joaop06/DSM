programa
{
	
	funcao inicio()
	{
		caracter TipoVinho
		inteiro TotalTinto, TotalBranco, TotalRose
		real PercTinto, PercBranco, PercRose, ContVinho

		ContVinho = 0
		TotalTinto = 0
		TotalBranco = 0
		TotalRose = 0
		TipoVinho = '.'

		escreva("Tipo do Vinho: ")
		leia(TipoVinho)
		enquanto(TipoVinho !='F'){


			escolha (TipoVinho){

				caso 'T':
				TotalTinto = TotalTinto + 1
				ContVinho = ContVinho + 1
				pare

				caso 'B':
				TotalBranco = TotalBranco + 1
				ContVinho = ContVinho + 1
				pare

				caso 'R':
				TotalRose = TotalRose + 1
				ContVinho = ContVinho + 1
				pare

				caso contrario:
				escreva("Tipo de Vinho inválido.\n")
			}
			escreva("Tipo do Vinho: ")
			leia(TipoVinho)

			
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 48; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {TotalTinto, 7, 10, 10};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */