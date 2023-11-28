/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao03;

/**
 *
 * @author João
 */
public class Bombom extends Produto{

    @Override
    public Double calcularPrecoVenda(Double preco_custo) {
        super.preco_venda = preco_custo + (preco_custo/100 * 33.4);
        
        return super.preco_venda;
    }
}
