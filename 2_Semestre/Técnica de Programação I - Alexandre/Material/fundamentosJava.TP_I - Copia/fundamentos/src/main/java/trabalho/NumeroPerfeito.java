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
public class NumeroPerfeito {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.print("Digite um número inteiro positivo: ");
        int n = input.nextInt();
        int somaDivisores = 0;
        for (int i=1; i<=n/2 ; i++){
            if(n%i == 0){
                somaDivisores += i;
            }
        }
        if(somaDivisores == n){
            System.out.println(n + " é um número perfeito");
        }else{
            System.out.println(n + " não é um número perfeito");
        }
        input.close();
    }
    
}
