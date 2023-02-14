programa
{
	const inteiro tam = 5
	funcao inicio()
	{
		inteiro i, vet[tam], s

		para(i=0; i<tam; i++){
			escreva("\nInforme a posição ", i, " do vetor: ")
			leia(vet[i])
		}
		escreva("\n\nA soma dos elementos do vetor é ", somavet(vet), "\n")		
	}

	funcao inteiro somavet(inteiro vet[]){
		inteiro soma, i

		soma = 0
		para(i=0; i<tam; i++){
			soma = soma + vet[i]
		}
		retorne soma
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 403; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */