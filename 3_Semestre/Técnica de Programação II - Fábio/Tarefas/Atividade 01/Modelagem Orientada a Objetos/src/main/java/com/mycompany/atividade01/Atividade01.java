/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.atividade01;

import com.mycompany.atividade01.exercicio01.Exec01;
import com.mycompany.atividade01.exercicio02.Exec02;
import com.mycompany.atividade01.exercicio03.Exec03;
import com.mycompany.atividade01.exercicio04.Exec04;
import com.mycompany.atividade01.exercicio05.Exec05;
import com.mycompany.atividade01.exercicio06.Exec06;

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
                Exec01 exec01 = new Exec01();
                exec01.main();
            }

            if(option == 2){
                Exec02 exec02 = new Exec02();
                exec02.main();            
            }

            if(option == 3){
                Exec03 exec03 = new Exec03();
                exec03.main();  
            }

            if(option == 4){
                Exec04 exec04 = new Exec04();
                exec04.main();
            }

            if(option == 5){
                Exec05 exec05 = new Exec05();
                exec05.main();
            }

            if(option == 6){
                Exec06 exec06 = new Exec06();
                exec06.main();
            }
            
            System.out.print("1 - Exercício 1\n2 - Exercício 2\n3 - Exercício 3\n4 - Exercício 4\n5 - Exercício 5\n6 - Exercício 6\n0 - Sair\n");
            System.out.print("Digite a opção desejada: ");
            option = scanner.nextInt();
        }
        

        return;
    }
}
