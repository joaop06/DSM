programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Util
	funcao inicio()
	{
		real raio, pi, area, sort_raio
		
		//escreva("Raio: ")
		//leia(raio)
		raio = Util.sorteia(1, 99)
		escreva("O raio sorteado foi R = ", raio, "\n")
		area = mat.potencia(raio, 2) * mat.PI
		escreva("A área do círculo é A = ", mat.arredondar(area, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */