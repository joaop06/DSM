programa
{
	funcao inicio ()
	{
		inteiro num, unidade, dezena, centena
		
		escreva("Digite um número com três dígitos: ")
		leia(num)
		
		
		enquanto (num < 100 ou num > 999){
		    se (num < 100){
			    escreva("\nNúmero digitado é menor que 100. Digite novamente: ")
		    }senao{
			    escreva("\nNúmero digitado é maior que 999. Digite novamente: ")
			}
		    leia(num)
		}
		unidade = num % 10
		escreva("Unidade: ", unidade)
		
		dezena = ((num - unidade) / 10) % 10
		escreva("\nDezena: ", dezena)
		
		centena = ((num - unidade - dezena) / 100) % 10
		escreva("\nCentena: ", centena)	

		escreva("\nO número ", num, " invertido ficaria ", unidade, dezena, centena)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 383; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */