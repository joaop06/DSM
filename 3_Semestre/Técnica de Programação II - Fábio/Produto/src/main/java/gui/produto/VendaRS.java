/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produto;

/**
 *
 * @author joaoo
 */
public class VendaRS extends Venda {
    
    @Override
    public Produto vender(Produto produto){
        
        if (produto.getPrecoCusto() <= 1000){
            produto.setPrecoVenda(produto.getPrecoCusto() * 1.15);
        } else {
            produto.setPrecoVenda(produto.getPrecoCusto() * 1.10);
        }
        
        return produto;
    }
}
