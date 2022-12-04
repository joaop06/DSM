programa
{

	//Para um campeonato de salto, fazer um algoritmo (em Portugol) que leia a altura do salto, em metros, de 70 atletas e armazene em um vetor.
	//Após a leitura de todos os dados, faça: imprima a média dos saltos do campeonato, e quantos atletas com salto acima dessa média;
	//E substitua todos os saltos com valores negativos por 0 (zero).﻿
	inclua biblioteca Matematica
	funcao inicio()
	{
		const inteiro tam = 3
		real vet[tam], soma=0.0, media=0.0
		inteiro i, acimaMedia=0

		para(i=0; i<tam; i++){
			escreva("Salto Atleta ", i+1, ": ")
			leia(vet[i])
			se(vet[i]<0){
				vet[i] = 0.0
			}
			soma = soma + vet[i]
		}
		media= Matematica.arredondar((soma/tam), 2)
		
		para(i=0; i<tam; i++){
			se(vet[i]>media){
				acimaMedia++
			}
		}
		escreva("\n------------------------------------------\n")
		escreva("   Média da Altura: ", media, " m.\n")
		escreva("   ", acimaMedia, " dos atletas saltaram acima da média.")
		escreva("\n------------------------------------------\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 384; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */