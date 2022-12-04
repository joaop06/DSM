programa
{
	funcao inicio()
	{
		cadeia letra
		inteiro result
		
		escreva("Digite uma letra: ")
		leia(letra)
		result = vogais(letra)

		se(result==2){
			escreva("\nResultado: 2 --> Vogal MAIÚSCULA.\n")
		}senao{
			se(result==1){
				escreva("\nResultado: 1 --> Vogal minúscula.\n")
			}senao{
				escreva("\nResultado: 1 --> Não é vogal.\n")
			}
		}
	}

	funcao inteiro vogais(cadeia x){

		inteiro ajuda

		se(x=="A" ou x=="E" ou x=="I" ou x=="O" ou x=="U"){
			ajuda = 2
		}senao{
			se(x=="a" ou x=="e" ou x=="i" ou x=="o" ou x=="u"){
				ajuda = 1
			}senao{
				ajuda = 0
			}
		}

		retorne ajuda
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 207; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 */