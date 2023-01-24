programa
{
	funcao inicio ()
	{
		inteiro n[20], maior, menor, i
		
		para(i=0; i<20; i++){
			escreva("Vetor ", i, ": ")
			leia(n[i])
		}
		
		maior = n[0]
		menor = n[0]
		para(i=1; i<20; i++){
			se(n[i]>maior){
				maior = n[i]
			}
			
			se(n[i]<menor){
				menor = n[i]
			}
		}
		
		escreva("\n\nDentre os valores informados:\nO Maior é ", maior, "\nO menor é ", menor)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */