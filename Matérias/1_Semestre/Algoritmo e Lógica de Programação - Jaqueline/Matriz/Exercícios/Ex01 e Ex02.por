programa
{
	
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro mat[5][5], i, j

		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				mat[i][j] = u.sorteia(1, 100)
			}

		}
		limpa()


//Gerar Matriz
		escreva("\nMatriz:\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}

//Diagonal Principal
		escreva("\n\n-------------------------------------\n")
		escreva("\nDiagonal Principal: ")
		para(i=0; i<5; i++){
			escreva(mat[i][i], " ")
			
		}
		escreva("\n")


//Diagonal Secundária
		escreva("\nDiagonal Secundária: ")
		para(i=0; i<5; i++){
			escreva(mat[i][4-i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 432; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */