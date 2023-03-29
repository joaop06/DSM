/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Exercicios;


/**
 *
 * @author joaoo
 */
public class Ex1 {
    
    public static void main(String[] args){
        
        int soma = 0;
        
        for (int i = 1; i <= 100; i++){
            soma += i;
        }
        
        System.out.printf("A soma de todos os números entre 1 e 100 é: %d", soma);
    }
}
