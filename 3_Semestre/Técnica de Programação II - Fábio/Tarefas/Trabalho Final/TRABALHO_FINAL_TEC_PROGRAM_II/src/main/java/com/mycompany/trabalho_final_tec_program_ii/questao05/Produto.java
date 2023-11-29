/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao05;

import java.util.Date;

/**
 *
 * @author João
 */
public class Produto {
    
    private String codigo;
    private String descricao;
    private Date dataFabricacao;
    private String numeroLote;
    private int quantidadeProduzida;
    
    public Produto(String codigo, String descricao, Date dataFabricacao, String numeroLote, int quantidadeProduzida){
        this.codigo = codigo;
        this.descricao = descricao;
        this.dataFabricacao = dataFabricacao;
        this.numeroLote = numeroLote;
        this.quantidadeProduzida = quantidadeProduzida;
    }
    
    public String getCodigo() {
        return codigo;
    }

    public Date getDataFabricacao() {
        return dataFabricacao;
    }

    public String getNumeroLote() {
        return numeroLote;
    }

    public int getQuantidadeProduzida() {
        return quantidadeProduzida;
    }
}
