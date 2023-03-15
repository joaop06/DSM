programa
{
	
	funcao inicio()
	{
		inteiro n

		escreva("Digite um número: ")
		leia(n)
		
		escreva("\nO número ", n, primo(n))
		

	}

	funcao cadeia primo(inteiro x){

		inteiro cont, i
		cadeia ajuda

		cont = 0
		para(i=1; i<=x; i++){
			se(x%i==0){
				cont++
			}
		}

		se(cont>2){
			ajuda = " não é primo."
		}senao{
			ajuda = " é primo!"
		}

		retorne ajuda
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 354; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */