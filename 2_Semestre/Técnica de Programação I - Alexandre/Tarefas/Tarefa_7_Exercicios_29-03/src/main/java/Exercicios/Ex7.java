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
public class Ex7 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite um número para verificar: ");
        int num = input.nextInt();
        
        if (num%2==0){
            System.out.printf("%d é um número PAR!", num);
        } else{
            System.out.printf("%d é um número ÍMPAR!", num);
        }
    }
}
