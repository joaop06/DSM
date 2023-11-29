/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao05;

/**
 *
 * @author João
 */
public class SistemaControleProducao implements Observer {

    @Override
    public void atualizar(Produto produto) {
        System.out.println("Controle de Produção: Novo produto produzido - Código: " + produto.getCodigo() + ", Data de Fabricação: " + produto.getDataFabricacao() + ", Lote: " + produto.getNumeroLote());
    }
}
