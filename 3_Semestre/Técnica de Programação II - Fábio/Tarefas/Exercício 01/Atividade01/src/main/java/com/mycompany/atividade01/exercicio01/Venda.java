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

    int codigo;
    Double valor;
    int quantitade;
    
    
    public Venda(int codigo, double valor, int quantidade){
        this.codigo = codigo;
        this.valor = valor;
        this.quantitade = quantidade;
    }
    
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setValor(Double valor) {
        this.valor = valor;
    }

    public void setQuantitade(int quantitade) {
        this.quantitade = quantitade;
    }

    public int getCodigo() {
        return codigo;
    }

    public Double getValor() {
        return valor;
    }

    public int getQuantitade() {
        return quantitade;
    }
}
