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
public class Ex05 {
    public void main() {
        Scanner scanner = new Scanner(System.in);

        // Solicita o valor ao usuário
        System.out.print("Digite um número inteiro positivo: ");
        int numero = scanner.nextInt();

        // Verifica se o número é primo
        boolean ehPrimo = verificarPrimo(numero);

        // Exibe o resultado
        if (ehPrimo) {
            System.out.println(numero + " é um número primo.");
        } else {
            System.out.println(numero + " não é um número primo.");
        }

        scanner.close();
    }

    // Função para verificar se um número é primo
    public static boolean verificarPrimo(int numero) {
        if (numero <= 1) {
            return false; // Números menores ou iguais a 1 não são primos
        }

        if (numero <= 3) {
            return true; // 2 e 3 são primos
        }

        // Verifica se o número é divisível por algum número de 2 até a raiz quadrada do número
        for (int i = 2; i * i <= numero; i++) {
            if (numero % i == 0) {
                return false; // O número não é primo
            }
        }

        return true; // Se não encontrou divisores, o número é primo
    }
}
