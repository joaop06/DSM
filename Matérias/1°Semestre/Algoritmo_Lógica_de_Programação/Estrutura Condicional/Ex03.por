programa
{
	
	funcao inicio()
	{
		inteiro n, i
		
		escreva("Digite o número da tabuada: ")
		leia(n)

		enquanto (n!=-1){
			para (i = 1; i<=10; i++){
			escreva(n," x ", i, " = ", n*i, "\n")
			}
			escreva("Digite um número: ")
			leia(n)
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */