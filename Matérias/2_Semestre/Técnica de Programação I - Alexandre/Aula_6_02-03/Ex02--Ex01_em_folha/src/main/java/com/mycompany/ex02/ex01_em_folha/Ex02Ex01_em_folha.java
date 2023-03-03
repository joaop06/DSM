/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.ex02.ex01_em_folha;
import java.util.Scanner;
/**
 *
 * @author joaoo
 */
public class Ex02Ex01_em_folha {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int a, b, c, resultado;
        
        System.out.print("1° Número: ");
        a = input.nextInt();
        
        System.out.print("2° Número: ");
        b = input.nextInt();
        
        System.out.print("3° Número: ");
        c = input.nextInt();
        
        resultado = a * b * c;
        System.out.printf("O produto é %d", resultado);
    }
}
