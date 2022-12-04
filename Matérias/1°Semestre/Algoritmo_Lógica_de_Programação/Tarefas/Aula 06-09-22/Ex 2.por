programa
{
	inclua biblioteca  Matematica --> mat
	funcao inicio()
	{
		real raio, volume
		escreva("Raio: ")
		leia(raio)
		volume = (4 * mat.PI * (mat.potencia(raio, 3)) / 3)
		escreva("Dado o raio ", raio, ", o volume da esfera é ", mat.arredondar(volume, 2), ".")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 279; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */