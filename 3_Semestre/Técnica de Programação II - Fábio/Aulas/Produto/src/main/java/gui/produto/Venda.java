/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package gui.produto;

/**
 *
 * @author joaoo
 */
public class Venda {
    
    public Produto vender(Produto produto){
        // TODO: validar o objeto antes
        Double precoVenda;

        if(produto.getQuantidade() <= 5){
            precoVenda = produto.getPrecoCusto() * 1.35;
        } else {
            precoVenda = produto.getPrecoCusto() * 1.25;
        }
        
        produto.setPrecoVenda(precoVenda);
        
        return produto;
    }
}
