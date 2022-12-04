programa {

	inclua biblioteca Util --> u
	funcao inicio() {
		inteiro matriz[3][4], i, j, impar, linha[3], coluna[4]

//Definir valores para poder somar Linha e Coluna
		impar = 0
		para(i=0; i<3; i++){
			linha[i] = 0
		}
		
		para(j=0; j<4; j++){
			coluna[j] = 0
		}

//Gerar Matriz / Contar Impar / Armazenar soma Linha e Coluna
		escreva("Matriz gerada:\n\n")
		para(i=0; i<3; i++){
			para(j=0; j<4; j++){
				matriz[i][j] = u.sorteia(1, 200)
				se(matriz[i][j]%2!=0){
					impar = impar + matriz[i][j]
				}
				escreva(matriz[i][j], " ")
				linha[i] = linha[i] + matriz[i][j]
				coluna[j] = coluna[j] + matriz[i][j]
			}
			escreva("\n")
		}
//RESULTADO


//Contar Impar
		escreva("\n--------------------------------------------------------")
		escreva("\nA soma de todos os números Ímpares da Matriz é ", impar)
		escreva("\n--------------------------------------------------------")

//Soma Linha
		escreva("\nSoma das Linhas:\n")
		para(i=0; i<3; i++){
			escreva("\nLinha ", i+1, ": ", linha[i])
		}
		escreva("\n--------------------------------------------------------")

//Soma Coluna
		escreva("\nSoma das Colunas:\n")
		para(j=0; j<4; j++){
			escreva("\nColuna ", j+1, ": ", coluna[j])
		}
		escreva("\n--------------------------------------------------------")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 482; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */