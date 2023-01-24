programa
{
	funcao inicio ()
	{
		inteiro notas[50], i, soma, acimaMedia, abaixoMedia, margemMedia
		real media
		
		
		soma = 0
		acimaMedia = 0
		abaixoMedia = 0
		margemMedia = 0
		
		
		para(i=0; i<50; i++){
			escreva("Insira a ", i++, "° nota: ")
			leia(notas[i])
			soma = soma + notas[i]
		}
		
		media = soma / 50
		
		para(i=0; i<50; i++){
			media = media + (media * (10/100))
			se(notas[i]>media){
				acimaMedia++
			}senao{
				media = media - (media * (10/100))
				se(notas[i]<media){
					abaixoMedia++
				}senao{
					margemMedia++
				}
			}
		}
		
		escreva("A média é ", media)
		escreva("\n\nDentre as notas informadas existem:")
		escreva("\n", acimaMedia, " notas acima da média")
		escreva("\n", abaixoMedia, " notas abaixo da média")
		escreva("\n", margemMedia, " notas dentro da margem da média")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 145; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */