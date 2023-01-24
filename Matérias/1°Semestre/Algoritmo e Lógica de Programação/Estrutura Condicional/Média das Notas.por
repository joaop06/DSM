programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real n1, n2, n3, n4, soma, media
		inteiro i

		i = 0
		enquanto (i < 3){
			escreva("\nNotas: \n")
			leia(n1, n2, n3, n4)
			media = (n1 + n2 + n3 + n4) / 4
			escreva("\nA média é ", mat.arredondar(media, 2))
			i = i + 1
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 129; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */