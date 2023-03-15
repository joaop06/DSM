programa
{
	
	funcao inicio()
	{
		// João Pedro Borges Araújo
		// RA: 1091392223001

		inteiro i
		cadeia nome, febre, manchas, dor


		i = 1
		enquanto (i<=5){
			escreva("\n-----------------------------")
			escreva("\nNome do Paciente: ")
			leia(nome)

			escreva("\nPara responder os sintomas utilize S-Sim ou N-Não.\n")
			escreva("\nFebre alta: ")
			leia(febre)
			escreva("\nManchas na pele: ")
			leia(manchas)
			escreva("\nDor no corpo: ")
			leia(dor)

			se(febre=="S" e manchas=="S" e dor=="S"){ // Especialista
				escreva("\n", nome, ", procure um especialista! Você possui TODOS os sintomas.")
			}

			se(febre=="N" e manchas=="N" e dor=="N"){ // Saudável
				escreva("\n", nome, ", você está saudável! Não possui nenhum sintoma.")
			}

			
			se(febre=="S" e dor=="S" e manchas=="N"){ //Dengue
				escreva("\n", nome, ", seu diagnóstico é Dengue.")
			}senao{
				se(manchas=="S" e dor=="S" e febre=="N"){ //Zika
					escreva("\n", nome, ", seu diagnóstico é Zika.")
				}senao{
					se(febre=="S" e manchas=="S" e dor=="N"){ //Chikungunya
						escreva("\n", nome, ", seu diagnóstico é Chikungunya.")
					}
				}
			}
			escreva("\n-----------------------------")
			i++
		}
}}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 755; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */