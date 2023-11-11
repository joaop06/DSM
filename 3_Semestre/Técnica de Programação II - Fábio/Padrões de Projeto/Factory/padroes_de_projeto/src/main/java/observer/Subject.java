/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package observer;

/**
 *
 * @author joaoo
 */
public interface Subject {
    
    public void registerObserver(ProdutoObserver observer);
    
    public void removeObsercer(ProdutoObserver observer);
    
    public void notifyObservers();
    
    public void setProduto(Produto produto);
}
