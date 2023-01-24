programa
{
	
	funcao inicio()
	{
		inteiro n, anterior, atual, sucessor


		anterior = 0
		atual = 1
		sucessor = 1

		escreva("\nDigite um número: ")
		leia(n)

		enquanto(sucessor<n){
			escreva(" ", sucessor)
			sucessor = anterior + atual
			anterior = atual
			atual = sucessor

  }

}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 283; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */