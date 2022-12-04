programa
{
	inclua biblioteca Matematica --> mat
	inteiro i
	funcao inicio()
	{
		inteiro opcao

		escreva("--------------------------")
		escreva("\n1-Tabuada\n2-Maior Elemento\n3-IMC\n4-Juros\n5-Fatorial\n6-Somatório de Fração Fatorial\n7-Sair")
		escreva("\n--------------------------\n")
		escreva("Escolha a opção deseja: ")
		leia(opcao)

		enquanto(opcao<1 ou (opcao>6 e opcao!=7)){
			limpa()
			escreva("--------------------------")
			escreva("\n1-Tabuada\n2-Maior Elemento\n3-IMC\n4-Juros\n5-Fatorial\n6-Somatório de Fração Fatorial\n7-Sair")
			escreva("\n--------------------------\n")
			escreva("Opção Inválida.\n")
			escreva("Escolha a opção deseja: ")
			leia(opcao)
		}
		
		enquanto(opcao>=1 e opcao<=6){
			escolha(opcao){

				//Tabuada
				caso 1:
					limpa()
					escreva("---------\n")
					escreva("|Tabuada|")
					escreva("\n---------\n\n")
					escreva("Digite o número da Tabuada: ")
					leia(num)
	
					verifica_num = tabuada(num)
					enquanto(verifica_num==falso){
						escreva("O número informado não está entre 1 e 9.\n\nDigite novamente: ")
						leia(num)
						verifica_num = tabuada(num)
					}
					escreva("\n")
					para (i = 1; i<=10; i++){
						escreva(num," x ", i, " = ", num*i, "\n")
					}
				pare

				//Maior Elemento
				caso 2:
					limpa()
					escreva("----------------\n")
					escreva("|Maior Elemento|")
					escreva("\n----------------\n\n")
					escreva("1° Número: ")
					leia(n1)

					escreva("2° Número: ")
					leia(n2)

					maior = maiorElemento(n1, n2)
					escreva("-------------------------------------------------")
					escreva("\n|	O número ", maior, " é maior entre os dois.	|")
					escreva("\n-------------------------------------------------\n")
				pare

				//IMC
				caso 3:
				//Incompleto
					limpa()
					escreva("-----\n")
					escreva("|IMC|")
					escreva("\n-----\n\n")
					escreva("Peso Kg (Ex: 70.85): ")
					leia(peso)

					escreva("Altura M (Ex: 1.80): ")
					leia(altura)
					imc = mat.arredondar(IMC(peso, altura), 2)

					escreva("\n----------------------------------------------")
					escreva("\nSeu Índice de Massa Corporal é de ", imc, "Kg/m².")
					escreva("\n----------------------------------------------\n")
				pare

				//Juros
				caso 4:
					limpa()
					escreva("-------\n")
					escreva("|Juros|")
					escreva("\n-------\n\n")
					escreva("Capital Inicial: R$ ")
					leia(capInicial)

					escreva("Período em Meses: ")
					leia(meses)

					para(i=0; i<meses; i++){
						valorAtual = juros(capInicial)						
						escreva("\n", i+1, "° Mês: R$ ", mat.arredondar(valorAtual, 2))
						capInicial = valorAtual
					}
					escreva("\n")
				pare

				//Fatorial
				caso 5:
					limpa()
					escreva("----------\n")
					escreva("|Fatorial|")
					escreva("\n----------\n\n")
					escreva("Digite um número: ")
					leia(numFat)

					fat = fatorial(numFat)
					escreva("-----------------------------------------")
					escreva("\n|	O fatorial de ", numFat, " é ", fat, ".		|\n")
					escreva("-----------------------------------------\n")
				pare

				//Soma de Fração Fatorial
				caso 6:
					limpa()
					escreva("-------------------------\n")
					escreva("|Somatório de Fração Fatorial|")
					escreva("\n-------------------------\n\n")
					escreva("Informe um número: ")
					leia(nSomaFracao)
					soma = somaFracao(nSomaFracao)

					escreva("---------------------\n")
					escreva("Resultado: ", mat.arredondar(soma, 6), "\n")
					escreva("---------------------\n\n")
				pare
			}
			escreva("\n--------------------------")
			escreva("\n1-Tabuada\n2-Maior Elemento\n3-IMC\n4-Juros\n5-Fatorial\n6-Somatório de Fração Fatorial\n7-Sair")
			escreva("\n--------------------------\n")
			escreva("Escolha a opção deseja:  ")
			leia(opcao)
		}
		limpa()
		escreva("\n----------------")
		escreva("\n|  Você Saiu.  |")
		escreva("\n----------------")
	}

	//Função 1-Tabuada
	inteiro num
	logico verifica_num
	funcao logico tabuada(inteiro x){

		se(x>=1 e x<=9){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}

	//Função 2-Maior Elemento
	inteiro n1, n2, maior
	funcao inteiro maiorElemento(inteiro x, inteiro y){

		se(x>y){
			retorne x
		}senao{
			retorne y
		}
	}

	//Função 3-IMC
	real peso, altura, imc
	funcao real IMC(real x, real y){
		real resultIMC

		resultIMC = x / (y * y)
		retorne resultIMC
	}

	//Função 4-Juros
	real capInicial, valorAtual
	inteiro meses
	funcao real juros(real x){

		x = (x/10) + x
		retorne x
	}

	//Função 5-Fatorial
	real numFat, fat
	funcao real fatorial(real x){
		real resultFat=1.0

		para(i=1; i<=x; i++){
			resultFat = resultFat * i
		}
		retorne resultFat
	}

	//Função 6-Somatório de Fração Fatorial
	real nSomaFracao, soma
	funcao real somaFracao(real x){
		real result=1.0, j
		
		para(j=1.0; j<=x; j++){
			result = result + 1/fatorial(j)
		}
		retorne result
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4837; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */