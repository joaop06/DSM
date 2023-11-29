/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.trabalho_final_tec_program_ii.questao05;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author João
 */
public class FabricaProdutos {
    
    private List<Observer> observers = new ArrayList<>();
    
    public void adicionarObserver(Observer observer){
        observers.add(observer);
    }
    
    public void removerObserver(Observer observer){
        observers.remove(observer);
    }
    
    public void notificarObservers(Produto produto){
        for(Observer observer : observers){
            observer.atualizar(produto);
        }
    }
    
    public void novaProducao(Produto produto) {
        notificarObservers(produto);
    }
}
