/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade01;

import com.mycompany.atividade01.exercicio01.ContVenda;
import com.mycompany.atividade01.exercicio02.Biblioteca;


import java.util.Scanner;

/**
 *
 * @author joaoo
 */
public class Atividade01 {
    
    public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("1 - Exercício 1\n2 - Exercício 2\n3 - Exercício 3\n4 - Exercício 4\n5 - Exercício 5\n6 - Exercício 6\n0 - Sair\n");
        System.out.print("Digite a opção do exercício desejado: ");
        int option = scanner.nextInt();
        
        while(option != 0){
            if(option == 1){
                ContVenda cont_venda = new ContVenda();
                cont_venda.main();
            }

            if(option == 2){
                Biblioteca biblioteca = new Biblioteca();
                biblioteca.main();            
            }

            if(option == 3){

            }

            if(option == 4){

            }

            if(option == 5){

            }

            if(option == 6){

            }
            
            System.out.print("1 - Exercício 1\n2 - Exercício 2\n3 - Exercício 3\n4 - Exercício 4\n5 - Exercício 5\n6 - Exercício 6\n0 - Sair\n");
            System.out.print("Digite a opção desejada: ");
            option = scanner.nextInt();
        }
        

        return;
    }
}
