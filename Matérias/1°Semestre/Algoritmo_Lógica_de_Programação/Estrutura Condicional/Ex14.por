programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro opcao, num1
		real num, total_vendas, carros_vendidos, valor_carros_vendidos, comissao_venda
		cadeia funcionario
		escreva("Escolha a opção desejada: ")
		escreva("\n\n1 - Calcular o quadrado de um número")
		escreva("\n2 - Descobrir se número é par ou ímpar")
		escreva("\n3 - Escrever a palavra 'SONHO'")
		escreva("\n4 - Calcular o salário do vendedor de carros")
		escreva("\n5 - Sair do programa")
		escreva("\n\nDigite a opção desejada: ")
		leia(opcao)

		enquanto (opcao>5 ou opcao<1){
			escreva("Opção inválida!\nDigite uma opção válida: ")
			leia(opcao)
		}
			
		
		escolha (opcao)
		{
			caso 1:
			escreva("Digite um número: ")
			leia(num)
			escreva("O quadrado de ", num, " é ", mat.potencia(num, 2))
			pare
			
			caso 2:
			escreva("Digite um número: ")
			leia(num1)
			se ((num1%2)==0){
				escreva("\nO número ", num1, " é par!")
			}senao{
				escreva("\nO número ", num1, " é impar!")
			}
			pare

			caso 3:
			escreva("SONHO!!")
			pare

			caso 4:
			escreva("Informe o nome do funcionário: ")
			leia(funcionario)
		
			escreva("Total de carros vendidos: ")
			leia(carros_vendidos)
			valor_carros_vendidos = carros_vendidos * 50			//Calcula a comissão sobre a quantidade de vendas * R$ 50 por unidade
		
			escreva("Valor Total em vendas: R$ ")
			leia(total_vendas)
			comissao_venda = (total_vendas / 100) * 5			//Calcula os 5% sobre o valor total das vendas

			escreva("\n----------------------------------------")
			escreva("\nFuncionário: ", funcionario, "\nSalário Fixo: R$ 500,00\nComissão Vendas (R$ 50,00 un): R$ ", valor_carros_vendidos, "\nComissão Total Vendas: R$ ", comissao_venda, "\n\nTotal: R$ ", 500 + valor_carros_vendidos + comissao_venda)
			pare

			caso 5:
			escreva("Tchauu!!")
			
		}
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 727; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */