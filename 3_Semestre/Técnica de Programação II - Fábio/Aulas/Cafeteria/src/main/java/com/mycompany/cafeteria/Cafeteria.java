/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.cafeteria;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joaoo
 */
public class Cafeteria {

    public static void main(String[] args) {
        Bebida expresso = new Expresso();
        System.out.println(expresso.getDescricao() + " R$ " + expresso.getValor());
        
        
        Bebida conCafe = new ConCafe(expresso);
        System.out.println(conCafe.getDescricao() + " R$ " + conCafe.getValor());
        
        
        Bebida caConLatte = new CaConLatte(conCafe);
        System.out.println(caConLatte.getDescricao() + " R$ " + caConLatte.getValor());
        
        
        Bebida leite = new Leite();
        
        
        // Bebida Personalizada
        List<Bebida> listaBebidas = new ArrayList<Bebida>();
        listaBebidas.add(expresso);
        listaBebidas.add(conCafe);
        listaBebidas.add(caConLatte);
        listaBebidas.add(leite);
        
        Bebida bebidaPersonalizada = new BebidaPersonalizada(listaBebidas);
        System.out.println(bebidaPersonalizada.getDescricao() + "R$ " + bebidaPersonalizada.getValor());
    }
}
