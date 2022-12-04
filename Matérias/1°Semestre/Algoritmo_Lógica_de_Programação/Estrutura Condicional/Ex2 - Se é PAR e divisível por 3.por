programa
{
	
	funcao inicio()
	{
		inteiro num, par, por3
		escreva("Digite um número: ")
		leia(num)

		par = num%2
		por3 = num%3

		se (par==0 e por3==0){
			escreva("\nO número ", num, " é PAR e divisível por 3!")
			
		}senao{
			se (par==0){
				escreva("\nO número ", num, " é somente PAR.")
			}

			se (por3==0){
				escreva("\nO número ", num, " é somente divisível por 3.")
			}

			se (par!=0 e por3!=0){
				escreva("\nO número ", num, " não é PAR nem divisível por 3.")
			
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 236; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */