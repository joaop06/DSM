programa
{
	inclua biblioteca Matematica --> mat
	
	funcao inicio(){

		real quant, ham, chee, fritas, refri, milk, soma, desconto, total
		escreva("Você terá 5% de desconto acima de R$ 50,00")
		escreva("\nInforme a quantidade de cada item consumido")

		escreva("\n\nHamburguer (R$ 3,00): ")
		leia(quant)
		ham = 3 * quant

		escreva("\nCheeseburguer (R$ 2,50): ")
		leia(quant)
		chee = 2.5 * quant

		escreva("\nFritas (R$ 2,50): ")
		leia(quant)
		fritas = 2.5 * quant

		escreva("\nRefrigerante (R$ 1,00): ")
		leia(quant)
		refri = 1 * quant

		escreva("\nMilkshake (R$ 3,00): ")
		leia(quant)
		milk = 3 * quant

		soma = ham + chee + fritas + refri + milk
		desconto = (soma / 100) * 5

		se (soma >= 50){
			total = soma - desconto
			escreva("\n-----------------------------")
			escreva("\nVocê recebeu 5% de desconto!\nTotal: R$ ", total)

		}senao{
			escreva("\n-----------------------------")
			escreva("\nTotal: R$ ", soma)

		
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 441; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {ham, 7, 14, 3}-{chee, 7, 19, 4}-{soma, 7, 46, 4}-{desconto, 7, 52, 8}-{total, 7, 62, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */