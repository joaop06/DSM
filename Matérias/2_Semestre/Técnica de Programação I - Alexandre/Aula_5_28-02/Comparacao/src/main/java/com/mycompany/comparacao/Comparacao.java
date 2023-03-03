/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.comparacao;
import java.util.Scanner;

/**
 *
 * @author joaoo
 */
public class Comparacao {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Hello World!");
        int num1, num2;
        
        System.out.print("Digite o primeiro número: ");
        num1 = input.nextInt();
        System.out.print("Digite o segundo número: ");
        num2 = input.nextInt();
        
        if (num1 == num2)
            System.out.printf("%d == %d\n", num1, num2);
        if (num1 != num2)
            System.out.printf("%d != %d\n", num1, num2);
        
        if (num1 < num2)
            System.out.printf("%d < %d\n", num1, num2);
        if (num1 <= num2)
            System.out.printf("%d <= %d\n", num1, num2);
        
        if (num1 > num2)
            System.out.printf("%d > %d\n", num1, num2);
        if (num1 >= num2)
            System.out.printf("%d >= %d\n", num1, num2);

    }
}
