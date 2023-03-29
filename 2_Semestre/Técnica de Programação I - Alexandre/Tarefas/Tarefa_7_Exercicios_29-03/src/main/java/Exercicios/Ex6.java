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
public class Ex6 {
    
    public static void main(String[] args) {
        
        Scanner input = new Scanner(System.in);
        
        System.out.print("Quantidades de Termos da Sequência: ");
        int n = input.nextInt();
        
        System.out.printf("Sequência Fibonacci nº%d: ", n);
        for (int i = 1; i <= n; i++) {
            System.out.printf("%d ", func_fibonacci(i));
        }
    }
    
    public static long func_fibonacci(int n) {
        if (n < 2) {
            return n;
        } else {
            return func_fibonacci(n - 2) + func_fibonacci(n - 1);
        }
    }
}
