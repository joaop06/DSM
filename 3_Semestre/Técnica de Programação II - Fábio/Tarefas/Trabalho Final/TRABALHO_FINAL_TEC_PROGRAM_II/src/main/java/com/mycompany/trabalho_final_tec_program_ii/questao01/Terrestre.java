/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao01;

/**
 *
 * @author joaoo
 */
public class Terrestre extends Veiculo{
    
    @Override
    public String retorno_tipo_veiculo() {
        super.tipo_veiculo = "Terrestre";
        return tipo_veiculo;
    }
}
