programa
{
	
	funcao inicio()
	{
		inteiro num, n, i
		escreva("Digite um número: ")
		leia(num)
		limpa()

		
		escreva("Pensei em um número, tente advinhar: ")
		leia(n)
		i = 1
		enquanto (n!=num){
			se (n>num){
				escreva("\nO chute foi alto")				
			}senao{
				escreva("\nO chute foi baixo")
			}
			escreva("\nTente de novo: ")
			leia(n)
			i++
		}
		escreva("Parabéns, você acertou em ", i, " tentativas!")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 11; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */