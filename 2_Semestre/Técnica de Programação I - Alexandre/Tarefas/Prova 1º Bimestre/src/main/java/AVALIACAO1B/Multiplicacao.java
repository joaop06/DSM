/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AVALIACAO1B;
import java.util.Scanner;

/**
 *
 * @author joaoo
 */
public class Multiplicacao {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite o 1º Número: ");
        int num1 = input.nextInt();
        
        System.out.print("Digite o 2º Número: ");
        int num2 = input.nextInt();
        
        
        System.out.printf("O resultado da multiplicação é: %d", num1 * num2);
    }
}
