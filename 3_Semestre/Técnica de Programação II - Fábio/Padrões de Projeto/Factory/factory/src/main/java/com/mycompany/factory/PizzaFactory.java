/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.factory;

/**
 *
 * @author joaoo
 */
public class PizzaFactory {
    
    public static Pizza createPizza(PizzaEnum pizzaEnum){
        Pizza p = null;
        
        if(PizzaEnum.CALABRESA.equals(pizzaEnum)){
            p = new PizzaCalabresa();
            
            Borda b = new Borda();
            b.setTipoBorda("Cheddar");
            b.setValor(5.00);
            
            p.setBorda(b);
            
        } else if (PizzaEnum.RUCULA.equals(pizzaEnum)){
            p = new PizzaCalabresa();
            
            Borda b = new Borda();
            b.setTipoBorda("Catupiry");
            b.setValor(8.00);
            
            p.setBorda(b);
            
        } else if (PizzaEnum.MARGUERITA.equals(pizzaEnum)){
            p = new PizzaCalabresa();
        } else if (PizzaEnum.NUTELLA_MORANGUINHO.equals(pizzaEnum)){
            p = new PizzaCalabresa();
        } else if (PizzaEnum.QUATRO_QUEIJOS.equals(pizzaEnum)){
            p = new PizzaCalabresa();
        }
        
        return p;
    }
}
