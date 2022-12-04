programa
{
	funcao inicio ()
	{
		inteiro vet[30], i, vetnovo[30]
		
		para(i=0; i<30; i++){
			escreva("Digite um número: ")
			leia(vet[i])
		}
		
		para(i=0; i<30; i++){
			se(i%2==0){
				vetnovo[i] = vet[i] * 2
			}senao{
				vetnovo[i] = vet[i] * 3
			}
		}
		
		escreva("Novo Vetor:\n\n")
		para(i=0; i<30; i++){
			escreva("Vetor ", i, ": ", vetnovo[i], "\n")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 181; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */