/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao02;

/**
 *
 * @author joaoo
 */
public class ImpostoMG implements Impostos {

    @Override
    public Double calcularImposto(double valor) {
        Double novo_valor = (valor + (valor / 100 * 25)) + 7D;
        return novo_valor;
    }
    
}
