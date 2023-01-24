programa
{
	
	funcao inicio()
	{
		inteiro vet1[5], vet2[5], i, soma[5]


		para(i=0; i<5; i++){
			escreva("\nDigite um número para o Vetor 1: ")
			leia(vet1[i])
			escreva("Digite um número para o Vetor 2: ")
			leia(vet2[i])
		}

		escreva("\nSegue a soma dos índices de cada vetor.")
		para(i=0; i<5; i++){
			soma[i] = vet1[i] + vet2[i]
			escreva("\n", soma[i])
		}
		

		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 237; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */