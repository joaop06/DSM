/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.sintaxe_e_logica;

/**
 *
 * @author João
 */
public class Venda {
    int codigoProduto;
    double valorUnitario;
    int quantidade;

    public Venda(int codigoProduto, double valorUnitario, int quantidade) {
        this.codigoProduto = codigoProduto;
        this.valorUnitario = valorUnitario;
        this.quantidade = quantidade;
    }

    public double calcularValorTotal() {
        return valorUnitario * quantidade;
    }
}
