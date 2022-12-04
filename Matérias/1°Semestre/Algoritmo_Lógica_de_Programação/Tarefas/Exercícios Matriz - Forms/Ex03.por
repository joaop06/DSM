programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[10][10], i, j, maior[10], menor[10]

		
		para(i=0; i<10; i++){
			maior[i] = 0
			menor[i] = 0
		}
		
		para(i=0; i<10; i++){
			para(j=0; j<10; j++){
				matriz[i][j] = u.sorteia(1, 1000)
				escreva(matriz[i][j], " ")

				menor[j] = matriz[i][j]
					
				se(matriz[i][j]>maior[i]){
					maior[i] = matriz[i][j]
				}
			}
			escreva("\n")
		}

		para(i=0; i<10; i++){
			para(j=0; j<10; j++){
				se(matriz[i][j]<menor[j]){
					menor[j] = matriz[i][j]
				}
			}
		}

//Escreva Maior de cada Linha
		escreva("\n-----------------------------------------------")
		escreva("\n-----------------------------------------------")
		escreva("\nMaiores de cada linha:\n")
		para(i=0; i<10; i++){
			escreva("\nLinha ", i+1, ": ", maior[i])
		}

//Escreva Menor de cada Coluna
		escreva("\n-----------------------------------------------")
		escreva("\nMenores de cada coluna:\n")
		para(j=0; j<10; j++){
			escreva("\nColuna ", j+1, ": ", menor[j])

		}
		escreva("\n-----------------------------------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 177; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */