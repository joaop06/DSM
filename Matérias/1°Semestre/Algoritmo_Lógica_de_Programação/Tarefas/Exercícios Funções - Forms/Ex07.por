programa
{
	inclua biblioteca Util --> u
	inteiro i, j, linha
	
	funcao inicio()
	{
		inteiro matriz[3][3], num, result

		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				matriz[i][j] = u.sorteia(1, 1000)
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}
		escreva("---------------------------------------------------------------")
		escreva("\n\nUma matriz de 20x20 foi gerada com números entre 1 e 1000.\n")

		para(i=0; i<5; i++){
			escreva("\nDigite um número para buscar na matriz: ")
			leia(num)

			result = busca_matriz(matriz, num)
			se(result==-1){
				escreva("\nNão foi encontrado o valor na matriz.\n\n")
			}senao{
				escreva("\nO valor desejado está na linha ", result, "\n\n")
			}
		}
	}

	funcao inteiro busca_matriz(inteiro matriz[][], inteiro x){

		linha = -1
		para(i=0; i<3; i++){
			para(j=0; j<3; j++){
				se(matriz[i][j]==x){
					linha = i+1
					pare
				}
			}
		}
		retorne linha
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 702; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {linha, 4, 15, 5}-{matriz, 8, 10, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */