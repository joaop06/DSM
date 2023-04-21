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
public class Fatorial {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite um número inteiro positivo");
        int n = input.nextInt();
        int fatorial = 1;
        for(int i=2;i<=n;i++){
            fatorial = fatorial * i;
        }
        System.out.println("O fatorial de "+n+ " é: "+fatorial);
        input.close();
    }
}
