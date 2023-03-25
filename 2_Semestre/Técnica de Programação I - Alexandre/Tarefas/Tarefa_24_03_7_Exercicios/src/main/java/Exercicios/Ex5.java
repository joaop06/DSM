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
public class Ex5 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.print("Digite um número: ");
        int num = input.nextInt();
        int divs[];
        divs = new int[num];
        
        for (int i = 1; i < num; i++){
            if (num%i==0){
                divs.append();
            }
        }
        
        if(num == divs){
            System.out.printf("%d é Perfeito! Divisores: ", num);
        } else{
            System.out.printf("%d NÃO é perfeito.", num);
        }
        System.out.printf("%d %d",num, divs);
    }
}
