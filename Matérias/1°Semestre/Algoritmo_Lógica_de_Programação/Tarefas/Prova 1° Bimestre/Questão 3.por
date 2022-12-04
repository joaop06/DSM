programa
{
		
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		// João Pedro Borges Araújo
		// RA: 1091392223001

		inteiro n, cont_posit, soma, impar
		real posit

		escreva("Quando quiser parar digite '-1'.\nDigite um número: ")
		leia(n)

		posit = 0
		cont_posit = 0
		soma = 0
		impar = 0
		enquanto(n!=-1){
			se(n%2==0){
				posit = posit + n
				cont_posit++
			}

			se(n>=15 e n<=35){
				soma = soma + n
			}

			se(n%2!=0){
				impar++
			}
			escreva("Digite um número: ")
			leia(n)
		}

		posit = posit / cont_posit


		escreva("\na) A média entres os números positivos é: ", mat.arredondar(posit, 2))
		escreva("\nb) A soma dos números informados entre 15 e 35 é: ", soma)
		escreva("\nc) A quantidade de números ímpares informados foi: ", impar)
}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 563; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */