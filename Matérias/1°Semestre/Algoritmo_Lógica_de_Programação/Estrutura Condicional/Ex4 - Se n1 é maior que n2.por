programa
{
	
	funcao inicio()
	{
		inteiro n1, n2
		escreva("Digite dois números diferentes: ")
		leia(n1, n2)

		se (n1==n2){
			escreva("\nNúmeros iguais não, digite dois diferentes.\n")
			
		}senao{
			se (n1>n2){
				escreva("\n", n1, " é maior que ", n2, "\n")
		
			}senao{
				escreva("\n", n2, " é maior que ", n1, "\n")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 350; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */