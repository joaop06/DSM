/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sintaxe_e_logica;

/**
 *
 * @author João
 */
public class Main {
    public void main() {
        // Crie uma variável a1 do tipo Aluno
        Aluno a1 = new Aluno("João", 7.5, 8.0);

        // Atribua valores arbitrários
        a1.nome = "Maria";
        a1.p1 = 6.0;
        a1.p2 = 7.0;

        // Mostre os valores de a1
        System.out.println("Valores de a1:");
        System.out.println("Nome: " + a1.nome);
        System.out.println("P1: " + a1.p1);
        System.out.println("P2: " + a1.p2);

        // Crie uma variável a2 que recebe a1
        Aluno a2 = a1;

        // Altere os valores de p1 e p2 em a2
        a2.p1 = 9.0;
        a2.p2 = 8.5;

        // Mostre os valores dos atributos de a1 e a2
        System.out.println("\nValores de a1 após alteração em a2:");
        System.out.println("Nome: " + a1.nome);
        System.out.println("P1: " + a1.p1);
        System.out.println("P2: " + a1.p2);

        System.out.println("\nValores de a2:");
        System.out.println("Nome: " + a2.nome);
        System.out.println("P1: " + a2.p1);
        System.out.println("P2: " + a2.p2);

        // Os valores são diferentes? Explique:
        // Não, os valores são iguais. Isso ocorre porque a2 é uma referência para o mesmo objeto que a1.
        // Quando alteramos os valores em a2, estamos alterando os valores no objeto compartilhado por ambas as variáveis.
    }
}
