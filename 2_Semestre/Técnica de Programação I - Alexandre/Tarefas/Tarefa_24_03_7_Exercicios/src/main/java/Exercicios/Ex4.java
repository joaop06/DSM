/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exercicios;
import java.util.Scanner;
/**
 *
 * @author joaoo
 */
public class Ex4 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        

        System.out.print("Digite um número: ");
        int num = input.nextInt();
        
        int fat = num;
        for (int i = num-1; i >=1 ; i--){
            fat *= i;
        }
        System.out.printf("O fatorial de %d é: %d.", num, fat);
    }
}
