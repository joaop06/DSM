programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		// João Pedro Borges Araújo
		// RA: 1091392223001

		real cm, pol

		escreva("Informe a distância percorrida (em cm): ")
		leia(cm)

		pol = cm / 2.54

		escreva("\n\nA distência percorrida pelo atleta é:")
		escreva("\nEm centímetros: ", cm, "\nEm polegadas: ", mat.arredondar(pol, 2), "\n")
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */