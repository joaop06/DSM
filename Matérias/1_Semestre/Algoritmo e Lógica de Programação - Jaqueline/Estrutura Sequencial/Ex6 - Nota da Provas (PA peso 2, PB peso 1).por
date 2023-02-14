programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		cadeia aluno
		real media, pa, pb
		escreva("Aluno: ")
		leia(aluno)
		escreva("Nota Prova A: ")
		leia(pa)
		escreva("Nota Prova B: ")
		leia(pb)
		media = ((pa * 2) + pb * 1) / 3
		escreva("A média do aluno ", aluno, " é ", mat.arredondar(media, 1))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */