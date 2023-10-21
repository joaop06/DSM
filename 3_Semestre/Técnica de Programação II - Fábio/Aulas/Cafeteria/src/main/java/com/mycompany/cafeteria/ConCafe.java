/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cafeteria;

/**
 *
 * @author joaoo
 */
public class ConCafe extends BlendDecorator {
    
    private Bebida bebida;
    
    public ConCafe(Bebida bebida){
        this.bebida = bebida;
    }

    @Override
    public String getDescricao() {
        return "ConCafe + " + this.bebida.getDescricao();
    }

    @Override
    public Double getValor() {
        return 8.99 + this.bebida.getValor();
    }
    
}
