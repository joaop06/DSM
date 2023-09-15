/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produtovenda;

/**
 *
 * @author joaoo
 */
public class VendaRS extends Venda {
    
    public Produto vender(Produto produto){
        
        Double precoVenda;
        if (produto.getPrecoVenda() <= 1000D){
            precoVenda = produto.getPrecoVenda() * 1.15;;
        } else {
            precoVenda = produto.getPrecoVenda() * 1.10;;
        }
        
        return produto;
    }
}
