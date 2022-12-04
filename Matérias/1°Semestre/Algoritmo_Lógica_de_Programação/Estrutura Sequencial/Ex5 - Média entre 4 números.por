programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro n1, n2, n3, n4, soma
		real media
		escreva("1° Número: ")
		leia(n1)
		escreva("2° Número: ")
		leia(n2)
		escreva("3° Número: ")
		leia(n3)
		escreva("4° Número: ")
		leia(n4)
		soma = n1 + n2 + n3 + n4
		media = soma / 4
		escreva("A soma é ", soma, "\nA média é ", mat.arredondar(media, 2))
		
		
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