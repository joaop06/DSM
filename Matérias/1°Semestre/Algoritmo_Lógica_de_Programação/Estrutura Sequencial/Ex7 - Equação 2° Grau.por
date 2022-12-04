programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro A, B, C, delta, X1, X2
		escreva("Valor A: ")
		leia(A)
		escreva("Valor B: ")
		leia(B)
		escreva("Valor C: ")
		leia(C)
		delta = mat.potencia(B, 2) - (4 * A * C)
		X1 = (-B + mat.raiz(delta, 2)) / (2 * A)
		X2 = (-B - mat.raiz(delta, 2)) / (2 * A)
		escreva("X1 = ", X1, "\nX2 = ", X2)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 139; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {delta, 6, 19, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */