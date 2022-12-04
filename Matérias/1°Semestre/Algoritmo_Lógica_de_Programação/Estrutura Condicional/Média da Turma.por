programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro cont
		real media, soma, MediaTurma

		cont = 0
		soma = 0.0
		enquanto (cont < 3){
			escreva("Digite a média do aluno: ")
			leia(media)
			soma = soma + media
			cont = cont + 1
		}
		MediaTurma = soma / cont
		escreva("A média da turma é ", mat.arredondar(MediaTurma, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 366; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */