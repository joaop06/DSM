programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real xA, yA, xB, yB, dist
		escreva("Informe x e y do ponto A: ")
		leia(xA, yA)
		escreva("Informe x e y do ponto B: ")
		leia(xB, yB)
		dist = mat.raiz((mat.potencia(xB - xA, 2) + mat.potencia(yA - yB, 2)), 2)
		escreva("A distância ente o ponto A e B é ", dist)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 347; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */