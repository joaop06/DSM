/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.fundamentos;
import java.util.Scanner;
/**
 *
 * @author joaoo
 */
public class Soma {
    public static void main(String[] args){
        // Cria um Scanner para obter entrada a partir da janela de comando
        Scanner input = new Scanner(System.in);
        int n1;
        int n2;
        int soma;
        
        System.out.print("Digite o 1° Número: ");
        n1 = input.nextInt();
        System.out.print("Digite o 2° Número: ");
        n2 = input.nextInt();
        
        soma = n1 + n2;
        System.out.printf("A soma é %d%n", soma);
    }
}
