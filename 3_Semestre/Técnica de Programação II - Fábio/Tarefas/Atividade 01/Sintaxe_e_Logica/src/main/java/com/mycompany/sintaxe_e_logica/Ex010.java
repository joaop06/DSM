/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sintaxe_e_logica;

import java.util.Scanner;

/**
 *
 * @author João
 */
public class Ex010 {
    public void main() {
        Scanner scanner = new Scanner(System.in);

        Venda maiorVenda = null;
        Venda menorVenda = null;

        double valorTotalVendido = 0.0;
        int quantidadeTotalItens = 0;

        for (int i = 1; i <= 10; i++) {
            System.out.println("Venda " + i);

            System.out.print("Código do Produto: ");
            int codigoProduto = scanner.nextInt();

            System.out.print("Valor Unitário: ");
            double valorUnitario = scanner.nextDouble();

            System.out.print("Quantidade: ");
            int quantidade = scanner.nextInt();

            Venda venda = new Venda(codigoProduto, valorUnitario, quantidade);

            // Mostrar o valor total da venda
            double valorTotal = venda.calcularValorTotal();
            System.out.println("Valor Total da Venda: " + valorTotal);

            // Atualizar o valor total vendido e quantidade total de itens vendidos
            valorTotalVendido += valorTotal;
            quantidadeTotalItens += quantidade;

            // Verificar se é a maior venda
            if (maiorVenda == null || valorTotal > maiorVenda.calcularValorTotal()) {
                maiorVenda = venda;
            }

            // Verificar se é a menor venda
            if (menorVenda == null || valorTotal < menorVenda.calcularValorTotal()) {
                menorVenda = venda;
            }
        }

        // Calcular valor médio vendido
        double valorMedioVendido = valorTotalVendido / 10;

        // Exibir os resultados
        System.out.println("\nValor Médio Vendido: " + valorMedioVendido);
        System.out.println("Código do Produto com Maior Venda: " + maiorVenda.codigoProduto);
        System.out.println("Quantidade do Produto com Maior Venda: " + maiorVenda.quantidade);
        System.out.println("Valor Total do Produto com Maior Venda: " + maiorVenda.calcularValorTotal());

        System.out.println("Código do Produto com Menor Venda: " + menorVenda.codigoProduto);
        System.out.println("Quantidade do Produto com Menor Venda: " + menorVenda.quantidade);
        System.out.println("Valor Total do Produto com Menor Venda: " + menorVenda.calcularValorTotal());

        System.out.println("Valor Total Vendido: " + valorTotalVendido);
        System.out.println("Quantidade Total de Itens Vendidos: " + quantidadeTotalItens);

        scanner.close();
    }
}
