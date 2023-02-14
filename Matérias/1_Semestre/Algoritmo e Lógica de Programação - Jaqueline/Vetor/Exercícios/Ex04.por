programa
{
	
	funcao inicio()
	{
		inteiro num[30], i

		num[0] = 1
		num[1] = 1
		escreva("1° Número: ", num[0], "\n2° Número: ", num[1])
		para(i=2; i<30;i++){
			num[i] = num[i - 2] + num[i - 1]
			escreva("\n", i+1, "° Número: ", num[i])
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 133; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */