programa
{
	
	funcao inicio()
	{
		real n, soma, numer, denom, i, j

		escreva("Digite a quantidade de termos: ")
		leia(n)

		soma = 0
		numer = 0
		denom = 3
		

		para(numer=1; numer<=n; numer++){
			soma = soma + (numer/denom)
			denom += 2
		}
		escreva(soma)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 263; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */