programa
{
	
	funcao inicio()
	{
		const inteiro x = 5
		inteiro vet[x], vetnovo[x], i

		para(i=0; i<x; i++){
			escreva("Vetor ", i, ": ")
			leia(vet[i])
			vetnovo[(x - 1) - i] = vet[i]
		}
		escreva("\n--------------------------------")
		escreva("\nO novo vetor é:\n\n")
		para(i=0; i<x; i++){
			escreva(vetnovo[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 326; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */