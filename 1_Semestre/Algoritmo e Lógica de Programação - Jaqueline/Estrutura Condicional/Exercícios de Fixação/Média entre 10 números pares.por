programa
{
	
	funcao inicio()
	{
		inteiro n, i, cont
		real media, soma
		
		soma = 0
		i = 1
		cont = 0

		enquanto (i<10){
			escreva("Digite mais um número: ")
			leia(n)
			se (n%2==0){
				soma = soma + n
				cont = cont + 1
			}
			i = i + 1
			
		}
		escreva("\nOk, já foram digitados os dez números que preciso!")
		media = soma / cont
		escreva("\nA média entre eles é ", media)

	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {n, 6, 10, 1}-{media, 7, 7, 5}-{soma, 7, 14, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */