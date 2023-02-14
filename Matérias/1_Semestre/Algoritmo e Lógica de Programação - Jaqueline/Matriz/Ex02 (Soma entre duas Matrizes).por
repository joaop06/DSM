programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		const inteiro tam = 3
		inteiro mat1[tam][tam], mat2[tam][tam], i, j, soma, ale, matsoma[tam][tam]
		
		
		soma = 0
//Gerar Matriz 1
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				mat1[i][j] = u.sorteia(1, 1000)
				soma = soma + mat1[i][j]
			}
		}
//Gerar Matriz 2
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				mat2[i][j] = u.sorteia(1, 1000)
			}
		}
//--------------------------------------------------------------------------------------------------------------
//Soma das Matrizes
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				matsoma[i][j] = mat1[i][j] + mat2[i][j]
			}
		}

//--------------------------------------------------------------------------------------------------------------
//Escrever Matriz 1
		escreva("\nMatriz 1\n")
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				escreva(mat1[i][j], " ")
			}
			escreva("\n")
		}
//Escrever Matriz 2
		escreva("\nMatriz 2\n")
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				escreva(mat2[i][j], " ")
			}
			escreva("\n")
		}

		escreva("-----------------------\n\n\n")

//--------------------------------------------------------------------------------------------------------------
//Escrever Soma das Matrizes
		escreva("Matriz formada pela soma das matrizes anteriores:\n\n")
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				escreva(matsoma[i][j], " ")
			}
			escreva("\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 89; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */