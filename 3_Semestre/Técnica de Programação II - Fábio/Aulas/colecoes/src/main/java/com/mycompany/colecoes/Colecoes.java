/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.colecoes;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/**
 *
 * @author joaoo
 */
public class Colecoes {
    
    public static void main(String...strings){
        
        // LinkedLList
        List<Integer> listaEncadeada = new LinkedList<Integer>();
        
        ((LinkedList<Integer>) listaEncadeada).addFirst(33);
        
        
        
        
        
        
        List<Integer> listaNumeros = new ArrayList<Integer>();
        
        for(int i = 0; i < 200; i++){
            listaNumeros.add((int)(Math.random() * 999));
        }
        
        List lista = new ArrayList();
        lista.add(333);
        lista.add("João");
        lista.add(new ArrayList());
        
        
        // Percorrer por Posição
        for(int i = 0; i < listaNumeros.size(); i++){
            System.out.printf("%d ", listaNumeros.get(i));
        }
        
        
        System.out.print("\n");
        // for enhanced
        Integer multiplo5 = 0;
        for(Integer n : listaNumeros){
            if(n%5==0){
                multiplo5 += n;
            }
            System.out.printf("%d ", n);
        }
        
        
        
        System.out.print("\n");
        // stream
        listaNumeros.forEach(n -> {
            System.out.printf("%d ", n);
        });
        
        
        System.out.print("\n");
        // parallel
        listaNumeros.stream().parallel().forEach(n -> {
            System.out.println(Thread.currentThread().getName() + " " + n);
        });
        
        
        
        // Imprime Multiplos de 5
        System.out.printf("Soma dos múltiplos de 5: %d", multiplo5);
    }
}
