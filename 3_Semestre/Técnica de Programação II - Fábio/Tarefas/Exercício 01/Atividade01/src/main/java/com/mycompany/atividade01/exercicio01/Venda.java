/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.atividade01.exercicio01;

/**
 *
 * @author joaoo
 */
public class Venda {

    public Double Venda(int codigo_produto, Double valor_unitario, int quantidade){

        Double valorTotal = valor_unitario * quantidade;
        
        return valorTotal;
    }
}
