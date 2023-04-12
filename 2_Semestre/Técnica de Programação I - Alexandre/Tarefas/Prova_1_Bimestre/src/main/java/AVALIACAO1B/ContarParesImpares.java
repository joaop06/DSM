/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package AVALIACAO1B;

/**
 *
 * @author joaoo
 */
public class ContarParesImpares {
    
    public static void main(String[] args) {
        int vetor[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13};
        int pares = 0;
        int impares = 0;
        
        for (int i = 0; i < vetor.length; i++){
            if (vetor[i]%2==0){
                pares += 1;
            }
            else{
                impares += 1;
            }
        }
        
        System.out.printf("Quantidade de Pares: %d%n", pares);
        System.out.printf("Quantidade de Pares: %d%n", impares);
    }
}