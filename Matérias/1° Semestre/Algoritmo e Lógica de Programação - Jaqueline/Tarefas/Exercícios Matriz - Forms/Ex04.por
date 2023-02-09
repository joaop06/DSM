programa
{
	inclua biblioteca Util --> u
	funcao inicio()
	{
		inteiro matriz[5][5], i, j, ajudaA[5], ajudaB[5], ajudaC[5]


	//Gerar Matriz
		escreva("\n----------------------------------")
		escreva("\n\n	Matriz Inicial\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				matriz[i][j] = u.sorteia(10, 99)
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}

//----------------------------------------------------------------------------------------------------------------------------------------
//A)
	//Salvando dados da linha 1
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(i==1){
					ajudaA[j] = matriz[i][j]
				}
			}
		}
		
	//Atualizando dados linha 2 e 4
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(i==4){
					matriz[i-3][j] = matriz[i][j]
					matriz[i][j] = ajudaA[j]
				}
			}
		}

	//Exibindo resultado questão A
		escreva("\n\n----------------------------------\n")
		escreva("A) Baseada na Matriz Inicial\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}


//----------------------------------------------------------------------------------------------------------------------------------------
//B)
	//Salvando dados da coluna 1 --> 0
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(j==0){
					ajudaB[i] = matriz[i][j]
				}
			}
		}
			
	//Atualizando dados coluna 1 e 4 --> 0 e 3
		escreva("\n\n----------------------------------\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(j==3){
					matriz[i][j-3] = matriz[i][j]
					matriz[i][j] = ajudaB[i]
				}
			}
		}

	//Exibindo resultado questão B
		escreva("B) Baseada na Matriz A\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}

//----------------------------------------------------------------------------------------------------------------------------------------
//C)
	//Salvando dados Diagonal Principal
		para(i=0; i<5; i++){
			ajudaC[i] = matriz[i][i]
		}

	//Atualizando dados Diagonal Secundária
		para(i=0; i<5; i++){
			matriz[i][i] = matriz[i][4-i]
			matriz[i][4-i] = ajudaC[i]
		}

	//Exibindo resultado questão C
		escreva("\n\n----------------------------------\n")
		escreva("C) Baseada na Matriz B\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}

//----------------------------------------------------------------------------------------------------------------------------------------
//D)
		escreva("\n-------------------------------------------------------------------------------------------------------------------")
		escreva("\n\n	A Matriz Final é a mesma exibida na questão C, sendo cada questão baseada na Matriz anterior:\n\n")
		escreva("						------------------\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(j==0){
					escreva("						| ", matriz[i][j], " ")
				}senao{
					se(j==4){
						escreva(matriz[i][j], " |")
					}senao{
						escreva(matriz[i][j], " ")
					}
				}
			}
			escreva("\n")
		}
		escreva("						------------------\n\n")
		escreva("-------------------------------------------------------------------------------------------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2746; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ajudaB, 6, 41, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */