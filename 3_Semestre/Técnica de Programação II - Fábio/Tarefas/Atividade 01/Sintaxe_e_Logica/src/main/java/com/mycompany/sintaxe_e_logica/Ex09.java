/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sintaxe_e_logica;

import java.text.DecimalFormat;

/**
 *
 * @author João
 */
public class Ex09 {
    public void main() {
        // Dados de entrada
        double taxaSelic = 0.05; // Taxa Selic (exemplo: 5%)
        double capitalInvestido = 1000.00; // Capital inicial (exemplo: R$ 1000,00)

        // CDB Banco Pague Mais
        double taxaRendimento1 = 0.85 * taxaSelic; // 85% da taxa Selic
        double taxaAdministrativa1 = 0.10; // Taxa administrativa de 10%
        double rendimentoTotal1 = 0.0;
        double descontos1 = 0.0;

        // CDB Fura Bolso
        double taxaRendimento2 = 0.93 * taxaSelic; // 93% da taxa Selic
        double taxaAdministrativa2 = 0.01; // Taxa administrativa fixa de 1%
        double impostoRendimento2 = 0.06; // Imposto de 6% sobre o rendimento
        double rendimentoTotal2 = 0.0;
        double descontos2 = 0.0;

        DecimalFormat df = new DecimalFormat("0.00");

        System.out.println("Taxa Selic: " + df.format(taxaSelic * 100) + "%");
        System.out.println("Capital investido: " + df.format(capitalInvestido));

        System.out.println("\nCDB Banco Pague Mais:");
        System.out.println("Mes\tCapital\tRendimento\tTotal");
        for (int mes = 1; mes <= 12; mes++) {
            double rendimentoMensal = capitalInvestido * taxaRendimento1;
            double rendimentoLiquido = rendimentoMensal - (capitalInvestido * taxaAdministrativa1);
            capitalInvestido += rendimentoLiquido;
            rendimentoTotal1 += rendimentoMensal;
            descontos1 += capitalInvestido * taxaAdministrativa1;
            System.out.println(mes + "\t" + df.format(capitalInvestido) + "\t" + df.format(rendimentoMensal) + "\t" + df.format(capitalInvestido + rendimentoMensal));
        }

        System.out.println("\nCDB Fura Bolso:");
        System.out.println("Mes\tCapital\tRendimento\tTotal");
        for (int mes = 1; mes <= 12; mes++) {
            double rendimentoMensal = capitalInvestido * taxaRendimento2;
            double rendimentoLiquido = rendimentoMensal - (capitalInvestido * taxaAdministrativa2);
            double imposto = rendimentoMensal * impostoRendimento2;
            capitalInvestido += rendimentoLiquido - imposto;
            rendimentoTotal2 += rendimentoMensal;
            descontos2 += capitalInvestido * taxaAdministrativa2 + imposto;
            System.out.println(mes + "\t" + df.format(capitalInvestido) + "\t" + df.format(rendimentoMensal) + "\t" + df.format(capitalInvestido + rendimentoMensal));
        }

        System.out.println("\nRendimento Total CDB Banco Pague Mais: " + df.format(rendimentoTotal1));
        System.out.println("Descontos CDB Banco Pague Mais: " + df.format(descontos1));
        System.out.println("Rendimento Líquido CDB Banco Pague Mais: " + df.format(rendimentoTotal1 - descontos1));

        System.out.println("\nRendimento Total CDB Fura Bolso: " + df.format(rendimentoTotal2));
        System.out.println("Descontos CDB Fura Bolso: " + df.format(descontos2));
        System.out.println("Rendimento Líquido CDB Fura Bolso: " + df.format(rendimentoTotal2 - descontos2));

        // Determine qual é o mais vantajoso
        if (rendimentoTotal1 - descontos1 > rendimentoTotal2 - descontos2) {
            System.out.println("\nCDB Banco Pague Mais é mais vantajoso.");
        } else {
            System.out.println("\nCDB Fura Bolso é mais vantajoso.");
        }
    }
}
