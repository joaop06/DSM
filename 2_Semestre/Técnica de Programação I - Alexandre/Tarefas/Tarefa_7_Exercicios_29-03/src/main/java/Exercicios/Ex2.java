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
public class Ex2 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        
        System.out.print("Digite um número: ");
        int num = input.nextInt();
        
        for (int i = 2; i <= num; i++){
            int cont = 0;
            String result;

            for (int j = 2; j <= i; j++){
                if(i%j==0){
                    cont = cont + 1;
                }
            }
            
            if (cont == 1){
                result = "É primo!\n";
                System.out.printf("%d %s",i, result);
            }
        }
        System.out.printf("Fim!");

    }
}
