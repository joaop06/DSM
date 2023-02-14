programa {
	
	inclua biblioteca Util --> u
	funcao inicio() {
		inteiro matriz[5][5], i, j, ajuda[5]
		
//Gerar Matriz
		escreva("\nMatriz Gerada\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				matriz[i][j] = u.sorteia(10, 99)
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}
		escreva("\n\n----------------------------------\n")

//Salvando dados da coluna 2
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(j==2){
					ajuda[i] = matriz[i][j]
				}
			}
		}
		
//Atualizando dados coluna 2 e 4
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				se(j==4){
					matriz[i][j-2] = matriz[i][j]
					matriz[i][j] = ajuda[i]
				}
			}
		}

//Gerar Nova Matriz
		escreva("\nNova Matriz Gerada\n\n")
		para(i=0; i<5; i++){
			para(j=0; j<5; j++){
				escreva(matriz[i][j], " ")
			}
			escreva("\n")
		}
    }
}