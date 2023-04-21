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
public class NumerosPrimos {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite um número inteiro positivo: ");
        int n = input.nextInt();
        System.out.print("Números primos menos ou iguais a "+ n +": ");
        for(int i=2; i<=n; i++){
            int divisores = 0;
            for(int j=2; j<= i/2; j++){
                if(i % j == 0){
                   divisores++;
                }
            }
            if(divisores == 0){
                System.out.print(i + " ");
            }
        }
        input.close();
    }
}
