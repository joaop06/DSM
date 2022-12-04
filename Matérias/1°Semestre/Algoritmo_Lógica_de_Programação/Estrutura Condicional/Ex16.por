programa
{
	
	funcao inicio()
	{
		inteiro mamifero, ave, reptil
		cadeia tipo, resp
		escreva("Vamos brincar de advinhação. Escolha um animal entre:\nLeão, Cavalo, Homem, Macaco, Morcego, Baleia, Avestruz, Pinguim, Pato, Águia, Tartaruga, Crocodilo ou Cobra.")
		escreva("\n\nDeixe-me pensar...Seu animal é M-Mamífero, A-Ave ou R-Réptil? ")
		leia(tipo)
			se (tipo == "M"){ //É MAMÍFERO
			escreva("Ótimo! É um animal 1-Quadrúpede, 2-Bípede, 3-Voador ou 4-Aquático? ")
			leia(mamifero)
			escolha(mamifero)
			{
				caso 1: //É MAMÍFERO quadrúpede
				escreva("\nSeu animal como apenas carne? (S-Sim ou N-Não): ")
				leia(resp)
				se (resp == "S"){
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Leão!!\n")
				}senao{
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Cavalo!!\n")
				}
				pare
				
				caso 2: // É MAMÍFERO bípede
				escreva("\nSeu animal come apenas frutas? (S-Sim ou N-Não): ")
				leia(resp)
				se (resp == "S"){
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Homem!!\n")
				}senao{
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Macaco!!\n")
				}
				pare

				caso 3: // É MAMÍFERO Voador
				escreva("\n\nHummm... já sei!\nO animal que escolheu é o Morcego!!\n")
				pare
				
				caso 4: // É MAMÍFERO Aquático
				escreva("\n\nHummm... já sei!\nO animal que escolheu é a Baleia!!\n")
				pare
			}}

			se (tipo == "A"){ //É AVE
			escreva("\nÓtimo! É uma ave 1-Não-Voadora, 2-Nadadora ou 3-De Rapina? ")
			leia(ave)
			escolha(ave){
				caso 1: //É AVE Não-Voadora
				escreva("\nEssa ave que não voa mora em uma região tropical? (S-Sim ou N-Não): ")
				leia(resp)
				se (resp == "S"){
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Avestruz!!\n")
				}senao{
					escreva("\n\nHummm... já sei!\nO animal que escolheu é o Pinguim!!\n")
				}
				pare

				caso 2: //É AVE Nadadora
				escreva("\n\nHummm... já sei!\nO animal que escolheu é o Pato!!\n")
				pare

				caso 3: //É AVE De Rapina
				escreva("\n\nHummm... já sei!\nO animal que escolheu é a Águia!!\n")
				pare
				}}

			se (tipo == "R"){ //É RÉPTIL
			escreva("\nCerto, sabemos que seu animal é um réptil e que possui características específicas.")
			escreva("\n1 - Com Casco\n2 - Carnívoro\n3 - Sem patas\nNos informe qual ele possui: ")
			leia(reptil)
			escolha (reptil){
				caso 1: //É RÉPTIL Com casco
				escreva("\n\nHummm... já sei!\nO animal que escolheu é a Tartaruga!!\n")
				pare

				caso 2: //É RÉPTIL Carnívoro
				escreva("\n\nHummm... já sei!\nO animal que escolheu é o Crocodilo!!\n")
				pare

				caso 3: //É RÉPTIL Sem patas
				escreva("\n\nHummm... já sei!\nO animal que escolheu é a Cobra!!\n")
				pare
				}}
			
			}	
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2718; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */