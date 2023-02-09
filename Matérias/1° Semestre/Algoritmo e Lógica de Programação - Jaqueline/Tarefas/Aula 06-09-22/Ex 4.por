programa
{
	
	funcao inicio()
	{
		real n1, n2, n3, conta1, conta2, conta3
		escreva("Digite um número: ")
		leia(n1)
		escreva("Segundo número: ")
		leia(n2)
		escreva("Terceiro e último: ")
		leia(n3)
		conta1 = n1 + n2
		conta2 = n2 + n3
		conta3 = conta1 * conta2
		escreva(n1, " + ", n2, " = ", conta1)
		escreva("\n", n2, " + ", n3, " = ", conta2)
		escreva("\n", conta1, " * ", conta2, " = ", conta3)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 419; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */