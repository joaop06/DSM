/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.cafeteria;

/**
 *
 * @author joaoo
 */
public class Leite extends Bebida{
    public Leite(){
        super.descricao = "Leite";
    }

    @Override
    public Double getValor() {
        return 2.50;
    }
    

}
