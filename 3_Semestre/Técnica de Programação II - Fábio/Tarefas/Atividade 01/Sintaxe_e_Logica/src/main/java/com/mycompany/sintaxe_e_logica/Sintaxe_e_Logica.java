/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.sintaxe_e_logica;

import java.util.Scanner;

/**
 *
 * @author João
 */
public class Sintaxe_e_Logica {
    
        public static void main(String[] args){
        Scanner scanner = new Scanner(System.in);
        
        System.out.print("\n\n****************************************\n4 - Exercício 4\n5 - Exercício 5\n6 - Exercíico 6\n7 - Exercício 7\n\n9 - Exercício 9\n10 - Exercício 10\n0 - Sair");
        System.out.print("\nDigite a opção do exercício desejado: ");
        int option = scanner.nextInt();
        
        while(option != 0){
            System.out.print("\n\n");

            if(option == 4){
                Ex04 ex04 = new Ex04();
                ex04.main();
            }

            if(option == 5){
                Ex05 ex05 = new Ex05();
                ex05.main();           
            }

            if(option == 6){
                Ex06 ex06 = new Ex06();
                ex06.main(); 
            }

            if(option == 7){
                Main ex07 = new Main();
                ex07.main();
            }
//
//            if(option == 8){
//                Ex08 ex08 = new Ex08();
//                ex08.main();
//            }
//
            if(option == 9){
                Ex09 ex09 = new Ex09();
                ex09.main();
            }
//            
            if(option == 10){
                Ex010 ex010 = new Ex010();
                ex010.main();
            }
            
            System.out.print("\n\n****************************************\n4 - Exercício 4\n5 - Exercício 5\n6 - Exercíico 6\n7 - Exercício 7\n8 - Exercício 8\n9 - Exercício 9\n10 - Exercício 10\n0 - Sair");
            System.out.print("\nDigite a opção desejada: ");
            option = scanner.nextInt();
        }
        
        return;
    }
}
