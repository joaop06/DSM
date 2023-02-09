programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		real l1, l2, l3, perimetro, area, volume, diagonal

		escreva("Lado 1: ")
		leia(l1)
		escreva("Lado 2: ")
		leia(l2)
		escreva("Lado 3: ")
		leia(l3)


		perimetro = (l1 + l2 + l3) * 4

		area = (2 * l1 * l2) + (2 * l1 * l3) + (2 * l2 * l3)

		volume = l1 * l2 * l3

		diagonal = mat.potencia(l1, 2) + mat.potencia(l2, 2) + mat.potencia(l3, 2)
		diagonal = mat.raiz(diagonal, 2)

		
		
		escreva("\nDado as medidas do paralelepípedo:\n")
		escreva("\nPerimetro: ", mat.arredondar(perimetro, 2), "\nÁrea: ", mat.arredondar(area, 2), "\nVolume: ", mat.arredondar(volume, 2), "\nDiagonal: ", mat.arredondar(diagonal, 2))
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 661; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */