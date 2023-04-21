/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package trabalho;
import java.util.Scanner;
/**
 *
 * @author Alexandre
 */
public class Fibonacci {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite um número inteiro positvo: ");
        int n = input.nextInt();
        int a=0;
        int b=1;
        
        
        System.out.print("Sequência de Fibonacci até "+n+": ");
        System.out.print(a + " " + b + " ");
        
        for(int c=1; c <=n; c=a+b){
            System.out.print(c + " ");
            a = b;
            b = c;
        }
        input.close();
    }
    
}
