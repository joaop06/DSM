programa
{
	funcao inicio ()
	{
		inteiro vet[20], impar[20], par[20], i, contpar, contimpar
		
		
		contpar = 0
		contimpar = 0
		para(i=0; i<20; i++){
			escreva("Vetor ", i, ": ")
			leia(vet[i])
			limpa()
			
			se(vet[i]%2==0 e vet[i]!=0){
				contpar++
				par[contpar - 1] = vet[i]
			}
			se(vet[i]%2!=0 e vet[i]!=0){
				contimpar++
				impar[contimpar - 1] = vet[i]
			}
		}
		
		escreva("---------------------------------------------------")
		escreva("\nValores PAR:\n")
		para(i=0; i<contpar; i++){
			escreva(par[i], "\n")
			
			se(contpar>1){
			escreva("Foram informados ", contpar, " valores pares")
		}senao{
			se(contpar==1){
				escreva("Foi informado ", contpar, " valor par")
			}senao{
				escreva("NÃ£o foi informado nenhum valor par")
			}
		}
		}
		
		escreva("---------------------------------------------------")
		
		escreva("\nValores IMPAR:\n")
		para(i=0; i<contimpar; i++){
			escreva(impar[i], "\n")
			
			se(contimpar>1){
			escreva("Foram informados ", contimpar, " valores impares")
		}senao{
			se(contimpar==1){
				escreva("Foi informado ", contimpar, " valor impar")
			}senao{
				escreva("NÃ£o foi informado nenhum valor impar")
			}
		}
		}
		escreva("---------------------------------------------------")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 34; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */