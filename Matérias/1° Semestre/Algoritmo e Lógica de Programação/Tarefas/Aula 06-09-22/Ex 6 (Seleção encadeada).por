programa
{
	
	funcao inicio()
	{
		inteiro n1, n2, conta
		cadeia op
		escreva("Digite um número: ")
		leia(n1)
		escreva("Mais um número: ")
		leia(n2)
		escreva("Utilize os sinais para selecionar.\n+ --> Adição\n- --> Subtração\n* --> Multiplicação\n/ --> Divisão\nInforme a operação desejada: ")
		leia(op)

		se (op=="+"){
			conta = n1 + n2
			escreva("A soma entre ", n1, " e ", n2, " é ", conta)
		}

		se (op=="-"){
			conta = n1 - n2
			escreva("A diferença entre ", n1, " e ", n2, " é ", conta)
		}

		se (op=="*"){
			conta = n1 * n2
			escreva("A multiplicação entre ", n1, " e ", n2, " é ", conta)
		}

		se (op=="/"){
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
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */