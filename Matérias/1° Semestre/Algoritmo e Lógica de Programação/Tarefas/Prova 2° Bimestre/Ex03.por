programa
{

	//Fazer (em Portugol) um menu contendo opções para executar três diferentes subprogramas, sendo a quarta opção para sair do algoritmo. Após executar a opção selecionada, mostrar todas as opções novamente. Os subprogramas são os seguintes:
	//a) Receber dois números inteiros e retorne 1 se a soma for ímpar e 2 se a soma for par.
	//b) Calcular o valor do somatório S, sendo que o valor de N (quantidade de termos do somatório) deve ser passado como parâmetro. O somatório é:  S = 1/3 + 2/5 + 3/7 + ...
	//c) Calcular a média dos números ímpares de um vetor de elementos. Fazer o subprograma de forma que possa ser utilizado para qualquer tamanho de vetor.
	inclua biblioteca Util
	inteiro i, j
	funcao inicio()
	{
		inteiro opcao

		escreva("\n1-Par ou Ímpar\n2-Somatório\n3-Média Ímpar\n4-Sair\n")
		escreva("\nEscolha a opção desejada: ")
		leia(opcao)
		escolha(opcao){
			caso 1:
				limpa()
				escreva("\n|Par ou Ímpar|\n\n")
				escreva("Informe 1° número: ")
				leia(n1)
				escreva("Informe 2° número: ")
				leia(n2)

				par_imapar = PARouIMPAR(n1, n2)
				se(par_imapar==2){
					escreva("\n", par_imapar, " - A soma dos números é PAR")
				}senao{
					escreva("\n", par_imapar, " - A soma dos números é ÍMPAR")
				}
			pare


			caso 2:
				limpa()
				escreva("\n|Somatório|\n\n")
				escreva("Número de termos do somatório: ")
				leia(numsomat)

				escreva("O resultado do somatório é ", somatorio(numsomat))
			pare


			caso 3:
				limpa()
				escreva("\n|Média dos Ímpares|\n\n")
				para(i=0; i<tamOpcao3; i++){
					vetOpcao3[i] = Util.sorteia(1, 100)
					escreva(vetOpcao3[i], " ")
				}
				mediaOpcao3 = mediaImpar(vetOpcao3, tamOpcao3)

				escreva("\nA média dos números ímpares desse vetor é ", mediaOpcao3)
				
			pare


			caso 4:
				escreva("\n\nVocê saiu.")
			pare
		}
	}

	//Opção 1
	inteiro soma, n1, n2, par_imapar
	funcao inteiro PARouIMPAR(real x, real y){
		
		soma = x + y
		se(soma%2==0){
			retorne 2
		}senao{
			retorne 1
		}
	}

	//Opção 2
	inteiro numsomat
	real soma_somat=0.0
	funcao real somatorio(inteiro x){

		j=3
		para(i=1; i<=x; i++){
			soma_somat = soma_somat + i/j
			j=j+2
		}
		retorne soma_somat
	}

	//Opção 3
	const inteiro tamOpcao3 = 10
	inteiro verificaOpcao3=0
	real vetOpcao3[tamOpcao3], mediaOpcao3, somaOpcao3=0
	funcao real mediaImpar(real x[], inteiro y){

		para(i=0; i<y; i++){
			verificaOpcao3 = x[i]
			se((verificaOpcao3)%2!=0){
				somaOpcao3 = somaOpcao3 + x[i]
				mediaOpcao3 = somaOpcao3 / tamOpcao3
			}
		}
		
		retorne mediaOpcao3
	}
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */