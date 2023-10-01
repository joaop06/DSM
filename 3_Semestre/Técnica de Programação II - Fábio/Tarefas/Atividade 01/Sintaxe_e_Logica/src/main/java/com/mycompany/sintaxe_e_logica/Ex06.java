/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sintaxe_e_logica;

import java.util.Scanner;

/**
 *
 * @author João
 */
public class Ex06 {
    public void main() {
        Scanner scanner = new Scanner(System.in);

        // Solicita o salário bruto ao usuário
        System.out.println("###################");
        System.out.println("CALCULADORA DE INSS");
        System.out.println("###################");
        System.out.print("Salário Bruto ....: ");
        double salarioBruto = scanner.nextDouble();

        // Calcula o INSS com base na tabela fornecida
        double aliquota = 0.0;
        double deducao = 0.0;

        if (salarioBruto <= 1212.00) {
            aliquota = 7.5;
            deducao = 0.0;
        } else if (salarioBruto <= 2427.35) {
            aliquota = 9.0;
            deducao = 18.18;
        } else if (salarioBruto <= 3641.03) {
            aliquota = 12.0;
            deducao = 91.00;
        } else {
            aliquota = 14.0;
            deducao = 163.82;
        }

        double valorINSS = (salarioBruto * aliquota / 100) - deducao;
        double salarioLiquido = salarioBruto - valorINSS;

        // Exibe o resultado
        System.out.println("Aliquota INSS (%).: " + aliquota);
        System.out.println("Desconto INSS ....: " + valorINSS);
        System.out.println("Salário Líquido ....: " + salarioLiquido);
        System.out.println("###################");

        scanner.close();
    }
}
