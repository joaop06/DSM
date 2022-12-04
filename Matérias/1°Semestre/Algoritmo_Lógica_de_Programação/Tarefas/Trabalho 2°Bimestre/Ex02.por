programa
{
	inclua biblioteca Util --> u
	const inteiro quant_aluno = 5 const inteiro questoes = 3
	inteiro nota[quant_aluno], i, j
	
	funcao inicio(){
		cadeia provas[quant_aluno][questoes], gabarito[questoes], nome_aluno[quant_aluno]
		inteiro nota_aluno[quant_aluno], sort_gabarito, menorNota, maiorNota, mediaTurma, AcimaMedia=0, aprovados=0, soma=0

		//Gerar Gabarito
		para(i=0; i<questoes; i++){
			sort_gabarito = u.sorteia(1, 5)
			escolha(sort_gabarito){
				caso 1:
				gabarito[i] = "A"
				pare
				
				caso 2:
				gabarito[i] = "B"
				pare
				
				caso 3:
				gabarito[i] = "C"
				pare
				
				caso 4:
				gabarito[i] = "D"
				pare
				
				caso 5:
				gabarito[i] = "E"
				pare
			}
		}
		
		//Ler matrix Aluno X Questão
		para(i=0; i<quant_aluno; i++){
			escreva("Digite as alternativas com letras MAIÚSCULAS.")
			escreva("\nNome do Aluno: ")
			leia(nome_aluno[i])
			para(j=0; j<questoes; j++){
				escreva("Questão ", j + 1, ": ")
				leia(provas[i][j])
				
				enquanto(provas[i][j]!="A" e provas[i][j]!="B" e provas[i][j]!="C" e provas[i][j]!="D" e provas[i][j]!="E"){
					escreva("Alternativa Inválida!\n")
					escreva("Questão ", j + 1, ": ")
					leia(provas[i][j])
				}
			}
			limpa()
		}
		limpa()
		
		//Correção Provas
		para(i=0; i<quant_aluno; i++){
			para(j=0; j<questoes; j++){
				nota_aluno[i] = corrigirProva(provas, gabarito, i, j)
			}
		}
		
		escreva("\n\n")
		para(i=0; i<questoes; i++){
			escreva("/ ")
			escreva(i+1, "-", gabarito[i], " /")
		}
		
		escreva("\n\n")
		para(i=0; i<quant_aluno; i++){
			escreva("\n", nome_aluno[i], ": Nota ", nota_aluno[i])
		}

		//Menor Nota - Maior Nota
		menorNota = nota_aluno[0]
		maiorNota = nota_aluno[0]
		para(i=0; i<quant_aluno; i++){
			se(nota_aluno[i]<menorNota){
				menorNota = nota_aluno[i]				
			}

			se(nota_aluno[i]>maiorNota){
				maiorNota = nota_aluno[i]
			}
			soma = soma + nota_aluno[i]
		}

		//Média da Turma - Acima da Média
		mediaTurma = soma / quant_aluno
		para(i=0; i<quant_aluno; i++){
			se(nota_aluno[i]>mediaTurma){
				AcimaMedia++
			}
			se(nota_aluno[i]>6){
				aprovados++
			}
		}
		aprovados = (aprovados*100)/quant_aluno
		escreva("\n\n----------------------------------------------------------")
		escreva("\n| Menor Nota: ", menorNota, "  // Maior Nota: ", maiorNota, "  // Média da Turma: ", mediaTurma, " |")
		escreva("\n----------------------------------------------------------\n")
		se(AcimaMedia<(quant_aluno/2)){
			se(AcimaMedia>1){
				escreva("Apenas ", AcimaMedia, " tiraram notas acima da média")
			}senao{
				se(AcimaMedia==0){
					escreva("Nenhum aluno tirou nota acima da média.")
				}
				se(AcimaMedia==1){
					escreva("Somente 1 aluno tirou nota acima da média.")
				}
			}
		}senao{
			escreva(AcimaMedia, " tiraram notas acima da média")
		}
		escreva("\n", aprovados, "% dos alunos foram aprovados.\n\n")
	}
		
	//Corrigir Prova
	funcao inteiro corrigirProva(cadeia x[][], cadeia y[], inteiro i, inteiro j){
		
		se(x[i][j]==y[j]){
			nota[i]++
		}
		retorne nota[i]
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 40; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {provas, 8, 9, 6};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz;
 */