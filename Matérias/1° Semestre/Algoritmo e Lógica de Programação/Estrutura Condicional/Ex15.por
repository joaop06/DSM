programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, conta, op
		 
		escreva("Digite o primeiro número: ")
		leia(n1)
		escreva("Digite o segundo número: ")
		leia(n2)

		escreva("\nUtilize os sinais para selecionar.\n1 - Adição\n2 - Subtração\n3 - Multiplicação\n4 - Divisão\n\nInforme a operação desejada: ")
		escreva("Escolha a operação matemática desejada: ")
		leia(op)

		escolha (op)
		{
			caso 1:
			conta = n1 + n2
			escreva("A soma entre ", n1, " e ", n2, " é ", conta)
			pare

			caso 2:
			conta = n1 - n2
			escreva("A diferença entre ", n1, " e ", n2, " é ", conta)

			caso 3:
			conta = n1 * n2
			escreva("A multiplicação entre ", n1, " e ", n2, " é ", conta)
			pare

			caso 4:
			conta = n1 / n2
			escreva("A divisão entre ", n1, " e ", n2, " é ", conta)
			
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 367; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */