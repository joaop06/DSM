programa
{
	
	funcao inicio()
	{
		inteiro i, cpf[11]
		logico dig1, dig2

		para(i=0; i<11; i++){
			escreva("Digite seu CPF: ")
			leia(cpf[i])
		}

		dig1 = validadig1(cpf)
		dig2 = validadig2(cpf)

		se(dig1==falso e dig2==falso){
			escreva("Não é válido.")
		}senao{
			escreva("Válido!")
		}

	}


	funcao logico validadig1(inteiro x[]){
		inteiro soma, i, j
		real resto

		soma = 0
		j = 10
		para(i=0; i<9; i++){
			soma = soma + x[i] * j
			j--
		}

		resto = soma%11

		se(resto==1 ou resto==0){
			se(x[9]==0){
				retorne verdadeiro
			}senao{
				retorne falso
			}
		}senao{
			se(x[9]==(11-resto)){
				retorne verdadeiro
			}senao{
				retorne falso
			}
		}
		
	}

	funcao logico validadig2(inteiro x[]){
		inteiro soma, i, j
		real resto

		soma = 0
		j = 11
		para(i=0; i<10; i++){
			soma = soma + x[i] * j
			j--
		}

		resto = soma%11

		se(resto==1 ou resto==0){
			se(x[10]==0){
				retorne verdadeiro
			}senao{
				retorne falso
			}
			}senao{
				se(x[10]==(11-resto)){
					retorne verdadeiro
				}senao{
					retorne falso
			}
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 304; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */