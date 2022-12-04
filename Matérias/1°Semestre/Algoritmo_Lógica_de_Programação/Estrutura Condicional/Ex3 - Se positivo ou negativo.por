programa
{
	
	funcao inicio()
	{
		inteiro num
				
		escreva("Digite um número positivo ou negativo: ")
		leia(num)

		se (num>0){
			escreva("\nSeu número é positivo.")
		}senao{
			se (num==0){
				escreva("\nNúmero 0 é neutro, não vale!")
			}senao{
				escreva("\nSeu númeoro é negativo.")
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 152; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */