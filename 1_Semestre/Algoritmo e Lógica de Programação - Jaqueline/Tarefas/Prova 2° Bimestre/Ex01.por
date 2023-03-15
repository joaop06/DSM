programa
{
	
	//Fazer um algoritmo (em Portugol) que leia uma matriz 15x15 e multiplique cada elemento da linha da matriz pelo 1º elemento da respectiva linha.
	//Além disso, trocar a coluna 12 com a coluna referente ao último dígito do seu RA.
	//Por fim, gerar um vetor com todos os elementos pares da matriz. Mostrar a matriz e o vetor.
	inclua biblioteca Util
	funcao inicio()
	{
		const inteiro tam = 15
		inteiro mat[tam][tam], i, j, multlinha1[tam], ajudalinha12[tam], vetPar[225]

		escreva("Matriz Original.\n\n")
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				mat[i][j] = Util.sorteia(1, 1000)
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}
		escreva("------------------------------------------------------------------------\n\n\n")
//Multiplica pelo 1º elemento da linha.

		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				multlinha1[i] = mat[i][0]
			}
		}

//Troca linha 12 --> Final RA 1.
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				ajudalinha12[i] = mat[i][12]
			}
		}
		//Salva coluna 12 em vetor auxiliar
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				mat[i][12] = mat[i][1]
			}
		}
		//Grava valores da coluna 12 na coluna 1
		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				mat[i][1] = ajudalinha12[i]
			}
		}
		escreva("------------------------------------------------------------------------\n\n\n")
		escreva("Matriz Final.\n\n")

		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				se(mat[i][j]%2==0){
					vetPar[i] = mat[i][j]
				}
			}
		}


		para(i=0; i<tam; i++){
			para(j=0; j<tam; j++){
				escreva(mat[i][j], " ")
			}
			escreva("\n")
		}

		escreva("\n\nVetor Números Par.\n\n")
		para(i=0; i<225; i++){
			se(vetPar[i]!=0){
				escreva(vetPar[i]," ")
			}
		}
		escreva("\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 12; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */