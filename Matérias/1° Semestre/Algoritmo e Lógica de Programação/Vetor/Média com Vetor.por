programa
{
	
	funcao inicio()
	{
		real VClasse[10], soma, media
		inteiro i, AcimaMedia

		soma = 0
		AcimaMedia = 0

		para(i=0; i<10; i++){
			escreva("Digite a ", i+1, "° Nota: ")
			leia(VClasse[i])
			soma = soma + VClasse[i]
		}

		media = soma / 10
		para(i=0; i<10; i++){
			se (VClasse[i] > media){
				AcimaMedia++
			}
		}


		escreva("A média da sala é: ", media)
		escreva("\nA quantidade de notas acima da média é: ", AcimaMedia)
		
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 395; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */