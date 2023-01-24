programa
{
	
	funcao inicio()
	{
		inteiro n, contpar
		real media, soma

		soma = 0
		contpar = 0
		escreva("Digite mais um número: ")
		leia(n)
				
		enquanto (n!=0){
			se (n%2==0){
				soma = soma + n
				contpar = contpar + 1
			}
			escreva("Digite mais um número: ")
			leia(n)
		}
		escreva("\nOk, já foram digitados os números que preciso!")
		media = soma / contpar
		escreva("\nA média entre eles é ", media)
		}

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 173; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */