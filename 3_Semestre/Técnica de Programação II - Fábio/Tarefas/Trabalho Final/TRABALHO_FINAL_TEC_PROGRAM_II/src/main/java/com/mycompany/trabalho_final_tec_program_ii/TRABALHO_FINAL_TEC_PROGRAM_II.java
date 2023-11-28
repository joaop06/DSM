/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.trabalho_final_tec_program_ii;
import com.mycompany.trabalho_final_tec_program_ii.questao01.Terrestre;
import com.mycompany.trabalho_final_tec_program_ii.questao01.Aquatico;
import com.mycompany.trabalho_final_tec_program_ii.questao01.Aereo;

import com.mycompany.trabalho_final_tec_program_ii.questao02.ImpostoSP;
import com.mycompany.trabalho_final_tec_program_ii.questao02.ImpostoMG;

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
    }
}
