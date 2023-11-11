/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package observer;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author joaoo
 */
public class EstoqueSubject implements Subject{
    
    private List<ProdutoObserver> listaObservers = new ArrayList();
    
    private Produto produto;

    @Override
    public void registerObserver(ProdutoObserver observer) {
        this.listaObservers.add(observer);
    }

    @Override
    public void removeObsercer(ProdutoObserver observer) {
        this.listaObservers.remove(observer);
    }

    @Override
    public void notifyObservers() {
        // TODO Auto-generated method stub
        
        for(ProdutoObserver observer: this.listaObservers){
            observer.atualizarEstoque(produto);
        }
    }
    
    public void setProduto(Produto produto){
        this.produto = produto;
        
        this.notifyObservers();
    }
    
}
