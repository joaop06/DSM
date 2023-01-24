programa
{
	
	funcao inicio()
	{
		inteiro n

		escreva("Digite um número: ")
		leia(n)

		escreva("O fatorial de ", n, " é ", fatorial(n))
	}

	funcao inteiro fatorial(inteiro x){
		inteiro i, fat

		fat = x
		para(i=1; i<x; i++){
			fat = fat * i
		}

		retorne fat
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 259; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */