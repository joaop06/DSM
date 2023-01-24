programa
{
	
	funcao inicio()
	{
		inteiro mat[3][3], i, j, soma

		soma = 0
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				escreva("Digite um elemento da matriz: ")
				leia(mat[i][j])
				soma = soma + mat[i][j]
			}
		}
		limpa()

		escreva("\nA soma de todos os elementos da matriz é ", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 256; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */