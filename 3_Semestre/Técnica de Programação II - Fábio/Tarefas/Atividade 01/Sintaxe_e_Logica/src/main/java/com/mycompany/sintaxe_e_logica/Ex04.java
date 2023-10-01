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
public class Ex04 {
    public void main(){
        Scanner scanner = new Scanner(System.in);

        // Solicita o número de valores a serem lidos
        System.out.print("Digite o número de valores a serem lidos: ");
        int n = scanner.nextInt();

        // Inicializa uma variável para contar os valores negativos
        int contadorNegativos = 0;

        // Loop para ler os valores e verificar se são negativos
        for (int i = 0; i < n; i++) {
            System.out.printf("Digite o %dº valor: ", (i + 1));
            int valor = scanner.nextInt();

            if (valor < 0) {
                contadorNegativos++;
            }
        }

        // Exibe o resultado
        System.out.println("Quantidade de valores negativos: " + contadorNegativos);

        scanner.close();
    }
}
