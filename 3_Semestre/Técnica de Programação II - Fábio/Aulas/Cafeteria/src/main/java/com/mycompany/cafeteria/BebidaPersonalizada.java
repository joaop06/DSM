/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cafeteria;

import java.util.List;

/**
 *
 * @author joaoo
 */
public class BebidaPersonalizada extends BlendDecorator {
    
    private List<Bebida> listaBebidas;

    public BebidaPersonalizada(List<Bebida> listaBebidas){
        this.listaBebidas = listaBebidas;
    }
    
    
    @Override
    public String getDescricao() {
        String desc_personalizada = "Bebida Personalizada: \n";
        
        for(Bebida b : listaBebidas){
            desc_personalizada += b.getDescricao() + ", ";
        }
        
        return desc_personalizada;
    }

    @Override
    public Double getValor() {
        Double valorBase = 10D;
        
        for(Bebida b : this.listaBebidas){
            valorBase += b.getValor();
        }
        
        return valorBase;
    }
    
}
