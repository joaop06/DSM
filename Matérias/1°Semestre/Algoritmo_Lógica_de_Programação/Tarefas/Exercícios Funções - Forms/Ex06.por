programa
{
	inclua biblioteca Matematica --> mat
	const inteiro tam = 5
	funcao inicio()
	{
		inteiro i, vet[tam], s

		para(i=0; i<tam; i++){
			escreva("\nInforme a posição ", i, " do vetor: ")
			leia(vet[i])
		}
		escreva("\n\nA soma dos elementos do vetor é ", mat.arredondar(somavet(vet), 2), "\n")		
	}

	funcao real somavet(inteiro vet[]){
		inteiro i
		real media, soma

		soma = 0
		para(i=0; i<tam; i++){
			soma = soma + vet[i]
		}

		media = soma/tam
		retorne media
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 378; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */