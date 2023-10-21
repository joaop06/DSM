/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cafeteria;

/**
 *
 * @author joaoo
 */
public abstract class Bebida {
    
    protected String descricao = "Sem bebida";
    
    public String getDescricao(){
        return this.descricao;
    }
    
    public abstract Double getValor();
}
