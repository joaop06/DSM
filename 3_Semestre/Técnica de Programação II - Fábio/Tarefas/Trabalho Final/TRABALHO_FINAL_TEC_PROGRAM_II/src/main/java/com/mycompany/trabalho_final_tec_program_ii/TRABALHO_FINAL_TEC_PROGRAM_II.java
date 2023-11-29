/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.trabalho_final_tec_program_ii;
import java.util.Date;

import com.mycompany.trabalho_final_tec_program_ii.questao01.Terrestre;
import com.mycompany.trabalho_final_tec_program_ii.questao01.Aquatico;
import com.mycompany.trabalho_final_tec_program_ii.questao01.Aereo;

import com.mycompany.trabalho_final_tec_program_ii.questao02.ImpostoSP;
import com.mycompany.trabalho_final_tec_program_ii.questao02.ImpostoMG;

import com.mycompany.trabalho_final_tec_program_ii.questao03.Bala;
import com.mycompany.trabalho_final_tec_program_ii.questao03.Bolacha;
import com.mycompany.trabalho_final_tec_program_ii.questao03.Bombom;
import com.mycompany.trabalho_final_tec_program_ii.questao03.Diversos;

import com.mycompany.trabalho_final_tec_program_ii.questao04.Fundamental;
import com.mycompany.trabalho_final_tec_program_ii.questao04.Universitario;
import com.mycompany.trabalho_final_tec_program_ii.questao04.Tecnico;
import com.mycompany.trabalho_final_tec_program_ii.questao04.Estudante;

import com.mycompany.trabalho_final_tec_program_ii.questao05.FabricaProdutos;
import com.mycompany.trabalho_final_tec_program_ii.questao05.Produto;
import com.mycompany.trabalho_final_tec_program_ii.questao05.SistemaControleProducao;
import com.mycompany.trabalho_final_tec_program_ii.questao05.NotificacaoCliente;
import com.mycompany.trabalho_final_tec_program_ii.questao05.SistemaFinanceiro;
import com.mycompany.trabalho_final_tec_program_ii.questao05.SistemaLogistico;

/**
 *
 * @author joaoo
 */
public class TRABALHO_FINAL_TEC_PROGRAM_II {

    public static void main(String[] args) {
       
        System.out.println(" ****************** Questão 01: ****************** ");
        Terrestre v_terrestre = new Terrestre();
        System.out.println("Tipo: " + v_terrestre.retorno_tipo_veiculo());
        
        Aquatico v_aquatico = new Aquatico();
        System.out.println("Tipo: " + v_aquatico.retorno_tipo_veiculo());

        Aereo v_aereo = new Aereo();
        System.out.println("Tipo: " + v_aereo.retorno_tipo_veiculo());
        
        
        System.out.println("\n\n ****************** Questão 02: ****************** ");
        Double valor = 100D;
        Double valor2 = 250D;
        
        ImpostoSP imposto_sp = new ImpostoSP();
        System.out.println(String.format("Imposto SP: de R$ %.2f para R$ %.2f // Imposto SP: de R$ %.2f para R$ %.2f", valor, imposto_sp.calcularImposto(valor), valor2, imposto_sp.calcularImposto(valor2)));
        
        ImpostoMG imposto_mg = new ImpostoMG();
        System.out.println(String.format("Imposto MG: de R$ %.2f para R$ %.2f // Imposto MG: de R$ %.2f para R$ %.2f", valor, imposto_mg.calcularImposto(valor), valor2, imposto_mg.calcularImposto(valor2)));
        
        
        System.out.println("\n\n ****************** Questão 03: ****************** ");
        Bala bala = new Bala();
        Double custo = 0.12;
        System.out.println(String.format("Bala: Custo R$ %.2f -> Venda R$ %.2f", custo, bala.calcularPrecoVenda(custo)));
        
        Bolacha bolacha = new Bolacha();
        custo = 1.25;
        System.out.println(String.format("Bolacha: Custo R$ %.2f -> Venda R$ %.2f", custo, bolacha.calcularPrecoVenda(custo)));
        
        Bombom bombom = new Bombom();
        custo = 0.60;
        System.out.println(String.format("Bombom: Custo R$ %.2f -> Venda R$ %.2f", custo, bombom.calcularPrecoVenda(custo)));
        
        Diversos diversos = new Diversos();
        custo = 10.90;
        System.out.println(String.format("Diversos: Custo R$ %.2f -> Venda R$ %.2f", custo, diversos.calcularPrecoVenda(custo)));
        
        
        System.out.println("\n\n ****************** Questão 04: ****************** ");
        Estudante aluno1 = new Fundamental("Fundamental");
        Estudante aluno2 = new Universitario("Universitario");
        Estudante aluno3 = new Tecnico("Tecnico");
        
        System.out.printf("Aluno 1: %s\nAluno 2: %s\nAluno 3: %s\n", aluno1.getInstituicao(),aluno2.getInstituicao(),aluno3.getInstituicao());
        
        
        System.out.println("\n\n ****************** Questão 05: ****************** ");
        
        FabricaProdutos fabrica = new FabricaProdutos();
        fabrica.adicionarObserver(new SistemaControleProducao());
        fabrica.adicionarObserver(new NotificacaoCliente());
        fabrica.adicionarObserver(new SistemaFinanceiro());
        fabrica.adicionarObserver(new SistemaLogistico());

        // Simular nova produção
        Produto produto = new Produto("123", "Produto Showww", new Date(), "Lote001", 100);
        fabrica.novaProducao(produto);
        
        System.out.println();
        
        // Simular nova produção
        Produto produto2 = new Produto("456", "Novo Produto Legal", new Date(), "Lote002", 70);
        fabrica.novaProducao(produto2);
    }
}
