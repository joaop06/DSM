programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real n, raiz
		escreva("Digite um número: ")
		leia(n)
		raiz = mat.raiz(n, 2)
		escreva("A raiz de ", n, " é ", mat.arredondar(raiz, 2))
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */