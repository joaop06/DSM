programa
{
	inclua biblioteca Matematica --> mat
	funcao inicio()
	{
		inteiro i
		cadeia motorista
		real km_in, km_fi, L, preco_l, km_total, km_l, valor_total


		i = 0
		para(i = 0; i <= 10; i++)
		{
			escreva("\nNome do Motorista: ")
			leia(motorista)

			escreva("Km inicial: ")
			leia(km_in)

			escreva("Km final: ")
			leia(km_fi)

			escreva("Combustível consumido (em Litros): ")
			leia(L)

			escreva("Preço do Combustível (por Litro): R$ ")
			leia(preco_l)


			km_total = km_fi - km_in //KM total
			km_l = km_total / L // Km/L
			valor_total = preco_l * L // Valor total KM/L
			


			escreva("--------------------------------------------------------")
			escreva("\n\nOlá, ", motorista, "! Seus gastos foram estes:")
			escreva("\nValor gasto de combustível: R$ ", valor_total)
			escreva("\nQuilometragem por Litro: ", mat.arredondar(km_l, 2)," Km/L")
			escreva("\nValor por Km rodado: R$ ", mat.arredondar(km_total, 2))
			escreva("\n--------------------------------------------------------")

		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1006; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */