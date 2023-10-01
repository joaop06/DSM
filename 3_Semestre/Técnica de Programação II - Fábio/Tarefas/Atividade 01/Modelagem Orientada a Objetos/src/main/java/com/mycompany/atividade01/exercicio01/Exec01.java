/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio01;

import java.util.Scanner;

/**
 *
 * @author João
 */
public class Exec01 {
    
    public void main(){
        Scanner scanner = new Scanner(System.in);

        Double[] todasVendas = new Double[10];
        
        for(int i = 1; i <= 10; i++){
            System.out.printf("************** %dª Venda **************", i);
            
            
            System.out.printf("\nCódigo do Produto: ");
            int codigo_produto = scanner.nextInt();
            
            System.out.printf("Valor unitário: ");
            Double valor_unitario = scanner.nextDouble();
            
            System.out.printf("Quantidade: ");
            int quantidade = scanner.nextInt();
            

            Venda venda = new Venda();
            
            todasVendas[i - 1] = venda.calcularValorTotal(codigo_produto, valor_unitario, quantidade);
        }
        
        for(int j = 0; j < 10; j++){
            System.out.printf("Total %dª Venda: R$ %.2f\n", j + 1, todasVendas[j]);
        }
    }
}
