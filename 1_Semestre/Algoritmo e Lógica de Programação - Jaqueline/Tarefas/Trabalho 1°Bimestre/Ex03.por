programa
{
	
	funcao inicio()
	{
		inteiro n, cont, soma, maior

		soma = 0
		escreva("Digite um número: ")
		leia(n)

		cont = 0
		maior = 0
		enquanto (n!=0){
			se (n==0){
				pare
			}
			se (n>=10 e n<=50){
				soma = soma + n
			}

			se (n%3==0){
				cont = cont + 1
			}

			se (n>maior){
				maior = n
			}
			
			escreva("Digite um número: ")
			leia(n)
		}
		escreva("\nA soma dos núemeros digitados entre 10 e 50 é ", soma)
		escreva("\nForam digitados ", cont, " números.")
		escreva("\nO maior número digitado foi ", maior, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 555; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */