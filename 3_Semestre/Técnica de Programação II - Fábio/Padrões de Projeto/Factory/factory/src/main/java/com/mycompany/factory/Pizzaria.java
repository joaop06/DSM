/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.factory;

/**
 *
 * @author joaoo
 */
public class Pizzaria {

    public static void main(String[] args) {
        
        Pizza p1 = PizzaFactory.createPizza(PizzaEnum.CALABRESA);
    }
}
