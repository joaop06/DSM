programa
{
	
	funcao inicio()
	{
		inteiro num[100], i


		para(i=0; i<100; i++){

			se(i%2==0){
				num[i] = 1

			}senao{
				num[i] = 0
			}
		}

		para(i=0; i<100; i++){
			escreva("Posição ", i, ": ", num[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 204; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */