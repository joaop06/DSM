programa
{
	
	funcao inicio()
	{
		cadeia nome
		inteiro idade, ano, mes, dia
		escreva("Digite seu nome: ")
		leia(nome)
		escreva("Informe sua idade em anos, meses e dias.\nAnos: ")
		leia(ano)
		escreva("Meses: ")
		leia(mes)
		escreva("Dias: ")
		leia(dia)
		idade = ((ano * 360) + (mes * 30) + dia)
		escreva(nome, ", sua idade total é de ", idade, " dias.")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 375; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */